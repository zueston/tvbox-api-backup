# -*- coding: utf-8 -*-
"""四源聚合：lubin776/tvbox-api-backup + Lightconer/tvbox-ysc-config + 25175/tvyuan + juwanhezi jsonlist
→ 规范化去重 → 并发测活 → 分安卓4 / 安卓5+ 两套产物

输出:
  output/android5/multi.json   安卓5+ TVBox 多仓订阅
  output/android5/single.json  安卓5+ 聚合单仓(含csp爬虫)
  output/android4/multi.json   安卓4 兼容多仓(优先http镜像)
  output/android4/single.json  安卓4 兼容聚合单仓(剔除csp/jar/type3)
  output/live_sources.txt      直播源清单(去重)
  output/report.json           去重/测活/分池明细
用法: python collect_merge.py [--top 12] [--offline-juwan]
"""
import json, os, re, sys, time, html as htmllib, urllib.request, urllib.parse
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor

BASE = Path(__file__).parent          # scripts/
ROOT = BASE.parent                    # repo root
OUT = ROOT / "output"
(OUT / "android5").mkdir(parents=True, exist_ok=True)
(OUT / "android4").mkdir(parents=True, exist_ok=True)
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"
TOP_SINGLE = 12
for a in sys.argv:
    if a.startswith("--top"):
        pass
if "--top" in sys.argv:
    TOP_SINGLE = int(sys.argv[sys.argv.index("--top") + 1])

# ---------- 工具 ----------
def idna_url(url):
    """中文域名转 punycode，否则 urllib 直接抛 UnicodeError（饭太硬.net 等）"""
    try:
        m = re.match(r"^(https?://)([^/]+)(.*)$", url, re.S)
        if not m:
            return url
        host = m.group(2)
        if any(ord(c) > 127 for c in host):
            parts = host.split(":")
            parts[0] = parts[0].encode("idna").decode("ascii")
            host = ":".join(parts)
        return m.group(1) + host + m.group(3)
    except Exception:
        return url

def http_get(url, timeout=15, max_bytes=400_000, ua=None):
    req = urllib.request.Request(idna_url(url), headers={"User-Agent": ua or UA})
    with urllib.request.urlopen(req, timeout=timeout) as r:
        return r.status, r.read(max_bytes)

import base64 as _b64
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from tvbox_decode import decode_body  # noqa: E402

PK_RE = re.compile(r";pk;([A-Za-z0-9]+)")

def parse_cfg(body, url=""):
    """TVBox 全格式解码：明文JSON / 图片伪装base64 / AES-CBC($#k#$) / AES-ECB(;pk;) / 饭太硬 obf64"""
    pk = PK_RE.search(url or "").group(1) if PK_RE.search(url or "") else None
    return decode_body(body, pk)

def looks_html(body):
    head = body[:200].lstrip().lower()
    return head.startswith((b"<!doctype", b"<html", b"<script"))

BOX_UA = "okhttp/3.11"   # 部分源(饭太硬等)只对盒子 UA 返回真配置，浏览器 UA 返回导航页

# ---------- 广告/验证源判定（点播+直播共用口径） ----------
URL_AD_PATS = [
    (r"/down\.php/", "网盘/图床落地页"),
    (r"/text\.php\?hash=", "图床哈希页"),
    (r"[?&]token=", "带token参数"),
    (r"://pan\.", "网盘域"),
]
CFG_AD_PATS = [r"adsbygoogle", r"安全检测", r"点击继续", r"关闭广告", r"请稍后", r"插播广告"]

def url_ad_marks(u):
    return [lab for pat, lab in URL_AD_PATS if re.search(pat, u, re.I)]

