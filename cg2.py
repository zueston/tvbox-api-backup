import urllib.request, ssl, io
ctx = ssl.create_default_context(); ctx.check_hostname=False; ctx.verify_mode=ssl.CERT_NONE
cands = [
 "https://raw.githubusercontent.com/q2542334827/TVBoxOSC/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://raw.githubusercontent.com/o00020/TVBoxOSC/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://raw.githubusercontent.com/hxy12345678/TVBoxOSC/main/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://raw.githubusercontent.com/FongMi/TV/release/app/src/main/java/com/fongmi/android/tv/api/Config.java",
 "https://raw.githubusercontent.com/naab773/naab773/main/Config.java",
]
for u in cands:
    try:
        req=urllib.request.Request(u, headers={"User-Agent":"Mozilla/5.0"})
        with urllib.request.urlopen(req, timeout=12, context=ctx) as r:
            t=r.read().decode("utf-8","replace")
            io.open("Config.java","w",encoding="utf-8").write(t)
            print("HIT", u, len(t)); break
    except Exception as e:
        print("miss", type(e).__name__, str(e)[:40], u[-60:])
