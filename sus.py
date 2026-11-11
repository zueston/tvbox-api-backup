import urllib.request, urllib.parse, ssl, io
ctx = ssl.create_default_context(); ctx.check_hostname=False; ctx.verify_mode=ssl.CERT_NONE
def idna(u):
    p = urllib.parse.urlsplit(u); h = p.hostname
    h2 = h.encode("idna").decode()
    return u.replace(h, h2, 1)
tests = [
 "http://www.英格里希嗷呜.top/tv",
 "https://深色壁纸.xxooo.cf/",
 "http://124.223.214.31:16/8888",
 "http://124.223.214.31:8/api.json",
 "https://jszyapi.com/api.php/provide/vod/at/json",
 "http://tjf1100.serv00.net",
 "http://jiduo.3116598.xyz/",
 "https://www.252035.xyz/p/jsm.json",
]
out=[]
for u in tests:
    for label, uu in (("raw", u), ("idna", idna(u) if any(ord(c)>127 for c in u) else u)):
        try:
            req = urllib.request.Request(uu, headers={"User-Agent":"okhttp/3.11"})
            with urllib.request.urlopen(req, timeout=12, context=ctx) as r:
                b=r.read(200)
                out.append("%s | %s | %s | %s | %s" % (label, r.getcode(), uu, r.headers.get("Content-Type"), b[:60].decode("utf-8","replace").replace("\n"," ")))
        except urllib.error.HTTPError as e:
            out.append("%s | HTTP %s | %s | %s" % (label, e.code, uu, e.reason))
        except Exception as e:
            out.append("%s | ERR %s | %s | %s" % (label, type(e).__name__, uu, str(e)[:70]))
io.open("sus.txt","w",encoding="utf-8").write("\n".join(out))
print("ok")
