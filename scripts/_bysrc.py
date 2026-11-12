# -*- coding: utf-8 -*-
import json
from collections import defaultdict
jc=json.load(open('scripts/_jar_classes.json',encoding='utf-8'))
union=set()
for k in jc: union|=set(jc[k]['classes'])
j=json.load(open('output/android5/single.json',encoding='utf-8'))
sites=j.get('sites',[])
# 按 site.jar 分组；无jar的归"全局(无jar)"
grp=defaultdict(lambda:{'ok':0,'bad':0,'badcls':set()})
for s in sites:
    api=str(s.get('api',''))
    jar=s.get('jar') or '(无jar/全局)'
    g=grp[jar]
    if api.startswith('csp_'):
        c=api[4:]
        # 该站若自带jar, 用那个jar的类; 否则用union(乐观,实际用全局)
        if s.get('jar'):
            have=set(jc.get(_jn(s['jar']),{'classes':[]})['classes']) if False else None
    # 简化统计: 只判自带jar站 vs 无jar站
# 重置: 用真实判断
def jar_key(url):
    for k in jc:
        pass
    return url
# 直接: 每个站 csp -> 类名; 带jar站需该类在其jar; 无jar站需该类在union
okc=badc=0
miss_by_jar=defaultdict(set)
for s in sites:
    api=str(s.get('api',''))
    if not api.startswith('csp_'): continue
    c=api[4:]
    jar=s.get('jar')
    if jar:
        jn=jc.get(_k(jar)) if False else None
    # 类是否存在于 union (乐观上界)
    if c in union:
        okc+=1
    else:
        badc+=1
        miss_by_jar[jar or '(无jar)'].add(c)
print('csp站总数ok(union覆盖)=',okc,'bad(任何jar都没有)=',badc)
print('=== 任何jar都没有的类, 按站点jar分组 ===')
for jn,cs in sorted(miss_by_jar.items(),key=lambda x:-len(x[1])):
    print(f'{jn}: {len(cs)} 个缺类')
