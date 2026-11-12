# -*- coding: utf-8 -*-
import json
from collections import defaultdict
lib=json.load(open('scripts/_jar_lib.json',encoding='utf-8'))
jar_cls={}
for u,v in lib.items():
    if v.get('classes') is not None: jar_cls[u]=set(v['classes'])
# 站点归属: 从 single.json 每个站有 owner? 检查 key 字段 + report by_src
# 先看 single.json 站是否有来源标记
j=json.load(open('output/android5/single.json',encoding='utf-8'))
sites=j['sites']
print('单仓站数=',len(sites),' 站字段=',list(sites[0].keys()))
# 检查 report 里有无 by_src 每源站点key列表
r=json.load(open('output/report.json',encoding='utf-8'))
for s in r['android5']['sources'][:2]:
    print('src entry keys=',list(s.keys()))
    if 'by_src' in s: print('  by_src sample=',list(s['by_src'].items())[:1] if isinstance(s['by_src'],dict) else s['by_src'][:2])
