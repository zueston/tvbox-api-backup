# -*- coding: utf-8 -*-
import json,re,glob,os
# 递归遍历任意 json 结构, 收集所有 jar/spider 字段值
JARKEY=re.compile(r'(jar|spider)$',re.I)
found=set()
def walk(o):
    if isinstance(o,dict):
        for k,v in o.items():
            if isinstance(v,str) and JARKEY.search(k):
                for u in re.split(r'[|,;\s]+',v):
                    u=u.strip()
                    if re.search(r'https?://',u) and not re.search(r'\.(png|jpg|mp4|html|json|txt|m3u)$',u):
                        # 剥 md5 尾
                        u=re.sub(r';(md5|size|md5;|[a-f0-9]{32}).*$','',u)
                        found.add(u)
            else: walk(v)
    elif isinstance(o,list):
        for x in o: walk(x)
files=glob.glob('../tvsource/*.json')+glob.glob('../tvsource/*.txt')+glob.glob('output/**/*.json',recursive=True)+glob.glob('scripts/*.json')
for f in files:
    try:
        t=open(f,encoding='utf-8',errors='ignore').read()
    except: continue
    if f.endswith('.json'):
        try: walk(json.loads(t)); continue
        except: pass
    # txt/兜底: 正则抓 http jar
    for m in re.finditer(r'https?://[^\s"\'|,;<>]+?\.jar(?:\?[^\s"\'|,;<>]*)?',t):
        found.add(re.sub(r';.*$','',m.group(0)))
# 再统一扫 raw jar
allout=set()
for u in found:
    u=re.sub(r';.*$','',u.rstrip('/,;'))
    if u.endswith('.jar') or '.jar?' in u: allout.add(u)
print('从原始源扒到 jar URL 去重=',len(allout))
prev=set(json.load(open('scripts/_all_jars.json',encoding='utf-8')))
new=sorted(allout-prev)
print('其中新增(之前30个里没有的)=',len(new))
for u in new: print('  NEW',u)
json.dump(sorted(allout),open('scripts/_all_jars2.json','w',encoding='utf-8'),ensure_ascii=False,indent=1)