def norm_url(u):
    """URL 规范化用于去重：剥代理前缀、统一 host、小写 host"""
    if not isinstance(u, str):
        return ""
    u = u.strip().strip('"').strip("'")
    # 剥 gh-proxy 系列前缀（含 /raw.githubusercontent.com 与 /https:// 两种形态）
    m = re.match(r'^https?://(?:gh[-]?proxy[.\w]*\.(?:org|com|net|top|cc)/)(.+)$', u, re.I)
    if m:
        inner = m.group(1)
        if inner.startswith(("http://", "https://")):
            u = inner
        else:
            u = "https://" + inner.lstrip("/")
    # jsDelivr → raw
    u = re.sub(r'^https?://cdn\.jsdelivr\.net/gh/([^/]+)/([^/@]+)@?([^/]*)/',
               lambda m: f"https://raw.githubusercontent.com/{m.group(1)}/{m.group(2)}/{m.group(3) or 'main'}/",
               u, flags=re.I)
    u = re.sub(r'^https?://cdn\.jsdelivr\.net/npm/([^/]+)/',
               lambda m: f"https://cdn.jsdelivr.net/npm/{m.group(1)}/", u, flags=re.I)
    # raw.github.com → raw.githubusercontent.com
    u = u.replace("raw.github.com", "raw.githubusercontent.com")
    p = urllib.parse.urlsplit(u)
    host = p.netloc.lower()
    if host == "raw.githubusercontent.com":
        scheme = "https"
    else:
        scheme = p.scheme.lower()
    path = p.path.rstrip("/")
    u2 = urllib.parse.urlunsplit((scheme, host, path, "", ""))
    return u2

def clean_name(n):
    n = re.sub(r'[\[(（][^\]）)】]*?(?:ms|KB|速度|线)[^\]）)】]*[\])）]', '', str(n))
    n = re.sub(r'\s+', ' ', n).strip(" -—|·")
    return n or str(n)

def is_http_prefer(u):
    return u.startswith("http://")

# ---------- 上游采集 ----------
def load_lubin776(pool, lives):
    """api_list.json: API_LIST [[name,url...]]; livelist.txt: file|date|size|url|src|UA|"""
    st, body = http_get("https://raw.githubusercontent.com/lubin776/tvbox-api-backup/main/api_list.json")
    d = json.loads(body.decode("utf-8", "replace"))
    for row in d.get("API_LIST", []):
        if not isinstance(row, list) or len(row) < 2:
            continue
        name, urls = clean_name(row[0]), [u for u in row[1:] if isinstance(u, str) and u.startswith("http")]
        for u in urls:
            pool.append({"name": name, "url": u, "origin": "lubin776", "mirrors": len(urls)})
    st, body = http_get("https://raw.githubusercontent.com/lubin776/tvbox-api-backup/main/livelist.txt")
    for ln in body.decode("utf-8", "replace").splitlines():
        parts = ln.split("|")
        if len(parts) >= 4 and parts[3].startswith("http"):
            lives.append({"name": clean_name(parts[0].rsplit(".", 1)[0]), "url": parts[3], "origin": "lubin776"})

def load_lightconer(pool):
    st, body = http_get("https://raw.githubusercontent.com/Lightconer/tvbox-ysc-config/main/config/sources.json")
    d = json.loads(body.decode("utf-8", "replace"))
    for s in d.get("sources", []):
        name = clean_name(s.get("name", s.get("id", "?")))
        urls = [u for u in s.get("urls", []) if u.startswith("http")]
        for u in urls:
            pool.append({"name": name, "url": u, "origin": "lightconer", "mirrors": len(urls)})

def load_tvyuan(pool, lives):
    st, body = http_get("https://raw.githubusercontent.com/25175/tvyuan/master/sources.txt")
    text = body.decode("utf-8", "replace")
    # 形如 "[66ms] apple\nhttps://...\n\n"
    for m in re.finditer(r'^\[(\d+)ms\]\s*(.+?)\s*\n(https?://\S+)\s*$', text, re.M):
        pool.append({"name": clean_name(m.group(2)), "url": m.group(3), "origin": "tvyuan", "speed": int(m.group(1))})
    st, body = http_get("https://raw.githubusercontent.com/25175/tvyuan/master/tvbox_multi.json")
    d = json.loads(body.decode("utf-8", "replace"))
    for s in d.get("storeHouse", []):
        u = s.get("sourceUrl", "")
        if u.startswith("http"):
            pool.append({"name": clean_name(s.get("sourceName", "?")), "url": u, "origin": "tvyuan-multi"})
    _ = lives

