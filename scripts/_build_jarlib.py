# -*- coding: utf-8 -*-
import json,urllib.request,zipfile,io,re,os,hashlib
UA={'User-Agent':'okhttp/3.11'}
jars=json.load(open('scripts/_all_jars.json',encoding='utf-8'))
GATE=re.compile(r'guot55|bhh\.indevs\.in|iyouhun',re.I)
os.makedirs('jar',exist_ok=True)
result={}
for u in jars:
    if GATE.search(u):
        result[u]={'skip':'gate'}; print('SKIP gate',u); continue
    try:
        d=urllib.request.urlopen(urllib.request.Request(u,headers=UA),timeout=50).read()
        if d[:2]!=b'PK':
            result[u]={'err':'not-zip','size':len(d)}; print('NOTZIP',len(d),u); continue
        z=zipfile.ZipFile(io.BytesIO(d))
        cls=set()
        for n in z.namelist():
            if n.endswith('.dex'):
                dex=z.read(n)
                for m in re.finditer(rb'Lcom/github/catvod/(?:spider|en|utils|net|js|api)/([A-Za-z0-9_]+);',dex):
                    cls.add(m.group(1).decode('ascii','ignore'))
        h=hashlib.md5(d).hexdigest()
        result[u]={'size':len(d),'md5':h,'n':len(cls),'classes':sorted(cls)}
        print(f'OK {len(cls)}cls {len(d)}B md5={h[:8]} {u}')
    except Exception as e:
        result[u]={'err':str(e)}; print('ERR',str(e)[:60],u)
json.dump(result,open('scripts/_jar_lib.json','w',encoding='utf-8'),ensure_ascii=False,indent=1)
ok=sum(1 for v in result.values() if v.get('classes') is not None)
print('=== 成功下载并解析:',ok,'/',len(jars))
