# -*- coding: utf-8 -*-
import json, ssl, urllib.request
CTX = ssl.create_default_context(); CTX.check_hostname = False; CTX.verify_mode = ssl.CERT_NONE
BASE = "https://fastly.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/"
FILES = ["android5/multi.json", "android5/multiad.json", "android4/multiad.json",
         "android5/single.json", "android5/singlead.json", "android4/single.json"]
out = []
for f in FILES:
    try:
        req = urllib.request.Request(BASE + f, headers={"User-Agent": "okhttp/3.11"})
        b = urllib.request.urlopen(req, timeout=40, context=CTX).read()
        d = json.loads(b.decode("utf-8"))
        if "profiles" in d:
            p0 = d["profiles"][0]["url"][-40:]
            out.append(f + " %dB n=%d home=%s p0=%s" % (len(b), len(d["profiles"]), d.get("home", {}).get("name", "-"), p0))
        else:
            sp = str(d.get("spider", ""))
            gate = any(k in sp for k in ("guot55", "bhh", "iyouhun"))
            out.append(f + " %dB sites=%d spider_gate=%s" % (len(b), len(d.get("sites", [])), gate))
    except Exception as ex:
        out.append(f + " ERR " + str(ex)[:60])
import io
io.open("fresh.txt", "w", encoding="utf-8").write("\n".join(out) + "\n")
print("OK")