def load_juwan(pool):
    p = OUT / "juwan" / "all_sources.json"
    if not p.exists():
        p = ROOT / "refs_juwan" / "all_sources.json"
    d = json.loads(p.read_text(encoding="utf-8"))
    for r in d["items"]:
        if r["type"] in ("one", "many") and r.get("status", 0) == 0:
            pool.append({"name": clean_name(r["name"]), "url": r["url"], "origin": "juwanhezi",
                         "speed": r.get("speed"), "site_alive": r.get("alive"), "site_status": r.get("status")})

# ---------- 去重 ----------
def dedup(pool):
    by_url = {}
    for e in pool:
        k = norm_url(e["url"])
        if not k:
            continue
        e["_k"] = k
        old = by_url.get(k)
        if old is None:
            by_url[k] = e
        else:
            # 合并 origins；优先保留有速度数据/多镜像信息的一条
            old["origin"] = old.get("origin", "")
            if e.get("pinned") and not old.get("pinned"):
                old["pinned"] = True             # 点名标记不能因去重丢失
            if e.get("speed") is not None and old.get("speed") is None:
                e["origin"] = f'{old["origin"]}+{e["origin"]}'
                by_url[k] = e
            elif e["origin"] not in old.get("origin", ""):
                old["origin"] = f'{old["origin"]}+{e["origin"]}'
    return list(by_url.values())

# ---------- 测活 ----------
def probe(e):
    trusted = e.get("site_alive") is True   # juwan 刚测过：兜底算活，但仍探内容量
    u = e["url"]
    try:
        t0 = time.time()
        try:
            code, body = http_get(u, timeout=12)
        except Exception:
            time.sleep(1.5)                      # 本机 TLS 抖动重试一次
            code, body = http_get(u, timeout=12)
        ms = int((time.time() - t0) * 1000)
        ok = code == 200 and len(body) > 50
        if ok:
            cfg, how = parse_cfg(body, u)
            if cfg is None:
                # 浏览器 UA 拿到导航页/乱码 → 盒子 UA 重试（饭太硬式反代）
                try:
                    code2, body2 = http_get(u, timeout=12, ua=BOX_UA)
                    cfg2, how2 = parse_cfg(body2, u)
                    if cfg2 is not None:
                        cfg, how = cfg2, how2
                        e["box_ua"] = True
                except Exception:
                    pass
            if how in ("obf64", "img64"):
                e["obf"] = True
            if cfg is not None:
                e["cfg_sites"] = len(cfg.get("sites") or [])
                e["cfg_lives"] = len(cfg.get("lives") or [])
                e["cfg_parses"] = len(cfg.get("parses") or [])
                if gate_cfg(cfg):
                    e["gate"] = True          # 配置自带验证门 jar（弹"接口验证/小程序"）
            if cfg is None and not looks_html(body):
                ok = False        # 非 JSON 又非 HTML 的垃圾响应判死
        e["alive"], e["probe_ms"] = (ok or trusted), ms
    except Exception:
        e["alive"], e["probe_ms"] = trusted, None
    return e

# ---------- 多仓配置 ----------
REPO = "zueston/tvbox-api-backup"
TAG = "agg-latest"  # 滚动 tag：jsDelivr 对 @tag 是不可变缓存，push 即新鲜；@main 边缘缓存会陈旧数小时。update.yml 每次产物提交后移动此 tag。
def main_house(path):
    return f"https://fastly.jsdelivr.net/gh/{REPO}@{TAG}/output/{path}"

