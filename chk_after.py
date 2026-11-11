import json,io,os
def scan(p):
    d=json.load(io.open(p,encoding="utf-8"))
    bad=0; samples=[]
    def walk(o):
        nonlocal bad
        if isinstance(o,dict):
            for v in o.values(): walk(v)
        elif isinstance(o,list):
            for v in o: walk(v)
        elif isinstance(o,str):
            try:
                t=o.encode("cp1252",errors="strict").decode("utf-8",errors="strict")
                if t!=o:
                    bad+=1
                    if len(samples)<3: samples.append(repr(o[:40]))
            except Exception: pass
    walk(d)
    return bad,samples
out={}
for f in ["output/android5/single.json","output/android4/single.json","output/android5/singlead.json","output/android4/singlead.json","output/android5/multi.json","output/android5/multiad.json"]:
    b,s=scan(f); out[os.path.basename(os.path.dirname(f))+"/"+os.path.basename(f)]=(b,s)
io.open("moji_after.txt","w",encoding="utf-8").write(json.dumps(out,ensure_ascii=False,indent=1))
m=json.load(io.open("output/android5/multi.json",encoding="utf-8"))
io.open("multi_head.txt","w",encoding="utf-8").write(json.dumps({"home":m.get("home"),"profiles0_5":m["profiles"][:5],"n":len(m["profiles"])},ensure_ascii=False,indent=1))
print("OK")
