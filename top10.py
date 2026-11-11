import json,io,urllib.request,concurrent.futures as cf
m=json.load(io.open("output/android5/multi.json",encoding="utf-8"))
urls=[p["url"] for p in m["profiles"]]
def probe(u):
    req=urllib.request.Request(u,headers={"User-Agent":"okhttp/3.11"})
    try:
        r=urllib.request.urlopen(req,timeout=10)
        b=r.read(200000)
        return u,r.status,len(b),b[:20]
    except Exception as e:
        return u,"ERR",0,str(e)[:60]
with cf.ThreadPoolExecutor(8) as ex:
    res=list(ex.map(probe,urls[:10]))
io.open("top10.txt","w",encoding="utf-8").write("\n".join(f"{r[1]}\t{r[2]}\t{r[3]}\t{r[0]}" for r in res))
print("done")