def build_multi(alive_items, main_name="四源聚合·主仓库(推荐)", main_path="android5/single.json", keep_gate=False):
    items = sorted(alive_items, key=lambda x: (x.get("probe_ms") or x.get("speed") or 99999,))
    profiles = [{"url": main_house(main_path), "name": main_name, "desc": "self"}]
    seen_name = {main_name}
    for r in items:
        nm = r["name"]
        if not keep_gate and gate_repo(r["url"]):
            continue
        if nm in seen_name:
            continue
        seen_name.add(nm)
        profiles.append({"url": r["url"], "name": nm, "desc": r["origin"]})
    # FongMi/影视仓语义实证：Config.home 是要激活的配置名（TEXT）。
    # home.name 指向 profiles[0]=自家聚合单仓 → 添加多仓后点播页直接有内容，
    # 上游 66 仓全部保留在 storeHouse 供手动切换。
    cfg = {
        "storeHouse": [{"sourceName": p["name"], "sourceUrl": p["url"]} for p in profiles],
        "profiles": [{"url": p["url"], "name": p["name"]} for p in profiles],
        "urls": [{"url": p["url"], "name": p["name"]} for p in profiles],
        "sp": "", "logo": "", "warning": "",
    }
    cfg["home"] = {"name": profiles[0]["name"], "type": 0, "click": 0}
    return cfg

def build_multi_a4(alive_items, ad=False):
    return build_multi(alive_items,
                       "四源聚合·主仓库(需验证)" if ad else "四源聚合·主仓库(推荐)",
                       f"android4/{'singlead' if ad else 'single'}.json",
                       keep_gate=ad)

# ---------- 单仓合并 ----------
def abs_url(base, ref):
    if not isinstance(ref, str) or not ref:
        return ref
    if ref.startswith(("js:", "csp:", "Shell:", "py:", "file:", "assets://")) or not ref.startswith(("./", "../")):
        return ref
    return urllib.parse.urljoin(base, urllib.parse.quote(ref, safe="/:@&=?$-_.+!*'%,~#[];"))

# 验证门/引流 jar 黑名单：guot55 宝盒系(vox/xbpq jar 弹"接口验证/淘应用小程序")、
# vip.bhh.indevs.in(pmdvox 同源门)、iyouhun 收费门。命中=整站剔除，全局 spider/jar 不采纳。
GATE_JAR_PATS = re.compile(r"guot55|bhh\.indevs\.in|iyouhun", re.I)
# 验证门/收费引流仓库主机：不进多仓列表（影视仓自动激活第一条，撞上就是扫码门）
GATE_HOST_PATS = re.compile(r"124\.223\.214\.31|iyouhun|bhh\.indevs\.in|guot55", re.I)

def gate_repo(url):
    return bool(GATE_HOST_PATS.search(str(url)))

def gate_cfg(cfg):
    """配置内容自带验证门 jar：全局 spider/jar 或任一站点的 jar/spider 命中门黑名单。
    只查 jar/spider/api 字段——ext 引用 guot55 json/filters 不构成门（那是数据文件）。"""
    blob = str(cfg.get("jar", "")) + str(cfg.get("spider", ""))
    for s in cfg.get("sites") or []:
        blob += str(s.get("jar", "")) + str(s.get("spider", "")) + str(s.get("api", ""))
    return bool(GATE_JAR_PATS.search(blob))

def a4_site_ok(s):
    api = str(s.get("api", ""))
    if s.get("type") == 3 or api.startswith(("csp:", "assets:", "jar:")) or "csp_" in api:
        return False
    sp = str(s.get("spider", ""))
    if sp.startswith(("csp:", "assets:", "jar:")) or "csp_" in sp:
        return False
    return True

