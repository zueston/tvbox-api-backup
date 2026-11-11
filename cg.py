import urllib.request, ssl, io, re
ctx = ssl.create_default_context(); ctx.check_hostname=False; ctx.verify_mode=ssl.CERT_NONE
# FongMi source mirror candidates for Config.java
urls = [
 "https://raw.githubusercontent.com/q2542334827/tvbox/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://raw.githubusercontent.com/liushaoming/TVBoxOSC/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://raw.githubusercontent.com/fongmi999/TVBox/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
]
out=[]
for u in urls:
    try:
        req=urllib.request.Request(u, headers={"User-Agent":"Mozilla/5.0"})
        with urllib.request.urlopen(req, timeout=15, context=ctx) as r:
            t=r.read().decode("utf-8","replace")
            out.append("=== %s len=%d" % (u, len(t)))
            for m in re.finditer(r".{80}Bad HTTP Status.{200}", t, re.S):
                out.append(m.group(0))
    except Exception as e:
        out.append("=== %s ERR %s %s" % (u, type(e).__name__, str(e)[:60]))
io.open("cfgsrc.txt","w",encoding="utf-8").write("\n".join(out))
print("done")
