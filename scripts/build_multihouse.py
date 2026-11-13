# -*- coding: utf-8 -*-
import json,os,re,ssl,urllib.request
REPO="zueston/tvbox-api-backup"

# ── 外部子仓内容校验：Depot 会自动 load 每个 url，坏源(加密密文/超时/非JSON)会导致整体"配置取得失败"。
# 这里对每条外部 url 预探活：能拿到、能解析为含 sites 的合法 TVBox 配置才放行；否则剔除。
_CTX=ssl.create_default_context(); _CTX.check_hostname=False; _CTX.verify_mode=ssl.CERT_NONE
def _fetch(u,timeout=15):
    req=urllib.request.Request(u,headers={"User-Agent":"okhttp/3.11"})
    return urllib.request.urlopen(req,timeout=timeout,context=_CTX).read()
def house_ok(u):
    """返回 (ok:bool, reason:str)。ok=True 表示该 url 可作为 Depot 子仓被 FongMi 正常解析。
    采用与 TVBox 一致的宽容判定：剥 // 注释行、去 BOM、strict=False 允许字符串内裸控制字符；
    仅对真正的坏源（AES 加密 hex / 返回非 JSON 如 PNG / 超时 / 非 TVBox 结构）判坏。"""
    try:
        raw=_fetch(u,timeout=30)
    except Exception as e:
        return (False,"fetch:%s"%e.__class__.__name__)
    txt=raw.decode("utf-8-sig","ignore").strip()
    # 非文本二进制（如返回 PNG 图片）首字节非 { [ → 直接判坏
    head=txt[:1]
    if head not in ("{","["):
        # 再给一次机会：可能是前导空白/注释被 strip 后仍非括号
        return (False,"not-json-head:%r"%head)
    # AES 加密源特征：整串是 hex（只含0-9a-f）
    if re.fullmatch(r"[0-9a-fA-F\s]+",txt or "x"):
        return (False,"encrypted-hex")
    # 去 // 注释行（TVBox 宽容解析）
    lines=[ln for ln in txt.splitlines() if not ln.lstrip().startswith("//")]
    body="\n".join(lines).strip()
    obj=None
    for strict in (False,True):   # 先宽容再严格
        try:
            obj=json.loads(body,strict=strict); break
        except Exception as e:
            last=e
    if obj is None:
        return (False,"bad-json:%s"%last.__class__.__name__)
    if not isinstance(obj,dict):
        return (False,"not-object")
    if not (obj.get("sites") or obj.get("urls")):
        return (False,"no-sites")
    return (True,"ok")
# 子仓内 spider jar 与 houses 内部 href 用 raw 直连（spider jar 只在播放时按需拉，不进 GitHub API 限流统计）
GH="https://raw.githubusercontent.com/%s/main" % REPO
# ★★ 关键：Depot 的 urls 指向的 house_NN.json 会被 FongMi 当作"配置"用 Decoder.getJson 拉取，
# 走 raw/gh-proxy 会撞 GitHub 匿名 API 限流(60/h, ip 43.x)——必须用 fastly 点 commit(走 CDN 不计 API)。
# commit hash 由 _patch_urls.py 在提交后回填；这里先用占位 {{COMMIT}}（无则退回 @main）。
import os
# 用滚动 tag agg-latest（jsDelivr @tag 缓存不可变、推送即新鲜），避免两阶段回填 commit hash。
# 注：storehouse 的 house 子仓 URL 指向 @agg-latest；tag 在提交后再移动，子仓内容与本提交一致。
COMMIT=os.environ.get("MH_COMMIT","agg-latest")
FASTLY="https://testingcf.jsdelivr.net/gh/%s@%s" % (REPO, COMMIT)
lib=json.load(open('scripts/_jar_lib.json',encoding='utf-8'))
man=json.load(open('scripts/_jar_manifest.json',encoding='utf-8'))
url2name={v[3]:k for k,v in man.items()}
jar_cls={u:set(v['classes']) for u,v in lib.items() if v.get('classes') is not None}
r=json.load(open('output/report.json',encoding='utf-8'))
single=json.load(open('output/android5/single.json',encoding='utf-8'))
k2site={}
for s in single['sites']: k2site.setdefault(s['key'],s)
srcs=r['android5']['sources']
os.makedirs('output/houses',exist_ok=True)
for f in os.listdir('output/houses'):
    os.remove('output/houses/'+f)
