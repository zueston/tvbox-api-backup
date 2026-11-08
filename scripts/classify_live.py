# -*- coding: utf-8 -*-
"""全量分类 78 条直播源：直通可订阅 vs 需网页/广告/验证/授权。
判定：Content-Type 或正文特征为 HTML、SPA 空壳、JS 跳转、公告授权页、
带 token/hash/网盘下载页形态、或请求失败。输出 output/live_verify_table.md + output/live_probe.json
"""
import io, os, re, json, ssl, urllib.request, urllib.parse
from concurrent.futures import ThreadPoolExecutor

CTX = ssl.create_default_context(); CTX.check_hostname = False; CTX.verify_mode = ssl.CERT_NONE
UA = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120 Safari/537.36"}

AD_MARKS = [
    ("授权/注册公告", [r"授权", r"注册", r"加群", r"微信[:：]?\s*\w+", r"前往个人主页", r"暂停使用"]),
    ("JS跳转/倒计时", [r"location\.href", r"window\.open", r"setTimeout\(", r"倒计时", r"自动跳转"]),
    ("SPA空壳", [r'<div\s+id=["\']app["\']\s*>\s*</div>', r'<div\s+id=["\']root["\']\s*>\s*</div>']),
    ("广告/短链页", [r"安全检测", r"验证", r"点击继续", r"关闭广告", r"ad_|adsbygoogle", r"请稍后"]),
]

def classify(name, url):
    rec = {"name": name, "url": url, "kind": "", "reason": "", "marks": [], "ctype": "", "bytes": 0}
    q = urllib.parse.quote(url, safe=":/?=&%#")
    try:
        req = urllib.request.Request(q, headers=UA)
        with urllib.request.urlopen(req, timeout=25, context=CTX) as r:
            body = r.read(200000)
            rec["ctype"] = (r.headers.get("Content-Type") or "").lower()
    except Exception as e:
        rec["kind"] = "FAIL"
        rec["reason"] = str(e)[:70]
        return rec
    rec["bytes"] = len(body)
    txt = body.decode("utf-8", "replace").lstrip("\ufeff")
    low = txt[:2000].lower()
    is_html = rec["ctype"].startswith("text/html") or low.startswith(("<!doctype", "<html", "<script"))
    if is_html:
        rec["kind"] = "HTML"
        for label, pats in AD_MARKS:
            if any(re.search(p, txt, re.I) for p in pats):
                rec["marks"].append(label)
        rec["reason"] = "返回网页而非源数据" + ("（" + "/".join(rec["marks"]) + "）" if rec["marks"] else "")
        return rec
    if txt.startswith("#EXTM3U") or "#EXTINF" in txt[:3000]:
        rec["kind"] = "M3U"
    elif "," in txt[:400] and ("://" in txt[:2000] or "#genre#" in txt[:2000]):
        rec["kind"] = "TXT"
    else:
        rec["kind"] = "ODD"
        rec["reason"] = "首包无法识别"
    # 网页落地页形态（网盘/图床/带 token）：即使本次直通，浏览器打开有中间页
    for pat, lab in [(r"/down\.php/", "网盘下载页"), (r"/text\.php\?hash=", "图床哈希页"),
                     (r"[?&]token=", "带token参数"), (r"pan\.", "网盘域")]:
        if re.search(pat, url, re.I):
            rec["marks"].append(lab)
    return rec

def main():
    base = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    src = os.path.join(base, "output", "live_sources.txt")
    rows = []
    for line in io.open(src, encoding="utf-8"):
        line = line.rstrip("\n")
        if not line or line.startswith("#"):
            continue
        p = line.split("\t")
        if len(p) >= 2 and p[1].startswith(("http://", "https://")):
            rows.append((p[0], p[1], p[2] if len(p) > 2 else ""))
    with ThreadPoolExecutor(max_workers=12) as ex:
        recs = list(ex.map(lambda t: classify(t[0], t[1]), rows))
    for r, t in zip(recs, rows):
        r["origin"] = t[2]

    out_json = os.path.join(base, "output", "live_probe.json")
    io.open(out_json, "w", encoding="utf-8").write(json.dumps(recs, ensure_ascii=False, indent=1))

    def need_verify(r):
        return r["kind"] in ("HTML", "FAIL", "ODD") or (r["kind"] in ("M3U", "TXT") and r["marks"])

    nv = [r for r in recs if need_verify(r)]
    ok = [r for r in recs if not need_verify(r)]

    lines = ["| 名称 | 类型 | 判定 | 完整地址 |", "|---|---|---|---|"]
    for r in sorted(nv, key=lambda x: (x["kind"] != "HTML", x["kind"] != "FAIL", x["name"])):
        tag = {"HTML": "网页/验证页", "FAIL": "拉取失败", "ODD": "无法识别"}.get(r["kind"], "直通但落地页有广告")
        if r["kind"] in ("M3U", "TXT"):
            tag = "源可直连，网页打开是" + "/".join(r["marks"])
        elif r["marks"]:
            tag = "网页/验证页（" + "/".join(r["marks"]) + "）"
        lines.append("| %s | %s | %s | `%s` |" % (r["name"], r["kind"], tag, r["url"]))
    md = ("以下 %d 条**不能直接当订阅地址填**（或浏览器打开需先过中间页），其余 %d 条可直连。\n\n"
          % (len(nv), len(ok))) + "\n".join(lines) + "\n"
    out_md = os.path.join(base, "output", "live_verify_table.md")
    io.open(out_md, "w", encoding="utf-8", newline="\n").write(md)
    print("need_verify=%d direct=%d total=%d" % (len(nv), len(ok), len(recs)))
    for r in nv:
        print(" ", r["kind"], r["name"], "|", ",".join(r["marks"]) or r["reason"])

if __name__ == "__main__":
    main()
