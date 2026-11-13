# -*- coding: utf-8 -*-
import json,os,re
REPO="zueston/tvbox-api-backup"
# 子仓内 spider jar 与 houses 内部 href 用 raw 直连（spider jar 只在播放时按需拉，不进 GitHub API 限流统计）
GH="https://raw.githubusercontent.com/%s/main" % REPO
# ★★ 关键：Depot 的 urls 指向的 house_NN.json 会被 FongMi 当作"配置"用 Decoder.getJson 拉取，
# 走 raw/gh-proxy 会撞 GitHub 匿名 API 限流(60/h, ip 43.x)——必须用 fastly 点 commit(走 CDN 不计 API)。
# commit hash 由 _patch_urls.py 在提交后回填；这里先用占位 {{COMMIT}}（无则退回 @main）。
import os
COMMIT=os.environ.get("MH_COMMIT","{{COMMIT}}")
FASTLY="https://fastly.jsdelivr.net/gh/%s@%s" % (REPO, COMMIT)
lib=json.load(open('scripts/_jar_lib.json',encoding='utf-8'))
man=json.load(open('scripts/_jar_manifest.json',encoding='utf-8'))
url2name={v[3]:k for k,v in man.items()}
jar_cls={u:set(v['classes']) for u,v in lib.items() if v.get('classes') is not None}
r=json.load(open('output/report.json',encoding='utf-8'))
single=json.load(open('output/android5/single.json',encoding='utf-8'))
k2site={}
for s in single['sites']: k2site.setdefault(s['key'],s)
srcs=r['android5']['sources']
os.makedirs('output/houses',exist_ok=True)
for f in os.listdir('output/houses'):
    os.remove('output/houses/'+f)
MIN_KEEP=5
# FongMi VodConfig.checkJson: if object.has("urls") -> Depot.arrayFrom(urls 数组[{"name","url"}])
# 顶层必须是 {"urls":[{"name":..,"url":..}, ...]}，不是 {"storeHouse":[...]}
store={"urls":[],"name":"四源聚合·多仓(按源分jar)"}
index=[]
for s in srcs:
    by=[k2site[x['key']] for x in (s.get('by_src') or []) if x['key'] in k2site]
    if not by: continue
    name=s['name']
    # 无jar csp 站的类
    need=set(str(x['api'])[4:] for x in by if str(x.get('api','')).startswith('csp_') and not x.get('jar'))
    best=None
    for ju,jc in jar_cls.items():
        hit=sum(1 for c in need if c in jc)
        if best is None or hit>best[1]: best=(ju,hit,jc)
    besturl,besthit,bestcls=best if best else (None,0,set())
    jname=url2name.get(besturl)
    kept=[];dropped=[]
    for x in by:
        api=str(x.get('api',''))
        if x.get('jar'): kept.append(x); continue          # 自带jar站保留
        if not api.startswith('csp_'): kept.append(x); continue  # 直连/drpy/js 保留
        if api[4:] in bestcls: kept.append(x)
        else: dropped.append(x)
    if len(kept)<MIN_KEEP: 
        index.append({"source":name,"file":"-","total":len(by),"kept":len(kept),"dropped":len(dropped),"jar":jname or "-","skipped":True})
        continue
    cfg={k:v for k,v in single.items() if k!="sites"}
    cfg["sites"]=kept
    if jname: cfg["spider"]="%s/jar/%s"%(GH,jname)
    fn="house_%02d.json"%(len([i for i in index if not i.get('skipped')])+1)
    json.dump(cfg,open('output/houses/'+fn,'w',encoding='utf-8'),ensure_ascii=False,separators=(',',':'))
    url="%s/output/houses/%s"%(FASTLY,fn)
    store["urls"].append({"name":"%s (%d站)"%(name,len(kept)),"url":url})
    index.append({"source":name,"file":fn,"total":len(by),"kept":len(kept),"dropped":len(dropped),"jar":jname or "-"})
# ── 追加外部子仓：王二小(lubin776 tvbox 自带独立 spider jar，直接引用其原 json) ──
# 这些子仓内容自带 spider/sites，作为 Depot.urls 一项即可被 FongMi 识别并加载。
EXTRA_HOUSES=[
    ("王二小 (100站)",   "https://fastly.jsdelivr.net/gh/lubin776/tvbox-api-backup@main/tvbox/%E7%8E%8B%E4%BA%8C%E5%B0%8F.json"),
    ("王二小2线 (100站)","https://fastly.jsdelivr.net/gh/lubin776/tvbox-api-backup@main/tvbox/%E7%8E%8B%E4%BA%8C%E5%B0%8F2%E7%BA%BF.json"),
    ("王二小3线 (63站)", "https://fastly.jsdelivr.net/gh/lubin776/tvbox-api-backup@main/tvbox/%E7%8E%8B%E4%BA%8C%E5%B0%8F3%E7%BA%BF.json"),
]
for nm,u in EXTRA_HOUSES:
    store["urls"].append({"name":nm,"url":u})
json.dump(store,open('output/android5/storehouse.json','w',encoding='utf-8'),ensure_ascii=False,indent=1)
out=open('scripts/_multihouse_report.txt','w',encoding='utf-8')
print('=== 多仓子仓清单(带jar站恒保留, 废子仓<5站剔除) ===',file=out)
tot=tk=td=0
for it in index:
    tag='[跳过:保留<5]' if it.get('skipped') else it['file']
    print("%-16s %-14s 总%4d 保留%4d 剔%3d jar=%s"%(tag,it['source'],it['total'],it['kept'],it['dropped'],it['jar']),file=out)
    tot+=it['total'];tk+=it['kept'];td+=it['dropped']
live=[i for i in index if not i.get('skipped')]
print("合计: 总%d 保留%d 剔除%d | 有效子仓%d"%(tot,tk,td,len(live)),file=out)
print("depot urls 条目数=",len(store['urls']),file=out)
out.close()
print('DONE live_houses=',len(live),'kept=',tk,'dropped=',td)
