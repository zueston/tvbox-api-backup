import urllib.request, ssl, io, re
ctx = ssl.create_default_context(); ctx.check_hostname=False; ctx.verify_mode=ssl.CERT_NONE
cands = [
 "https://raw.githubusercontent.com/FongMi-TV/TV/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://raw.githubusercontent.com/aielly/FongMi/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://raw.githubusercontent.com/supermeguo/FongMi/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://cdn.jsdelivr.net/gh/FongMi/TV@main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://raw.githubusercontent.com/leovcy/TVBox/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://raw.githubusercontent.com/blueshine/TVBox/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
]
hit=False
for u in cands:
    try:
        req=urllib.request.Request(u, headers={"User-Agent":"Mozilla/5.0"})
        t=urllib.request.urlopen(req, timeout=12, context=ctx).read().decode("utf-8","replace")
        io.open("Config.java","w",encoding="utf-8").write(t)
        print("HIT", u, len(t)); hit=True; break
    except Exception as e:
        print("miss", type(e).__name__, str(e)[:40])
if not hit: print("none")
