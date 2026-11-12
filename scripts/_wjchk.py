# -*- coding: utf-8 -*-
import json
r=json.load(open('output/report.json',encoding='utf-8'))
srcs=r['android5']['sources']
# 统计所有源的 带jar站 数量 & 这些jar是否在我们的库/能否下载
man=json.load(open('scripts/_jar_manifest.json',encoding='utf-8'))
lib=json.load(open('scripts/_jar_lib.json',encoding='utf-8'))
known_urls=set(lib.keys())
out=open('scripts/_withjar_report.txt','w',encoding='utf-8')
tot_wj=0; unknown=set()
for s in srcs:
    by=s.get('by_src') or []
    wj=[x for x in by if isinstance(x,dict) and x.get('jar')]
    tot_wj+=len(wj)
    for x in wj:
        u=str(x['jar'])
        base=u.split(';')[0]
        if base not in known_urls: unknown.add(base)
print('全部源带jar站总数=',tot_wj,file=out)
print('带jar站引用的 jar URL 不在已知库的:',len(unknown),file=out)
for u in sorted(unknown)[:60]: print('  ',u,file=out)
out.close()
print('done wj=',tot_wj,'unknown_jars=',len(unknown))