MIN_KEEP=5
# FongMi VodConfig.checkJson: if object.has("urls") -> Depot.arrayFrom(urls 数组[{"name","url"}])
# 顶层必须是 {"urls":[{"name":..,"url":..}, ...]}，不是 {"storeHouse":[...]}
store={"urls":[],"name":"四源聚合·多仓(按源分jar)"}
index=[]
for s in srcs:
    by=[k2site[x['key']] for x in (s.get('by_src') or []) if x['key'] in k2site]
    if not by: continue
    name=s['name']
    # 无jar csp 站的类
    need=set(str(x['api'])[4:] for x in by if str(x.get('api','')).startswith('csp_') and not x.get('jar'))
    best=None
    for ju,jc in jar_cls.items():
        hit=sum(1 for c in need if c in jc)
        if best is None or hit>best[1]: best=(ju,hit,jc)
    besturl,besthit,bestcls=best if best else (None,0,set())
    jname=url2name.get(besturl)
    kept=[];dropped=[]
    for x in by:
        api=str(x.get('api',''))
        if x.get('jar'): kept.append(x); continue          # 自带jar站保留
        if not api.startswith('csp_'): kept.append(x); continue  # 直连/drpy/js 保留
        if api[4:] in bestcls: kept.append(x)
        else: dropped.append(x)
    if len(kept)<MIN_KEEP: 
        index.append({"source":name,"file":"-","total":len(by),"kept":len(kept),"dropped":len(dropped),"jar":jname or "-","skipped":True})
        continue
    cfg={k:v for k,v in single.items() if k!="sites"}
    cfg["sites"]=kept
    if jname: cfg["spider"]="%s/jar/%s"%(GH,jname)
    fn="house_%02d.json"%(len([i for i in index if not i.get('skipped')])+1)
    json.dump(cfg,open('output/houses/'+fn,'w',encoding='utf-8'),ensure_ascii=False,separators=(',',':'))
    url="%s/output/houses/%s"%(FASTLY,fn)
    store["urls"].append({"name":"%s (%d站)"%(name,len(kept)),"url":url})
    index.append({"source":name,"file":fn,"total":len(by),"kept":len(kept),"dropped":len(dropped),"jar":jname or "-"})
# ── 追加外部子仓：王二小(lubin776 tvbox 自带独立 spider jar，直接引用其原 json) ──
# 这些子仓内容自带 spider/sites，作为 Depot.urls 一项即可被 FongMi 识别并加载。
_LB="https://fastly.jsdelivr.net/gh/lubin776/tvbox-api-backup@main/tvbox/"
EXTRA_HOUSES=[
    ("王二小 (100站)",   _LB+"%E7%8E%8B%E4%BA%8C%E5%B0%8F.json"),
    ("王二小2线 (100站)", _LB+"%E7%8E%8B%E4%BA%8C%E5%B0%8F2%E7%BA%BF.json"),
    ("王二小3线 (63站)", _LB+"%E7%8E%8B%E4%BA%8C%E5%B0%8F3%E7%BA%BF.json"),
    ("小米 (44站)",      _LB+"%E5%B0%8F%E7%B1%B3.json"),
    ("南风 (91站)",      _LB+"%E5%8D%97%E9%A3%8E.json"),
    ("南风2线 (91站)",   _LB+"%E5%8D%97%E9%A3%8E2%E7%BA%BF.json"),
    ("摸鱼 (111站)",     _LB+"%E6%91%B8%E9%B1%BC.json"),
    ("摸鱼3线 (111站)",  _LB+"%E6%91%B8%E9%B1%BC3%E7%BA%BF.json"),
    ("摸鱼5线 (111站)",  _LB+"%E6%91%B8%E9%B1%BC5%E7%BA%BF.json"),
    ("摸鱼6线 (111站)",  _LB+"%E6%91%B8%E9%B1%BC6%E7%BA%BF.json"),
    ("饭太硬 (48站)",    _LB+"%E9%A5%AD%E5%A4%AA%E7%A1%AC.json"),
    ("饭太硬2线 (48站)", _LB+"%E9%A5%AD%E5%A4%AA%E7%A1%AC2%E7%BA%BF.json"),
    ("饭太硬3线 (48站)", _LB+"%E9%A5%AD%E5%A4%AA%E7%A1%AC3%E7%BA%BF.json"),
    ("饭太硬5线 (48站)", _LB+"%E9%A5%AD%E5%A4%AA%E7%A1%AC5%E7%BA%BF.json"),
    ("饭太硬6线 (48站)", _LB+"%E9%A5%AD%E5%A4%AA%E7%A1%AC6%E7%BA%BF.json"),
    ("潇洒 (116站)",     _LB+"%E6%BD%87%E6%B4%92.json"),
]
_rejected=[]
out=open('scripts/_multihouse_report.txt','w',encoding='utf-8')
def _add_external(nm,u):
    ok,why=house_ok(u)
    if ok:
        store["urls"].append({"name":nm,"url":u})
    else:
        _rejected.append((nm,u,why))
        print("REJECT %s -> %s (%s)"%(nm,u,why),file=out)
