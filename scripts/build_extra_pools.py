# -*- coding: utf-8 -*-
"""
build_extra_pools.py  —  依据用户标注的 站点清单.xlsx 构建分池
输入: 站点清单.xlsx 的「全部站点(1764)」sheet
  - 删除线(strike)行         => DROP (去本地/网盘/搜索/磁力P2P + 用户手删)
  - 黄底红字(yellow+red)行    => P5 (成人隔离)
  - 教育相关(按关键词)         => P6 (若也在删除线则删除线优先, 若也在黄底红字则 p5 优先)
输出: scripts/_drop_keys.txt / scripts/_p5_keys.txt / scripts/_p6_keys.txt
      + output/android5/single_p5.json / single_p6.json
然后同一批 key 应用到 android5/single.json 生成干净版, 再交给 split_single.py 重分段。
"""
import io, json, os, re

XLSX = "站点清单.xlsx"
SHEET = "全部站点(1764)"
SINGLE = "output/android5/single.json"
P5_OUT = "output/android5/single_p5.json"
P6_OUT = "output/android5/single_p6.json"
P7_OUT = "output/android5/single_p7.json"

# 强制归属：这些 key 无论 xlsx 是否标注，一律进对应专区（防止每周重跑被覆盖）。
# 用户指定：九合一版.py / 4KAV(clun) / 4k-av(pan.szfx) 是成人 → p5；各种豆采集.py 是教育 → p6。
P5_FORCE_KEYS = {"九合一版", "py_4KAV", "4k-av"}
P6_FORCE_KEYS = {"各种豆采集.py"}

# 持久化规则文件：记录历史决策的 drop / p5 / p6 / p7 key。
# 来源数据更新重跑时，规则文件里的 key 优先级最高，保证不会被重新分回 p1-p4。
POOL_RULES = "scripts/pool_rules.json"


def load_pool_rules():
    try:
        r = json.load(io.open(POOL_RULES, encoding="utf-8"))
        return {
            "drop": [k for k in r.get("drop", []) if k],
            "p5": [k for k in r.get("p5", []) if k],
            "p6": [k for k in r.get("p6", []) if k],
            "p7": [k for k in r.get("p7", []) if k],
        }
    except Exception:
        return {"drop": [], "p5": [], "p6": [], "p7": []}


def save_pool_rules(drop, p5, p6, p7):
    """把本次分类结果写回规则文件（累积）。一个 key 只落一个池，优先级 drop>p5>p6>p7。"""
    old = load_pool_rules()
    udrop = list(dict.fromkeys(old["drop"] + list(drop)))
    seen = set(udrop)
    out = {"drop": udrop}
    for pool in ("p5", "p6", "p7"):
        merged = list(dict.fromkeys(old[pool] + list(p5 if pool == "p5" else p6 if pool == "p6" else p7)))
        out[pool] = [k for k in merged if not (k in seen) and not seen.add(k)]
    out["_comment"] = ("站点分类持久化规则。来源数据更新重跑时，按 key 强制归属："
                       "drop=删除；p5=成人；p6=教育；p7=体育。这些 key 绝不进 p1-p4 干净版。"
                       "新站仍走 站点清单.xlsx 标注 + 关键词正则。")
    io.open(POOL_RULES, "w", encoding="utf-8", newline="").write(
        json.dumps(out, ensure_ascii=False, indent=1))
    return out

# 教育相关关键词（key/name/api 命中即归 p6）
EDU = re.compile(
    r"教育|课堂|学习|学堂|课程|公开课|网课|慕课|MOOC|muclass|"
    r"语文|数学|英语课|物理|化学|生物|"
    r"小学|初中|高中|中考|高考|考研|四六级|雅思|托福|"
    r"少儿|儿童|启蒙|绘本|儿歌|拼音|识字|早教|幼教|亲子|"
    r"TED|网易公开课|可汗|Khan|"
    r"题库|试卷|教材",
    re.I,
)