def merge_single(alive_items, a4: bool, top: int = None, keep_gate: bool = False):
    """按速度取前 top 个有效单仓源合并；空源(0站点0解析0直播)不占名额，总抓取上限60
    keep_gate=True（要验证版）：保留验证门站点与 jar——那一档就是给愿意过门的人用的。"""
    top = top or TOP_SINGLE
    cands = [e for e in alive_items if norm_url(e["url"]).endswith((".json", ".webp", ".txt")) or "json" in e["url"] or e.get("box_ua")]
    def _content(e):
        if e.get("pinned"):
            return 10 ** 6                       # 用户点名源永远排最前，不被 TOP 名额挤掉
        if "cfg_sites" in e:
            return (e.get("cfg_sites") or 0) + (e.get("cfg_parses") or 0) + (e.get("cfg_lives") or 0)
        return 50  # juwan 信任源未探内容，按中等排
    cands = sorted(cands, key=lambda x: (-_content(x), x.get("probe_ms") or x.get("speed") or 99999))
    MAX_FETCH = 60
    merged = {"sites": [], "lives": [], "parses": [], "rules": [], "flags": [], "hosts": []}
    if not a4:
        merged["ijk"] = [
            {"group": "软解码", "options": [
                {"category": 4, "name": "opensles", "value": "0"},
                {"category": 4, "name": "overlay-format", "value": "842225234"},
                {"category": 4, "name": "framedrop", "value": "1"},
                {"category": 4, "name": "soundtouch", "value": "1"},
                {"category": 4, "name": "start-on-prepared", "value": "1"},
                {"category": 1, "name": "http-detect-range-support", "value": "0"},
                {"category": 1, "name": "fflags", "value": "fastseek"},
                {"category": 2, "name": "skip_loop_filter", "value": "48"},
                {"category": 4, "name": "reconnect", "value": "1"},
                {"category": 4, "name": "enable-accurate-seek", "value": "0"},
                {"category": 4, "name": "mediaseek", "value": "1"}], "player": "ijk"}]
    site_keys, parse_names, live_groups, src_map = set(), set(), set(), []
    site_owners = {}
    used = fetched = 0
    for e in cands:
        if used >= top or fetched >= MAX_FETCH:
            break
        fetched += 1
        try:
            code, body = http_get(e["url"], timeout=20)
            cfg, how = parse_cfg(body, e["url"])
            if cfg is None and e.get("box_ua"):
                code, body = http_get(e["url"], timeout=20, ua=BOX_UA)
                cfg, how = parse_cfg(body, e["url"])
            if not isinstance(cfg, dict) or not (cfg.get("sites") or cfg.get("lives")):
                continue
        except Exception:
            continue
        n_s = n_p = n_l = 0
        for s in cfg.get("sites", []) or []:
            k = s.get("key") or s.get("name")
            if not k or k in site_keys:
                continue
            if not s.get("api"):          # 无 api 的分隔伪行，盒子解析易炸
                continue
            if not keep_gate and GATE_JAR_PATS.search(str(s.get("jar", "")) + str(s.get("spider", "")) + str(s.get("api", ""))):
                continue                  # 验证门 jar 站点整站剔除（干净版）
            if a4 and not a4_site_ok(s):
                continue
            s = dict(s)
            # 相对路径必须转绝对：./lib/drpy2.min.js 这类在聚合站里指向不到原仓库
            for f in ("api", "jar", "spider"):
                if isinstance(s.get(f), str) and s[f].startswith(("./", "../")):
                    s[f] = abs_url(e["url"], s[f])
            ex = s.get("ext")
            if isinstance(ex, str) and ex.startswith(("./", "../")):
                s["ext"] = abs_url(e["url"], ex)
            site_keys.add(k)
            merged["sites"].append(s)
            n_s += 1
            site_owners.setdefault(e["url"], []).append(s)
        for p in cfg.get("parses", []) or []:
            if a4 and p.get("type") == 2:
                continue
            nm = p.get("name")
            if not nm or nm in parse_names:
                continue
            p = dict(p)
            for f in ("url", "ext"):
                if isinstance(p.get(f), str) and p[f].startswith(("./", "../")):
                    p[f] = abs_url(e["url"], p[f])
            parse_names.add(nm)
            merged["parses"].append(p)
            n_p += 1
        for l in cfg.get("lives", []) or []:
            lu = l.get("url")
            if (not lu) and not (isinstance(l.get("api"), str) and l.get("api")):
                continue
            if isinstance(lu, str) and "://" not in lu and not lu.startswith(("./", "../")):
                continue                       # 剔除"直播名字自定义"这类占位假行
            if a4 and not lu:
                continue
            if isinstance(lu, str) and lu.startswith(("./", "../")):
                l = dict(l)
                l["url"] = abs_url(e["url"], lu)
            g = l.get("name") or l.get("group")
            if g and g in live_groups:
                continue
            if g:
                live_groups.add(g)
            merged["lives"].append(l)
            n_l += 1
        for ru in cfg.get("rules", []) or []:
            merged["rules"].append(ru)
        if n_s or n_p or n_l:
            used += 1
        for f in cfg.get("flags", []) or []:
            if f not in merged["flags"]:
                merged["flags"].append(f)
        if not a4:
            jar = cfg.get("jar")
            if isinstance(jar, str) and jar and not merged.get("jar") and (keep_gate or not GATE_JAR_PATS.search(jar)):
                merged["jar"] = abs_url(e["url"], jar)
            sp = cfg.get("spider")
            if isinstance(sp, str) and sp.startswith(("http", "./", "../")) and not merged.get("spider") and (keep_gate or not GATE_JAR_PATS.search(sp)):
                merged["spider"] = abs_url(e["url"], sp)
        src_map.append({"name": e["name"], "url": e["url"], "origin": e["origin"], "sites": n_s, "parses": n_p, "lives": n_l,
                        "by_src": [{"key": x.get("key"), "name": x.get("name"), "api": str(x.get("api", ""))[:300], "type": x.get("type")} for x in site_owners.get(e["url"], [])]})
        print(f"[merge{'/a4' if a4 else ''}] {e['name']}: sites={n_s} parses={n_p} lives={n_l}")
    merged["sp"] = ""
    out = {**merged, "//": f"四源聚合单仓({'安卓4兼容' if a4 else '安卓5+'}) | 合并{used}源 | {time.strftime('%F %T')}"}
    return out, src_map

