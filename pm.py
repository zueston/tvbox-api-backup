import json, concurrent.futures as cf, urllib.request, io, sys
d = json.load(io.open("output/android5/multi.json", encoding="utf-8"))
items = []
for k in ("storeHouse", "profiles", "urls"):
    for it in d.get(k, []) or []:
        u = it.get("sourceUrl") or it.get("url")
        n = it.get("sourceName") or it.get("name")
        if u: items.append((k, n, u))
def probe(x):
    k, n, u = x
    try:
        req = urllib.request.Request(u, headers={"User-Agent": "okhttp/3.11"})
        with urllib.request.urlopen(req, timeout=12) as r:
            body = r.read(4096)
            return (k, n, u, r.status, len(body), r.headers.get("Content-Type", ""))
    except Exception as e:
        return (k, n, u, "ERR", 0, str(e)[:90])
out = []
with cf.ThreadPoolExecutor(12) as ex:
    for r in ex.map(probe, items):
        out.append(r)
bad = [r for r in out if r[3] != 200]
with io.open("probe_multi.txt", "w", encoding="utf-8") as f:
    f.write("total=%d bad=%d\n" % (len(out), len(bad)))
    for r in bad:
        f.write("%s | %s | %s | %s | %s\n" % (r[0], r[1], r[2], r[3], r[5]))
    f.write("\n--- all statuses ---\n")
    for r in out:
        f.write("%s %s %s\n" % (r[3], r[0], r[2]))
print("done", len(out), len(bad))
