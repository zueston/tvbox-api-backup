import urllib.request, ssl, io
ctx = ssl.create_default_context(); ctx.check_hostname=False; ctx.verify_mode=ssl.CERT_NONE
cands = [
 "https://fastly.jsdelivr.net/gh/FongMi/TV@main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://fastly.jsdelivr.net/gh/FongMi/TV@release/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://gcore.jsdelivr.net/gh/FongMi/TV@main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://gh-proxy.com/https://raw.githubusercontent.com/FongMi/TV/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
]
for u in cands:
    try:
        req=urllib.request.Request(u, headers={"User-Agent":"Mozilla/5.0"})
        t=urllib.request.urlopen(req, timeout=15, context=ctx).read().decode("utf-8","replace")
        if "Bad HTTP Status" in t or "Config" in t:
            io.open("Config.java","w",encoding="utf-8").write(t)
            print("HIT", u, len(t)); break
    except Exception as e:
        print("miss", type(e).__name__, str(e)[:50])
