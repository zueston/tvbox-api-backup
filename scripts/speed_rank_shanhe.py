#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
speed_rank_shanhe.py — GitHub Actions 兜底粗排（本机长沙移动测速不可用时的替补）

测速点：山河云免费 API（单点，四川方向），公开无需密钥：
  GET https://api.shanhe.kim/API/网站测速.php?url=<URL>&count=2&type=json
  -> {"code":1,"su_kuai":"0.8s","su_man":"1.9s","su_pj":"1.3s"}

规则：
  - 多仓 profiles（含 urls/storeHouse 平行数组）与单仓 sites 都按 su_pj 升序重排；
  - profiles[0] 自家固定不动；csp_/相对路径 api 不可测，按中位耗时插中段保持相对顺序；
  - QPS<=4（全局节流），失败/超时按不可测处理；
  - 只动顺序不增删；任何整体异常由调用方吞掉，产物保持未排序结果照常生成。

用法：python scripts/speed_rank_shanhe.py [--profiles-only]
"""
import concurrent.futures as cf
import json
import os
import re
import sys
import threading
import time
import urllib.parse
import urllib.request

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "output")
API = "https://api.shanhe.kim/API/%E7%BD%91%E7%AB%99%E6%B5%8B%E9%80%9F.php"
UA = "okhttp/3.11"

MULTIS = [
    os.path.join(OUT, "android5", "multi.json"),
    os.path.join(OUT, "android5", "multiad.json"),
    os.path.join(OUT, "android4", "multi.json"),
    os.path.join(OUT, "android4", "multiad.json"),
]
SINGLES = [
    os.path.join(OUT, "android5", "single.json"),
    os.path.join(OUT, "android5", "singlead.json"),
    os.path.join(OUT, "android4", "single.json"),
    os.path.join(OUT, "android4", "singlead.json"),
]

CACHE = {}          # url -> ms or None
_lock = threading.Lock()
_last_req = [0.0]   # QPS 节流：全局最小间隔 0.25s（<=4 QPS）


def shanhe_ms(url, count=2, timeout=25):
    """单 URL 测一次，返回平均毫秒或 None。"""
    with _lock:
        if url in CACHE:
            return CACHE[url]
        gap = time.monotonic() - _last_req[0]
        if gap < 0.25:
            time.sleep(0.25 - gap)
        _last_req[0] = time.monotonic()
    q = urllib.parse.urlencode({"url": url, "count": count, "type": "json"})
    req = urllib.request.Request(f"{API}?{q}", headers={"User-Agent": UA})
    ms = None
    try:
        with urllib.request.urlopen(req, timeout=timeout) as r:
            d = json.loads(r.read().decode("utf-8", "replace"))
        if d.get("code") == 1:
            m = re.search(r"([\d.]+)s", str(d.get("su_pj", "")))
            if m:
                ms = float(m.group(1)) * 1000.0
    except Exception:
        ms = None
    with _lock:
        CACHE[url] = ms
    return ms


def timed_ms(urls):
    """并发测一批 url，返回 dict url->ms|None。"""
    todo = [u for u in dict.fromkeys(urls) if u]
    with cf.ThreadPoolExecutor(max_workers=3) as ex:
        list(ex.map(shanhe_ms, todo))
    return dict(CACHE)


def reorder(items, keys, med):
    """按 keys 升序稳定重排；keys=None 的按中位插中段（保持相对顺序）。"""
    hit = [i for i, k in enumerate(keys) if k is not None]
    miss = [i for i, k in enumerate(keys) if k is None]
    hit.sort(key=lambda i: keys[i])
    vals = [keys[i] for i in hit]
    # 中位插入点：miss 段放在中位值之后（粗排下与不可测项混排可接受）
    cut = sum(1 for v in vals if v <= med)
    out = [items[i] for i in hit[:cut]] + [items[i] for i in miss] + [items[i] for i in hit[cut:]]
    return out


def rank_profiles(path, report):
    if not os.path.exists(path):
        return
    with open(path, encoding="utf-8") as f:
        cfg = json.load(f)
    profs = cfg.get("profiles") or []
    if not profs:
        return
    head, body = profs[0], profs[1:]           # 自家第一条固定
    urls = [p.get("url", "") for p in body]
    ms = timed_ms(urls)
    keys = [ms.get(u) for u in urls]
    ok = sorted(v for v in keys if v is not None)
    med = ok[len(ok) // 2] if ok else 0
    order = sorted(range(len(body)), key=lambda i: (keys[i] is None, keys[i] if keys[i] is not None else med))
    new_body = [body[i] for i in order]
    cfg["profiles"] = [head] + new_body
    for key in ("urls", "storeHouse"):
        arr = cfg.get(key)
        if isinstance(arr, list) and len(arr) == len(profs) and arr:
            cfg[key] = [arr[0]] + [arr[i + 1] for i in order]
    with open(path, "w", encoding="utf-8") as f:
        json.dump(cfg, f, ensure_ascii=False, indent=2)
    report[os.path.relpath(path, ROOT)] = {
        "n": len(profs), "timed": len(ok), "median_ms": round(med, 1),
        "top5": [(p.get("name"), round(ms.get(p.get("url", "")) or -1)) for p in cfg["profiles"][1:6]],
    }
    print(f"profiles ranked: {path} n={len(profs)} timed={len(ok)}")


def rank_sites(path, report):
    if not os.path.exists(path):
        return
    with open(path, encoding="utf-8") as f:
        cfg = json.load(f)
    sites = cfg.get("sites") or []
    if not sites:
        return
    apis = [s.get("api", "") for s in sites]
    http_apis = [a for a in apis if a.startswith("http")]
    ms = timed_ms(http_apis)
    keys = [ms.get(a) if a.startswith("http") else None for a in apis]
    ok = sorted(v for v in keys if v is not None)
    med = ok[len(ok) // 2] if ok else 0
    cfg["sites"] = reorder(sites, keys, med)
    with open(path, "w", encoding="utf-8") as f:
        json.dump(cfg, f, ensure_ascii=False, indent=2)
    report[os.path.relpath(path, ROOT)] = {
        "n": len(sites), "timed": len(ok), "median_ms": round(med, 1),
        "top5": [(s.get("name"), round(ms.get(s.get("api", "")) or -1)) for s in cfg["sites"][:5]],
    }
    print(f"sites ranked: {path} n={len(sites)} timed={len(ok)}")


def main():
    prof_only = "--profiles-only" in sys.argv
    t0 = time.time()
    report = {"generated": time.strftime("%F %T"), "point": "shanhe single-node coarse"}
    for p in MULTIS:
        rank_profiles(p, report)
    if not prof_only:
        for p in SINGLES:
            rank_sites(p, report)
    rp = os.path.join(OUT, "speed_report_shanhe.json")
    with open(rp, "w", encoding="utf-8") as f:
        json.dump(report, f, ensure_ascii=False, indent=2)
    print(f"DONE shanhe coarse rank in {time.time()-t0:.0f}s unique={len(CACHE)}")


if __name__ == "__main__":
    main()
