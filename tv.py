import urllib.request, ssl, io, json, re
ctx = ssl.create_default_context(); ctx.check_hostname=False; ctx.verify_mode=ssl.CERT_NONE
req = urllib.request.Request("http://8.138.7.223/tv.txt", headers={"User-Agent":"okhttp/3.11"})
body = urllib.request.urlopen(req, timeout=15, context=ctx).read().decode("utf-8","replace")
d = json.loads(body)
out = ["keys=" + str(list(d.keys()))]
for k in ("wallpaper","logo","spider","warningText"):
    out.append("%s=%s" % (k, d.get(k)))
io.open("tvchk.txt","w",encoding="utf-8").write("\n".join(out))
print("\n".join(out))