# 体育相关关键词（key/name/api 命中即归 p7）
SPORT = re.compile(
    r"体育|运动|健身|球赛|足球|篮球|排球|乒乓|羽毛球|网球|台球|高尔夫|"
    r"赛[事场]|联赛|NBA|CBA|英超|西甲|德甲|意甲|欧冠|世界杯|亚运|奥运|"
    r"竞[技猜]|球迷|球员|球队|梅西|C罗|詹姆斯|"
    r"UFC|MMA|F1|赛车|搏击|拳击|格斗|摔跤|"
    r"体[育坛]|ESPN|sport",
    re.I,
)


def read_xlsx():
    from openpyxl import load_workbook
    wb = load_workbook(XLSX)
    ws = wb[SHEET]
    drop, p5, edu_marked = [], [], []
    allrows = []
    for row in ws.iter_rows(min_row=2):
        keys = {c.column_letter: (c.value if c.value is not None else "") for c in row}
        idx = row[0].row
        strike = any(c.font and c.font.strike for c in row)
        yellow = False
        red = False
        for c in row:
            fg = c.fill.fgColor.rgb if (c.fill and c.fill.fgColor and isinstance(c.fill.fgColor.rgb, str)) else ""
            ft = c.font
            fc = ft.color.rgb if (ft and ft.color and isinstance(ft.color.rgb, str)) else ""
            if fg.upper() == "FFFFFF00":
                yellow = True
            if fc.upper() in ("FFFF0000", "FFCC0000"):
                red = True
        key = str(keys.get("B", "")).strip()
        name = str(keys.get("C", "")).strip()
        api = str(keys.get("D", "")).strip()
        allrows.append((idx, key, name, api, strike, yellow and red))
        if strike:
            drop.append(key)
        elif yellow and red:
            p5.append((str(keys.get("A", "")).strip(), key))
    return allrows, drop, p5


def pick_edu(allrows, drop_keys, p5_keys):
    """教育相关：关键词命中，但删除线优先、黄底红字次之。"""
    return _pick(allrows, drop_keys, p5_keys, EDU)


def _pick(allrows, drop_keys, p5_keys, rx):
    out = []
    dropset = set(drop_keys)
    p5set = set(p5_keys)
    for idx, key, name, api, strike, yr in allrows:
        blob = " ".join((key, name, api))
        if rx.search(blob):
            if key in dropset or key in p5set:
                continue
            out.append((key, name, api))
    seen, res = set(), []
    for k, n, a in out:
        if k and k not in seen:
            seen.add(k)
            res.append((k, n, a))
    return res


def uniq(seq):
    seen, res = set(), []
    for s in seq:
        k = str(s.get("key") or s.get("name") or "")
        if k and k not in seen:
            seen.add(k)
            res.append(s)
    return res


