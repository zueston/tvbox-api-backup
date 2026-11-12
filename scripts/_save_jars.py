# -*- coding: utf-8 -*-
import json,urllib.request,os,hashlib,re
UA={'User-Agent':'okhttp/3.11'}
lib=json.load(open('scripts/_jar_lib.json',encoding='utf-8'))
GATE=re.compile(r'guot55|bhh\.indevs\.in|iyouhun',re.I)
os.makedirs('jar',exist_ok=True)
saved={}  # jarname -> (localfile, md5, size)
for u,v in lib.items():
    if v.get('classes') is None: continue
    if GATE.search(u): continue
    # 命名: 用 URL 末段, 去重
    name=u.split('/')[-1].split('?')[0]
    if re.search(r'^[A-Za-z0-9_]+\.jar$',name) is None: name='j'+hashlib.md5(u.encode()).hexdigest()[:8]+'.jar'
    dest='jar/'+name
    # 若是已存的自托管 Yoursmile, 跳过
    if u.startswith('https://gh-proxy.com/https://raw.githubusercontent.com/zueston/'):
        saved[name]=(dest,v.get('md5'),v.get('size'),u); continue
    try:
        d=urllib.request.urlopen(urllib.request.Request(u,headers=UA),timeout=60).read()
        if d[:2]!=b'PK': print('NOTZIP skip',u); continue
        # 同名不同内容 -> 加后缀
        if os.path.exists(dest):
            ex=hashlib.md5(open(dest,'rb').read()).hexdigest()
            if ex!=hashlib.md5(d).hexdigest():
                name=hashlib.md5(u.encode()).hexdigest()[:8]+'_'+name
                dest='jar/'+name
        open(dest,'wb').write(d)
        saved[name]=(dest,hashlib.md5(d).hexdigest(),len(d),u)
        print('SAVED',name,len(d),'<-',u)
    except Exception as e:
        print('ERR',str(e)[:50],u)
json.dump(saved,open('scripts/_jar_manifest.json','w',encoding='utf-8'),ensure_ascii=False,indent=1)
print('=== 存入 jar/ 共',len(saved),'个')
for n in sorted(saved): print(' ',n,saved[n][2],'B')
