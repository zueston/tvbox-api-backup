# -*- coding: utf-8 -*-
import json
r=json.load(open('output/report.json',encoding='utf-8'))
single=json.load(open('output/android5/single.json',encoding='utf-8'))
# single 全站 by key (可能同key多站? 一般唯一)
k2site={}
for s in single['sites']:
    k2site.setdefault(s['key'],s)
srcs=r['android5']['sources']
out=open('scripts/_keymap_chk.txt','w',encoding='utf-8')
tot=0; miss=0
for s in srcs:
    by=s.get('by_src') or []
    wj=0; forx=[]
    for x in by:
        tot+=1
        fs=k2site.get(x['key'])
        if not fs: miss+=1; continue
        if fs.get('jar'): wj+=1
    print("%-14s 站%4d 带jar=%d" % (s['name'],len(by),wj),file=out)
print("总站",tot,"single匹配失败",miss,file=out)
# 看 single 里到底有多少带jar
njar=sum(1 for s in single['sites'] if s.get('jar'))
print("single.json 总计",len(single['sites']),"其中带jar",njar,file=out)
out.close()
print('done')
