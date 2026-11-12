# -*- coding: utf-8 -*-
import json,os,re
lib=json.load(open('scripts/_jar_lib.json',encoding='utf-8'))
man=json.load(open('scripts/_jar_manifest.json',encoding='utf-8'))
url2name={v[3]:k for k,v in man.items()}
name2cls={}
for u,v in lib.items():
    if v.get('classes') is not None:
        n=url2name.get(u)
        if n: name2cls[n]=set(v['classes'])
out=open('scripts/_selfcheck.txt','w',encoding='utf-8')
GH="https://gh-proxy.com/https://raw.githubusercontent.com/zueston/tvbox-api-backup/main/jar/"
bad=0
for fn in sorted(os.listdir('output/houses')):
    d=json.load(open('output/houses/'+fn,encoding='utf-8'))
    sp=d.get('spider','')
    jn=sp.split('/jar/')[-1] if '/jar/' in sp else ''
    jc=name2cls.get(jn,set())
    miss=0; wj=0; wj_missing=[]
    for s in d['sites']:
        api=str(s.get('api',''))
        if s.get('jar'):
            wj+=1
            ju=str(s['jar']).split(';')[0]
            if ju not in lib: wj_missing.append(ju)
            continue
        if api.startswith('csp_') and api[4:] not in jc: miss+=1
    print("%s spider=%s cls=%d 站=%d 带jar=%d 无jar-csp缺类=%d"%(fn,jn,len(jc),len(d['sites']),wj,miss),file=out)
    if miss: bad+=1
    for u in set(wj_missing): print("    ⚠ 带jar站引用未收录jar:",u,file=out)
print("有缺类的子仓数=",bad,file=out)
out.close()
print('done')
