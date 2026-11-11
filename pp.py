import json, io, urllib.request, urllib.parse, socket, ssl, concurrent.futures as cf, time
d = json.load(io.open("output/android5/multi.json", encoding="utf-8"))
prof = [(it.get("name"), it.get("url")) for it in d.get("profiles", []) if it.get("url")]
ctx = ssl.create_default_context(); ctx.check_hostname=False; ctx.verify_mode=ssl.CERT_NONE
def idna(u):
    try:
        p = urllib.parse.urlsplit(u); h = p.hostname
        if h: h2 = h.encode("idna").decode(); u = u.replace(h, h2, 1)
    except Exception: pass
    return u
def probe(x):
    n, u = x
    u = idna(u)
    for attempt in range(2):
        try:
            req = urllib.request.Request(u, headers={"User-Agent":"okhttp/3.11"})
            with urllib.request.urlopen(req, timeout=15, context=ctx) as r:
                body = r.read(2048)
                return (n, u, r.getcode(), r.geturl()[:80], body[:40].decode("utf-8","replace").replace("\n"," "))
        except urllib.error.HTTPError as e:
            return (n, u, e.code, "HTTPERR", str(e.reason))
        except Exception as e:
            if attempt==0: time.sleep(1.5); continue
            return (n, u, "ERR", type(e).__name__, str(e)[:60])
out=[]
with cf.ThreadPoolExecutor(8) as ex:
    for r in ex.map(probe, prof): out.append(r)
bad=[r for r in out if r[2]!=200]
with io.open("prof_probe.txt","w",encoding="utf-8") as f:
    f.write("total=%d bad=%d\n" % (len(out), len(bad)))
    for r in bad: f.write(" | ".join(map(str,r))+"\n")
    f.write("\n--- all ---\n")
    for r in out: f.write("%s | %s | %s\n" % (r[2], r[0], r[1]))
print("done", len(out), "bad", len(bad))
