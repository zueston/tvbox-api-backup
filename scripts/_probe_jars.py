# -*- coding: utf-8 -*-
import urllib.request,zipfile,io,re,json,sys
UA={'User-Agent':'okhttp/3.11'}
JARS={
 'Yoursmile':'https://gh-proxy.com/https://raw.githubusercontent.com/zueston/tvbox-api-backup/main/jar/Yoursmile.jar',
 'HCCX':'https://raw.liucn.cc/box/libs/jar/HCCX.jar',
 'xyqxbpq':'http://550.3vcn.work/xyqxbpq.jar',
 'Panda':'https://raw.liucn.cc/box/libs/jar/Panda.jar',
 'c':'https://raw.liucn.cc/box/libs/jar/c.jar',
 'XYQH':'https://raw.liucn.cc/box/libs/jar/XYQH.jar',
 'app':'https://raw.liucn.cc/box/libs/jar/app.jar',
 'spider550':'http://550.3vcn.work/lib/spider.jar',
}
def classes(u):
    try:
        d=urllib.request.urlopen(urllib.request.Request(u,headers=UA),timeout=45).read()
        z=zipfile.ZipFile(io.BytesIO(d))
        s=set()
        for name in z.namelist():
            if name.endswith('.dex'):
                dex=z.read(name)
                for m in re.finditer(rb'Lcom/github/catvod/(?:spider|en|utils|net|js|api)/([A-Za-z0-9_]+);', dex):
                    s.add(m.group(1).decode('ascii','ignore'))
        return s,len(d)
    except Exception as e:
        return set(),str(e)
out={}
allcls={}
for k,u in JARS.items():
    cls,info=classes(u)
    out[k]={'n':len(cls),'bytes':info if isinstance(info,str) else info,'classes':sorted(cls)}
    for c in cls: allcls.setdefault(c,[]).append(k)
    print(k,'->',len(cls),'classes', info if isinstance(info,str) else str(info)+'B')
json.dump(out,open('scripts/_jar_classes.json','w',encoding='utf-8'),ensure_ascii=False,indent=1)
print('=== 类覆盖统计（跨jar） ===')
print('总类数=',len(allcls))
json.dump(allcls,open('scripts/_class_to_jars.json','w',encoding='utf-8'),ensure_ascii=False,indent=1)
