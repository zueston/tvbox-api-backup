# -*- coding: utf-8 -*-
"""juwanhezi.com/jsonlist 全量抓取 + 解析 + 测活 + 生成 TVBox 聚合配置
用法: python scrape_juwanhezi.py [--offline]
  --offline 复用已下载的 html，不重新抓取
输出:
  output/all_sources.json    原始全量清单(含测活结果)
  output/juwan_multi.json    TVBox 多仓 profiles 配置(可直接填入盒子)
  output/juwan_list.txt      名称,URL,速度,状态 清单
"""
import json, re, sys, time, html as htmllib
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor

BASE = Path(__file__).parent
OUT = BASE / "output"
OUT.mkdir(exist_ok=True)
SITE = "https://www.juwanhezi.com"
TABS = ["one", "many", "local"]
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

BLOCK_RE = re.compile(r'<div class="py-2 row border-bottom">(.*?)</div>\s*</div>\s*</div>', re.S)
NAME_RE = re.compile(r'<label[^>]*>([^<]+)</label>')
URL_RE = re.compile(r'<input[^>]*\bvalue="([^"]+)"')
ATTR_RE = re.compile(r'data-status="([^"]*)"\s+data-speed="([^"]*)"')

def parse_rows(text, tab):
    out = []
    for blk in BLOCK_RE.finditer(text):
        s = blk.group(1)
        mn = NAME_RE.search(s)
        mu = URL_RE.search(s)
        if not (mn and mu):
            continue
        ma = ATTR_RE.search(s)
        status = ma.group(1) if ma else "0"
        speed = ma.group(2) if ma else ""
        out.append({
            "name": htmllib.unescape(mn.group(1).strip()),
            "url": htmllib.unescape(mu.group(1).strip()),
            "speed": int(speed) if speed.isdigit() else None,
            "status": status,
            "type": tab,
        })
    return out

def fetch_page(tab, page):
    """page=1 走 GET 首屏, >=2 走 POST /ajax/load"""
    import urllib.request, urllib.parse
    if page == 1:
        url = f"{SITE}/jsonlist?type={tab}"
        req = urllib.request.Request(url, headers={"User-Agent": UA})
    else:
        url = f"{SITE}/ajax/load"
        body = urllib.parse.urlencode({
            "page": "source", "type": tab, "action": "load",
            "paged": str(page), "append": "list-home",
        }).encode()
        req = urllib.request.Request(url, data=body, headers={
            "User-Agent": UA, "X-Requested-With": "XMLHttpRequest",
            "Content-Type": "application/x-www-form-urlencoded",
        })
    cache = BASE / f"cache_{tab}_{page}.html"
    try:
        with urllib.request.urlopen(req, timeout=30) as r:
            text = r.read().decode("utf-8", "replace")
        if not text.strip():
            return ""
        cache.write_text(text, encoding="utf-8")
        return text
    except Exception as e:
        if cache.exists():
            print(f"  [cache] {tab} p{page}: {e}")
            return cache.read_text(encoding="utf-8")
        print(f"  [fail] {tab} p{page}: {e}")
        return ""

def collect(offline):
    rows = []
    for tab in TABS:
        page = 1
        while True:
            cache = BASE / f"cache_{tab}_{page}.html"
            if offline and cache.exists():
                text = cache.read_text(encoding="utf-8")
            elif not offline:
                text = fetch_page(tab, page)
            else:
                text = ""
            if not text:
                # 回退到旧命名文件
                legacy = {1: {"one": "jsonlist_one.html", "many": "jsonlist_many.html", "local": "jsonlist_local.html"}}
                lp = legacy.get(page, {}).get(tab)
                if lp and (BASE / lp).exists():
                    text = (BASE / lp).read_text(encoding="utf-8", errors="replace")
                else:
                    break
            found = parse_rows(text, tab)
            if not found:
                break
            rows.extend(found)
            print(f"{tab} p{page}: +{len(found)} rows")
            page += 1
            if page > 10:
                break
    return rows

def probe(row):
    """测活: GET 短超时。json 结尾校验可解析"""
    import urllib.request
    url = row["url"]
    if row["type"] == "local":
        row["alive"] = None  # 网盘链接不测
        return row
    try:
        req = urllib.request.Request(url, headers={"User-Agent": UA})
        t0 = time.time()
        with urllib.request.urlopen(req, timeout=12) as r:
            body = r.read(200_000)
            code = r.status
        ms = int((time.time() - t0) * 1000)
        ok = code == 200 and len(body) > 50
        if ok and url.lower().split("?")[0].endswith(".json"):
            try:
                json.loads(body.decode("utf-8", "replace"))
            except Exception:
                ok = False
        row["alive"] = ok
        row["probe_ms"] = ms
    except Exception:
        row["alive"] = False
        row["probe_ms"] = None
    return row

def build_multi(rows):
    """TVBox 多仓 profiles 配置: 收录站点标记正常(status=0)且测活通过的 单仓+多仓 源"""
    ok = [r for r in rows if r["type"] in ("one", "many") and r["status"] == "0" and r.get("alive")]
    # 按 url 去重, 保留最快
    best = {}
    for r in sorted(ok, key=lambda x: (x["speed"] is None, x["speed"])):
        if r["url"] not in best:
            best[r["url"]] = r
    items = sorted(best.values(), key=lambda x: (x["speed"] is None, x["speed"]))
    profiles = [{"url": r["url"], "name": f'{r["name"]}({r["speed"]}ms)' if r["speed"] else r["name"]} for r in items]
    cfg = {
        "sp": "".join([]),
        "logo": "",
        "warning": "",
        "home": {"name": "聚玩盒子数据源聚合", "type": 0, "click": 0},
        "profiles": profiles,
        "urls": [{"name": "聚玩盒子源", "url": p["url"]} for p in profiles],
    }
    return cfg, items

def main():
    offline = "--offline" in sys.argv
    rows = collect(offline)
    print(f"total rows: {len(rows)}")
    with ThreadPoolExecutor(max_workers=8) as ex:
        rows = list(ex.map(probe, rows))
    alive_n = sum(1 for r in rows if r.get("alive"))
    print(f"alive: {alive_n}")
    meta = {
        "source_site": f"{SITE}/jsonlist",
        "updated": time.strftime("%Y-%m-%d %H:%M:%S"),
        "total": len(rows), "alive": alive_n,
        "items": rows,
    }
    (OUT / "all_sources.json").write_text(json.dumps(meta, ensure_ascii=False, indent=2), encoding="utf-8")
    cfg, items = build_multi(rows)
    (OUT / "juwan_multi.json").write_text(json.dumps(cfg, ensure_ascii=False, indent=2), encoding="utf-8")
    lines = [f'# 聚玩盒子数据源清单 {meta["updated"]}  共{len(rows)}条 测活通过{alive_n}']
    for r in rows:
        flag = "OK " if r.get("alive") else ("-- " if r.get("alive") is False else "NA ")
        lines.append(f'{flag}{r["type"]}\t{r["name"]}\t{r["url"]}\tspeed={r["speed"]}')
    (OUT / "juwan_list.txt").write_text("\n".join(lines), encoding="utf-8")
    print(f"multi profiles: {len(cfg['profiles'])}")
    for p in cfg["profiles"][:10]:
        print(" ", p["name"], p["url"])

if __name__ == "__main__":
    main()
