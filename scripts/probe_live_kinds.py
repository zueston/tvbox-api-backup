# -*- coding: utf-8 -*-
"""探测 live_sources.txt 每条直播 URL 的返回形态：M3U/TXT 直通 还是 HTML 验证页。"""
import io, sys, json, urllib.request, ssl

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

def probe(url):
    try:
        req = urllib.request.Request(url, headers={
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)",
        })
        with urllib.request.urlopen(req, timeout=15, context=ctx) as r:
            body = r.read(4096)
            ctype = r.headers.get("Content-Type", "")
            head = body[:300].decode("utf-8", "replace").lstrip("\ufeff").strip()
            low = head.lower()
            if low.startswith(("<!doctype", "<html", "<?xml version")) or ("<html" in low and "m3u" not in low[:80]):
                return "HTML", ctype, head[:120].replace("\n", " ")
            if head.startswith("#EXTM3U") or ("#" in head[:20] and "://" in head):
                return "M3U", ctype, head[:80].replace("\n", " ")
            if "://" in head or ":" in head.split("\n")[0]:
                return "TXT", ctype, head[:80].replace("\n", " ")
            return "ODD", ctype, head[:120].replace("\n", " ")
    except Exception as e:
        return "FAIL", "", str(e)[:100]

rows = []
with io.open("output/live_sources.txt", encoding="utf-8") as f:
    for line in f:
        line = line.rstrip("\n")
        if not line or line.startswith("#"):
            continue
        p = line.split("\t")
        if len(p) >= 2:
            rows.append((p[0], p[1]))

out = []
for name, url in rows:
    kind, ctype, head = probe(url)
    out.append({"name": name, "url": url, "kind": kind, "ctype": ctype, "head": head})
    sys.stdout.write("%-4s %s\n" % (kind, name))
    sys.stdout.flush()

with io.open("probe_live.json", "w", encoding="utf-8") as f:
    json.dump(out, f, ensure_ascii=False, indent=1)
print("done", len(out))