# ---------- 主流程 ----------
def main():
    pool, lives = [], []
    for fn, args in ((load_lubin776, (pool, lives)), (load_lightconer, (pool,)),
                     (load_tvyuan, (pool, lives)), (load_juwan, (pool,))):
        try:
            fn(*args)
            print(f"[upstream] {fn.__name__}: pool={len(pool)}")
        except Exception as ex:
            print(f"[upstream FAIL] {fn.__name__}: {ex}")
    # 用户点名固定源（格式参考站）：yoursmile66 XC.json(AES-CBC加密) / guot55 宝盒 bh.json
    for name, u in (("南风TV(XC加密)", "https://raw.githubusercontent.com/yoursmile66/TVBox/refs/heads/main/XC.json"),
                    ("宝盒", "https://raw.githubusercontent.com/guot55/yg/main/pg/bh.json")):
        pool.append({"name": name, "url": u, "origin": "extra", "pinned": True})
    print(f"raw pool: {len(pool)}, live rows: {len(lives)}")

    uniq = dedup(pool)
    print(f"after dedup: {len(uniq)}")

    with ThreadPoolExecutor(max_workers=16) as ex:
        uniq = list(ex.map(probe, uniq))
    alive = [e for e in uniq if e.get("alive")]
    print(f"alive: {len(alive)}")

    # 直播源去重
    lseen, luniq = set(), []
    for l in lives:
        k = norm_url(l["url"])
        if k and k not in lseen:
            lseen.add(k)
            luniq.append(l)
    luniq.sort(key=lambda x: x["name"])

    # 安卓4 池：同 norm_key 若有 http 镜像优先 http（安卓4 TLS 栈老）
    a4_items = []
    for e in alive:
        ee = dict(e)
        if not is_http_prefer(ee["url"]):
            pass  # 保留，4.4 大多可 TLS1.2；仅优先排序
        a4_items.append(ee)

    # 点播源分池（新规则 m02866）：只有**带接口验证门弹窗**的源进要验证版；
    # 普通广告/反爬导航页/混淆配置源留干净版——盒子端有 AI 规则可自动去广告，不必单列。
    # 门判定 = 仓库主机命中 GATE_HOST_PATS，或配置内容自带门 jar（probe 里 gate_cfg 置位）。
    for e in alive + a4_items:
        e["ad"] = bool(e.get("gate")) or gate_repo(e["url"])
    v5 = [e for e in alive if e["ad"]]
    v4 = [e for e in a4_items if e["ad"]]
    clean5 = [e for e in alive if not e["ad"]]
    clean4 = [e for e in a4_items if not e["ad"]]
    print(f"vod split: gate={len(v5)} clean={len(clean5)}")

    m5 = build_multi(clean5)
    m4 = build_multi_a4(clean4)
    (OUT / "android5" / "multi.json").write_text(json.dumps(m5, ensure_ascii=False, indent=1), encoding="utf-8")
    (OUT / "android4" / "multi.json").write_text(json.dumps(m4, ensure_ascii=False, indent=1), encoding="utf-8")
    print(f"multi: storeHouse={len(m5['storeHouse'])}")

    ma5 = build_multi(v5, "四源聚合·主仓库(需验证)", "android5/singlead.json", keep_gate=True)
    ma4 = build_multi_a4(v4, ad=True)
    (OUT / "android5" / "multiad.json").write_text(json.dumps(ma5, ensure_ascii=False, indent=1), encoding="utf-8")
    (OUT / "android4" / "multiad.json").write_text(json.dumps(ma4, ensure_ascii=False, indent=1), encoding="utf-8")

    s5, rep5 = merge_single(clean5, a4=False)
    (OUT / "android5" / "single.json").write_text(json.dumps(s5, ensure_ascii=False, indent=1), encoding="utf-8")
    s4, rep4 = merge_single(clean4, a4=True, top=max(TOP_SINGLE * 3, 30))
    (OUT / "android4" / "single.json").write_text(json.dumps(s4, ensure_ascii=False, indent=1), encoding="utf-8")
    sa5, repa5 = merge_single(v5, a4=False, keep_gate=True)
    (OUT / "android5" / "singlead.json").write_text(json.dumps(sa5, ensure_ascii=False, indent=1), encoding="utf-8")
    sa4, repa4 = merge_single(v4, a4=True, top=max(TOP_SINGLE * 3, 30), keep_gate=True)
    (OUT / "android4" / "singlead.json").write_text(json.dumps(sa4, ensure_ascii=False, indent=1), encoding="utf-8")

    lines = [f"# 直播源清单 {time.strftime('%F %T')}  共{len(luniq)}"]
    for l in luniq:
        lines.append(f'{l["name"]}\t{l["url"]}\t{l["origin"]}')
    (OUT / "live_sources.txt").write_text("\n".join(lines), encoding="utf-8")

    report = {
        "updated": time.strftime("%F %T"),
        "pool_raw": len(pool), "pool_dedup": len(uniq), "alive": len(alive),
        "by_origin_alive": {},
        "android5": {"multi": len(m5["storeHouse"]), "single_sites": len(s5["sites"]),
                      "single_parses": len(s5["parses"]), "single_lives": len(s5["lives"]), "sources": rep5,
                      "ad_multi": len(ma5["storeHouse"]), "ad_single_sites": len(sa5["sites"]),
                      "ad_single_parses": len(sa5["parses"]), "ad_single_lives": len(sa5["lives"]), "ad_sources": repa5},
        "android4": {"multi": len(m4["storeHouse"]), "single_sites": len(s4["sites"]),
                      "single_parses": len(s4["parses"]), "single_lives": len(s4["lives"]), "sources": rep4,
                      "ad_multi": len(ma4["storeHouse"]), "ad_single_sites": len(sa4["sites"]),
                      "ad_single_parses": len(sa4["parses"]), "ad_single_lives": len(sa4["lives"]), "ad_sources": repa4},
        "lives_dedup": len(luniq),
        "dead": [{"name": e["name"], "url": e["url"], "origin": e["origin"]} for e in uniq if not e.get("alive")][:200],
    }
    for e in alive:
        for o in str(e["origin"]).split("+"):
            report["by_origin_alive"][o] = report["by_origin_alive"].get(o, 0) + 1
    (OUT / "report.json").write_text(json.dumps(report, ensure_ascii=False, indent=1), encoding="utf-8")
    print(f"DONE a5: sites={len(s5['sites'])} a4: sites={len(s4['sites'])} "
          f"ad5: sites={len(sa5['sites'])} ad4: sites={len(sa4['sites'])} lives={len(luniq)}")

if __name__ == "__main__":
    main()
