# -*- coding: utf-8 -*-
import json
jc=json.load(open('scripts/_jar_classes.json',encoding='utf-8'))
allcls=json.load(open('scripts/_class_to_jars.json',encoding='utf-8'))
j=json.load(open('output/android5/single.json',encoding='utf-8'))
sites=j.get('sites',[])
csp=[s for s in sites if str(s.get('api','')).startswith('csp_')]
def clsname(api): return api[4:]  # after csp_
# 覆盖率：若用某 jar 作全局
def cover(jarname, need_jar_field=False):
    jarcls=set(jc[jarname]['classes']) if jarname in jc else set()
    # 合并所有jar里的类(因为站点自带jar的情况)
    union=set()
    for k in jc: union|=set(jc[k]['classes'])
    ok=miss=0; miss_set=set()
    for s in csp:
        c=clsname(s['api'])
        pool = union if (s.get('jar') or True) else jarcls  # 站点带jar则可用union
        # 简化: 站点带jar -> 该类在它那个 jar 或 union? 实际用其jar
        if s.get('jar'):
            # 需该类在它的jar里
            ok+=1  # 占位, 单独算
        else:
            if c in jarcls: ok+=1
            else: miss+=1; miss_set.add(c)
    return ok,miss,miss_set
for jn in ['Yoursmile','spider550']:
    ok,miss,ms=cover(jn)
    print(f'全局={jn}: 无jar站点可覆盖ok={ok} miss={miss} 缺类数={len(ms)}')
print('--- 无jar站点 缺类明细(用spider550全局) ---')
jcs=set(jc['spider550']['classes'])
miss={}
for s in csp:
    if not s.get('jar'):
        c=clsname(s['api'])
        if c not in jcs:
            miss.setdefault(c,0); miss[c]+=1
for c,n in sorted(miss.items(),key=lambda x:-x[1]):
    # 看是否有别的jar含它
    have=[k for k in allcls.get(c,[])]
    print(f'  {c} x{n}  有的jar={have}')