def main(dry=False, record=False):
    allrows, drop, p5_flat = read_xlsx()
    # drop 用全订阅合并去重
    drop = list(dict.fromkeys(k for k in drop if k))

    # 加载持久化规则（历史决策优先）
    rules = load_pool_rules()

    # p5 保留「订阅标签」，按订阅分别抽取（xlsx 是四订阅合并视图，p5 必须回到具体订阅文件里取站点对象）
    p5_by_sub = {}
    for tag, key in p5_flat:
        if key:
            p5_by_sub.setdefault(tag, []).append(key)
    p5_flat_keys = list(dict.fromkeys(k for _, k in p5_flat if k))

    edu = pick_edu(allrows, drop, p5_flat_keys)
    p6 = [k for k, n, a in edu]
    sport = _pick(allrows, drop, p5_flat_keys + p6, SPORT)   # p7：避开已归 p5/p6 的
    p7 = [k for k, n, a in sport]

    # 并入持久化规则（强制这些 key 永远留在对应池，不因来源更新被分回干净版）
    drop = list(dict.fromkeys(drop + rules["drop"]))
    p5_flat_keys = list(dict.fromkeys(p5_flat_keys + rules["p5"]))
    p6 = list(dict.fromkeys(p6 + rules["p6"]))
    p7 = list(dict.fromkeys(p7 + rules["p7"]))
    # 一个 key 只落一个池：drop > p5 > p6 > p7
    dset = set(drop)
    p5_flat_keys = [k for k in p5_flat_keys if k not in dset]
    p5set = set(p5_flat_keys) | dset
    p6 = [k for k in p6 if k not in p5set]
    p6set = set(p6) | p5set
    p7 = [k for k in p7 if k not in p6set]

    io.open("scripts/_drop_keys.txt", "w", encoding="utf-8").write("\n".join(drop))
    io.open("scripts/_p5_keys.txt", "w", encoding="utf-8").write("\n".join(p5_flat_keys))
    io.open("scripts/_p6_keys.txt", "w", encoding="utf-8").write("\n".join(p6))
    io.open("scripts/_p7_keys.txt", "w", encoding="utf-8").write("\n".join(p7))
    rep = ["drop(strike)=%d  p5(yellow+red)=%d keys  p6(edu)=%d  p7(sport)=%d" % (len(drop), len(p5_flat_keys), len(p6), len(p7))]
    rep += ["p5 by sub: " + "  ".join("%s:%d" % (t, len(v)) for t, v in p5_by_sub.items())]
    rep += ["p6 samples:"] + ["  %s | %s | %s" % e for e in edu[:40]]
    rep += ["p7 samples:"] + ["  %s | %s | %s" % e for e in sport[:40]]
    io.open("_pool_report.txt", "w", encoding="utf-8").write("\n".join(rep))
    print(rep[0]); print(rep[1])
    if dry:
        return

    d = json.load(io.open(SINGLE, encoding="utf-8"))
    dropS, p6S, p7S = set(drop), set(p6), set(p7)
    p5_all = set(p5_flat_keys)

    def matchkey(s):
        return str(s.get("key") or s.get("name") or "")

    # 关键词兜底（用户要求：所有本地/网盘/搜索/磁力P2P 站一律去掉，不论是否标删除线）
    RESIDUE = re.compile(
        r"本地|网盘|云盘|盘搜|磁力|p2p|alist|webdav|quark|夸克|百度|阿里|天翼|迅雷|pikpak|"
        r"123pan|123云盘|88pan|189pan|115|uc盘|uc网盘|搜索器|搜索中心",
        re.I,
    )

    def is_residue(s):
        blob = " ".join(str(s.get(f, "")) for f in ("key", "name", "api", "ext", "jar", "spider"))
        return bool(RESIDUE.search(blob))

    # p5 用 key 在「任一订阅」(a5单仓/a5验证/a4单仓/a4验证) 里找；优先 a5单仓。
    # 其余订阅 (singlead/a4 single) 也从那里同步剔除 drop/residue，并把 p5 抽走。
    VARIANTS = [
        ("output/android5/single.json", "a5单仓"),
        ("output/android5/singlead.json", "a5验证"),
        ("output/android4/single.json", "a4单仓"),
        ("output/android4/singlead.json", "a4验证"),
    ]
    variants_data = {}
    for path, tag in VARIANTS:
        try:
            variants_data[tag] = json.load(io.open(path, encoding="utf-8"))
        except Exception as ex:
            print("[warn] missing", path, ex)

    all_index = {}   # key -> site (first found, prefer membership order above)
    for tag, cfg in variants_data.items():
        for s in cfg.get("sites", []):
            k = matchkey(s)
            if k and k not in all_index:
                all_index[k] = s

    def uniq(seq):
        seen, res = set(), []
        for s in seq:
            k = matchkey(s)
            if k and k not in seen:
                seen.add(k); res.append(s)
        return res

    # p5：按订阅分别抽取（同一 key 在哪个订阅的 xlsx 行标了黄底红字，就从那个订阅取站点对象）
    p5_sites = []
    p5_found = set()
    p5_absent = []
    for tag, keys in p5_by_sub.items():
        cfg = variants_data.get(tag)
        if not cfg:
            p5_absent.extend(keys)
            continue
        subindex = {}
        for s in cfg.get("sites", []):
            k = matchkey(s)
            if k and k not in subindex:
                subindex[k] = s
        for k in keys:
            if k in subindex:
                p5_found.add(k)
                p5_sites.append(subindex[k])
            else:
                p5_absent.append("%s@%s" % (k, tag))
    p5_sites = uniq(p5_sites)
    p5_found = set(matchkey(s) for s in p5_sites)
    # 强制归属 p5：从全量站点索引里强制并入（即使未被黄底红字标注）
    for k in P5_FORCE_KEYS:
        s = all_index.get(k)
        if s is not None and matchkey(s) not in p5_found:
            p5_sites.append(s); p5_found.add(matchkey(s))
    p5_sites = uniq(p5_sites)
    p5_found = set(matchkey(s) for s in p5_sites)

    p6_sites = [s for k, s in ((matchkey(x), x) for x in all_index.values()) if k in p6S and k not in p5_found]
    # 强制归属 p6：各种豆采集 等指定教育站
    p6key_set = set(matchkey(s) for s in p6_sites)
    for k in P6_FORCE_KEYS:
        s = all_index.get(k)
        if s is not None and k not in p5_found and k not in p6key_set:
            p6_sites.append(s); p6key_set.add(k)
    p7_sites = [s for k, s in ((matchkey(x), x) for x in all_index.values()) if k in p7S and k not in p5_found and k not in p6S]
    p6_sites = uniq(p6_sites); p7_sites = uniq(p7_sites)

    p6k = set(matchkey(s) for s in p6_sites)
    p7k = set(matchkey(s) for s in p7_sites)

    base = variants_data.get("a5单仓") or json.load(io.open(SINGLE, encoding="utf-8"))

    def dump(path, sites, label, src_cfg):
        cfg = dict(src_cfg)
        cfg["sites"] = sites
        cfg["//"] = src_cfg.get("//", "") + " | " + label + " | %d站" % len(sites)
        with io.open(path, "w", encoding="utf-8") as f:
            json.dump(cfg, f, ensure_ascii=False, indent=1)

    dump(P5_OUT, p5_sites, "成人内容隔离", base)
    dump(P6_OUT, p6_sites, "教育专区", base)
    dump(P7_OUT, p7_sites, "体育专区", base)

    # 对每个订阅执行：删 drop+residue，抽走 p5/p6/p7
    clean_counts = {}
    for path, tag in VARIANTS:
        cfg = variants_data.get(tag)
        if not cfg:
            continue
        kept = [s for s in cfg.get("sites", [])
                if matchkey(s) not in dropS and matchkey(s) not in p5_all
                and matchkey(s) not in p6k and matchkey(s) not in p7k
                and not is_residue(s)]
        cfg2 = dict(cfg)
        cfg2["sites"] = kept
        cfg2["//"] = cfg.get("//", "") + " | 已去本地网盘搜索磁力/成人/教育/体育 | %d站" % len(kept)
        with io.open(path, "w", encoding="utf-8") as f:
            json.dump(cfg2, f, ensure_ascii=False, indent=1)
        clean_counts[tag] = (len(cfg.get("sites", [])), len(kept))

    msg = "p5_keys=%d found_in_subs=%d absent=%d | p6=%d p7=%d (drop=%d)" % (
        len(p5_flat_keys), len(p5_found), len(p5_absent), len(p6_sites), len(p7_sites), len(dropS))
    msg += "\nclean(各订阅 原->净): " + "  ".join("%s:%d->%d" % (t, a, b) for t, (a, b) in clean_counts.items())
    msg += "\np5_absent: " + ", ".join(p5_absent)
    io.open("_pool_report.txt", "a", encoding="utf-8").write("\n" + msg)
    print(msg)

    # 记录/累积本次决策到持久化规则（--record 或默认都写，便于来源更新后仍按此分池）
    if record:
        saved = save_pool_rules(
            drop,
            [matchkey(s) for s in p5_sites],
            [matchkey(s) for s in p6_sites],
            [matchkey(s) for s in p7_sites],
        )
        print("pool_rules updated: drop=%d p5=%d p6=%d p7=%d" % (
            len(saved["drop"]), len(saved["p5"]), len(saved["p6"]), len(saved["p7"])))


if __name__ == "__main__":
    import sys
    main(dry=("--dry" in sys.argv), record=("--no-record" not in sys.argv))
