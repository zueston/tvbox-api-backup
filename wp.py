import json, io, urllib.request, urllib.parse, ssl, concurrent.futures as cf
ctx = ssl.create_default_context(); ctx.check_hostname=False; ctx.verify_mode=ssl.CERT_NONE
def idna(u):
    try:
        p=urllib.parse.urlsplit(u); h=p.hostname
        if h: return u.replace(h, h.encode("idna").decode(), 1)
    except Exception: pass
    return u
def get(u):
    try:
        req=urllib.request.Request(idna(u), headers={"User-Agent":"okhttp/3.11"})
        with urllib.request.urlopen(req, timeout=10, context=ctx) as r: return r.getcode()
    except urllib.error.HTTPError as e: return e.code
    except Exception: return "ERR"
out=[]
for fn in ("output/android5/multi.json","output/android5/single.json","output/android4/single.json","output/android5/singlead.json"):
    d=json.load(io.open(fn,encoding="utf-8"))
    wp=d.get("wallpaper"); lg=d.get("logo")
    out.append("%s wallpaper=%s logo=%s" % (fn, wp, lg))
    if wp: out.append("   wp status=%s" % get(wp))
    if lg: out.append("   logo status=%s" % get(lg))
io.open("wpchk.txt","w",encoding="utf-8").write("\n".join(out))
print("\n".join(out))
