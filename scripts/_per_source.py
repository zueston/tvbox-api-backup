# -*- coding: utf-8 -*-
import json,io,sys
out=io.open('scripts/_per_source_jar.txt','w',encoding='utf-8')
def P(*a): print(*a,file=out)
lib=json.load(open('scripts/_jar_lib.json',encoding='utf-8'))
jar_cls={u:set(v['classes']) for u,v in lib.items() if v.get('classes') is not None}
all_cls=set().union(*jar_cls.values()) if jar_cls else set()

r=json.load(open('output/report.json',encoding='utf-8'))
srcs=r['android5']['sources']
# 对每个源: 其站点里 csp_无jar 站需要的类, 用哪个 jar 覆盖最多
P('=== 每源最优 jar 覆盖分析 ===')
group_assign={}  # jar -> [源名]
summary=[]
for s in srcs:
    by_src=s.get('by_src') or []
    if not isinstance(by_src,list): by_src=[]
    nsite=len(by_src)
    csp_nojar=[x for x in by_src if str(x.get('api','')).startswith('csp_') and not x.get('jar')]
    need=set(str(x['api'])[4:] for x in csp_nojar)
    if not csp_nojar:
        P(f"[{s['name']}] 站={nsite} 无jar csp=0 -> 无需全局jar")
        summary.append((s['name'],nsite,0,0,'-'))
        continue
    # 每 jar 覆盖率
    best=None
    for ju,jc in jar_cls.items():
        hit=sum(1 for c in need if c in jc)
        if best is None or hit>best[1]: best=(ju,hit)
    # 用全jar合并(理论)覆盖
    union_hit=sum(1 for c in need if c in all_cls)
    P(f"[{s['name']}] 站={nsite} 无jar csp={len(csp_nojar)} 需类={len(need)} | 最优jar覆盖={best[1]} (jar={best[0].split('/')[-1]}) | 全jar合并覆盖={union_hit} | 缺(任何jar都没)={len(need)-union_hit}")
    summary.append((s['name'],nsite,len(csp_nojar),best[1],best[0].split('/')[-1] if best else '-'))
P('')
P('=== 汇总 ===')
tot_need_uncover=0
for name,nsite,ncsp,hit,jn in summary:
    P(f"  {name:12} 站={nsite:4} csp无jar={ncsp:4} 最优jar命中={hit}")
out.close()
print('done')