for nm,u in EXTRA_HOUSES:
    _add_external(nm,u)
# ── 聚玩盒子 jsonlist 紫色(极速)源：外部单仓，直接作为 depot url 项追加 ──
PURPLE=[
    ("刺桐娱乐(紫)",   "https://www.cttv.vip/ys/json/ctys.json"),
    ("软件小哥(紫)",   "http://47.96.82.41:5188/svip/svip.json"),
    ("幸福年年·紫(123站)","http://150.158.52.248/tgyg/bbm.json"),
    ("短剧频道(紫)",   "http://box.ufuzi.com/tv/qq/%E7%9F%AD%E5%89%A7%E9%A2%91%E9%81%93/api.json"),
    ("嗷呜2线·紫(80站)","https://9763.kstore.vip/aowu.json"),
    ("机缘巧盒凯弟1(紫)","https://jihulab.com/jyqhkd/kd/-/raw/main/kai.json"),
    ("俊佬在线(紫)",   "http://home.jundie.top:81/top98.json"),
    ("动漫专属(紫)",   "https://www.yingm.cc/dm/dm.json"),
    ("小马线路·紫(62站)","https://szyyds.cn/tv/x.json"),
    ("宝盒线路2026(紫)","https://3043.kstore.space/bhvip/bh/bh2.json"),
    ("牛二线路(紫)",   "https://9280.kstore.space/wex.json"),
    ("王二小备用·紫(100站)","https://9280.kstore.vip/aiwex.json"),
    ("分享者(紫)",     "http://hucongrong.web3v.work/%E9%A3%8E%E6%B0%B4/fxz/fxz.json"),
    ("拾光趣乐屋(紫)", "https://jiekou.netlify.app/svip.json"),
    ("少儿频道(紫)",   "https://jihulab.com/ymz1231/xymz/-/raw/main/ymshaoer"),
    ("挺好分享·紫(46站)","https://ztha.top/TVBox/thdjk.json"),
    ("小盒子4K(紫)",   "http://xhztv.top/4k.json"),
]
for nm,u in PURPLE:
    _add_external(nm,u)
json.dump(store,open('output/android5/storehouse.json','w',encoding='utf-8'),ensure_ascii=False,indent=1)
print('=== 多仓子仓清单(带jar站恒保留, 废子仓<5站剔除) ===',file=out)
tot=tk=td=0
for it in index:
    tag='[跳过:保留<5]' if it.get('skipped') else it['file']
    print("%-16s %-14s 总%4d 保留%4d 剔%3d jar=%s"%(tag,it['source'],it['total'],it['kept'],it['dropped'],it['jar']),file=out)
    tot+=it['total'];tk+=it['kept'];td+=it['dropped']
live=[i for i in index if not i.get('skipped')]
print("合计: 总%d 保留%d 剔除%d | 有效子仓%d"%(tot,tk,td,len(live)),file=out)
print("外部/PURPLE 剔除 %d 条:"%len(_rejected),file=out)
for nm,u,why in _rejected:
    print("  [剔] %s %s (%s)"%(nm,u,why),file=out)
print("depot urls 条目数=",len(store['urls']),file=out)
out.close()
print('DONE live_houses=',len(live),'kept=',tk,'dropped=',td,'rejected=',len(_rejected))
