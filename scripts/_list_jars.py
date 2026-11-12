# -*- coding: utf-8 -*-
import json,urllib.request,zipfile,io,re
UA={'User-Agent':'okhttp/3.11'}
# 把当前产物里出现过的所有 site.jar 全列出(跨8个产物文件), 供下载
import glob
jars=set()
for f in glob.glob('output/**/*.json',recursive=True):
    try: d=json.load(open(f,encoding='utf-8'))
    except: continue
    if isinstance(d,dict):
        for s in d.get('sites',[]):
            if isinstance(s,dict) and s.get('jar'):
                jars.add(s['jar'])
        if d.get('spider'): jars.add(d['spider'])
# 清理: 去掉明显非jar(png/mp4)
jars={u for u in jars if isinstance(u,str) and not re.search(r'\.(png|jpg|mp4|html)$',u)}
print('需要覆盖的jar数=',len(jars))
for u in sorted(jars): print(' ',u)
json.dump(sorted(jars),open('scripts/_all_jars.json','w',encoding='utf-8'),ensure_ascii=False,indent=1)
