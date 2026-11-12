# -*- coding: utf-8 -*-
import json
from collections import defaultdict
lib=json.load(open('scripts/_jar_lib.json',encoding='utf-8'))
# 建 类->jar 反查 (只含成功解析的, 排除 gate)
cls2jar=defaultdict(set)
jar_cls={}
for u,v in lib.items():
    if v.get('classes') is not None:
        jar_cls[u]=set(v['classes'])
        for c in v['classes']: cls2jar[c].add(u)
# 站点需要: api=csp_X -> 类X; 带jar站必须类在自带jar(否则保留但可能失败); 无jar站用子仓spider
j=json.load(open('output/android5/single.json',encoding='utf-8'))
sites=j.get('sites',[])
# 用 report 无法精确到站, 直接看 single.json 里每站有无来源标签? 检查
print('site keys sample=',list(sites[0].keys()))
# 统计每站需要的类 是否能被某个jar覆盖
csp=[s for s in sites if str(s.get('api','')).startswith('csp_')]
need=defaultdict(int)  # cls -> count of sites needing it (无jar站)
for s in csp:
    if not s.get('jar'):
        need[str(s['api'])[4:]]+=1
# 每个类可用哪些jar
uncoverable=[c for c in need if c not in cls2jar]
print('无jar站需要的不同类数=',len(need),' 其中任何jar都没有的类数=',len(uncoverable))
print('任何jar都没有的类(去重)=',sorted(uncoverable))
print('站点数受影响=',sum(need[c] for c in uncoverable))
# 全jar能覆盖的无jar站
cov=sum(need[c] for c in need if c in cls2jar)
print('无jar站可被jar覆盖=',cov,'/',sum(need.values()))
