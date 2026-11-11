import json, io, urllib.request, ssl, time, re
from concurrent.futures import ThreadPoolExecutor
ctx = ssl.create_default_context(); ctx.check_hostname=False; ctx.verify_mode=ssl.CERT_NONE
def enc(u):
    m = re.match(r"(https?://)([^/]+)(.*)", u)
    if not m: return u
    host = m.group(2)
    try:
        host.encode("ascii")
    except Exception:
        try: host = host.encode("idna").decode("ascii")
        except Exception: pass
    return m.group(1)+host+m.group(3)
def probe(u):
    u2 = enc(u); err = ""
    for _ in range(2):
        try:
            req = urllib.request.Request(u2, headers={"User-Agent":"okhttp/3.11"})
            r = urllib.request.urlopen(req, timeout=10, context=ctx)
            return (u, r.status, len(r.read()))
        except Exception as e:
            err = type(e).__name__+":"+str(e)[:40]; time.sleep(1.2)
    return (u, "ERR", err)
d = json.load(io.open("output/android5/multi.json", encoding="utf-8"))
rows = []
for k in ("storeHouse","profiles","urls"):
    for it in d.get(k, []):
        url = it.get("sourceUrl") or it.get("url")
        rows.append((k, it.get("sourceName") or it.get("name"), url))
urls = sorted(set(r[2] for r in rows))
with ThreadPoolExecutor(8) as ex:
    res = list(ex.map(probe, urls))
bad = [r for r in res if r[1] == "ERR" or (isinstance(r[1],int) and r[1] >= 400)]
out = io.open("urls_probe.txt","w",encoding="utf-8")
out.write("total %d bad %d\n" % (len(urls), len(bad)))
for b in bad: out.write(repr(b)+"\n")
out.close()
print("total", len(urls), "bad", len(bad))
