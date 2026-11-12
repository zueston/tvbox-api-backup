# -*- coding: utf-8 -*-
"""speed_rank.py — 给多仓的每条线路、单仓的每个站点实测速度，快的排前面。

Phase A: 多仓 profiles（含 urls/storeHouse 平行数组）按线路整包下载耗时排序，
         第一条自家(索引0)固定不动；测不通的按中位耗时插中间。
Phase B: 单仓 sites 按 api(http(s) 开头，含 type=3 的 JS 文件) GET 耗时排序；
         csp_/相对路径 api 不可测 → 按中位耗时插中间，保持原有相对顺序。
结果写 output/speed_report.json。所有重排只动顺序，不增删任何条目。
"""
import io
import json
import os
import ssl
import time
import urllib.request
from concurrent.futures import ThreadPoolExecutor

os.chdir(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

CTX = ssl.create_default_context()
CTX.check_hostname = False
CTX.verify_mode = ssl.CERT_NONE
BOX_UA = "okhttp/3.11"
BROWSER_UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"

MULTIS = [
    "output/android5/multi.json",
    "output/android5/multiad.json",
    "output/android4/multi.json",
    "output/android4/multiad.json",
]
SINGLES = [
    "output/android5/single.json",
    "output/android5/singlead.json",
    "output/android4/single.json",
    "output/android4/singlead.json",
]

CACHE = {}          # url -> ms|None（跨文件共享，只测一次）
CACHE_LOCK = __import__("threading").Lock()


def timed_get(url, max_read, timeout):
    t0 = time.time()
    req = urllib.request.Request(url, headers={"User-Agent": BOX_UA})
    r = urllib.request.urlopen(req, timeout=timeout, context=CTX)
    r.read(max_read)
    r.close()
    return int((time.time() - t0) * 1000)


def fetch_ms(url, max_read=65536, timeout=10):
    if not url or not str(url).startswith(("http://", "https://")):
        return None
    with CACHE_LOCK:
        if url in CACHE:
            return CACHE[url]
    ms = None
    last = None
    for attempt in range(2):
        try:
            ms = timed_get(url, max_read, timeout)
            break
        except Exception as ex:
            last = ex
            time.sleep(0.6)
        # box-UA 失败再用浏览器 UA 试一次（同轮）
        try:
            t0 = time.time()
            req = urllib.request.Request(url, headers={"User-Agent": BROWSER_UA})
            r = urllib.request.urlopen(req, timeout=timeout, context=CTX)
            r.read(max_read)
            r.close()
            ms = int((time.time() - t0) * 1000)
            break
        except Exception as ex:
            last = ex
    with CACHE_LOCK:
        CACHE[url] = ms
    return ms


def median(vals):
    vals = sorted(v for v in vals if v is not None)
    return vals[len(vals) // 2] if vals else 0


def load(path):
    return json.load(io.open(path, encoding="utf-8"))


def save(path, data):
    with io.open(path, "w", encoding="utf-8", newline="\n") as f:
        json.dump(data, f, ensure_ascii=False, indent=2)


def rank_profiles(path, report):
    d = load(path)
    profs = d.get("profiles") or []
    urls = d.get("urls") or []
    houses = d.get("storeHouse") or []
    n = len(profs)
    if not (len(urls) == n and len(houses) == n):
        print("skip %s: parallel arrays mismatch" % path)
        return
    with ThreadPoolExecutor(max_workers=16) as ex:
        mss = list(ex.map(lambda p: fetch_ms(p["url"], 300 * 1024, 12), profs[1:]))
    med = median(mss)
    rest = sorted(
        [(i + 1, profs[i + 1], urls[i + 1], houses[i + 1], mss[i]) for i in range(n - 1)],
        key=lambda it: (it[4] if it[4] is not None else med, it[0]),
    )
    new = [(0, profs[0], urls[0], houses[0], mss and None)] + rest
    d["profiles"] = [x[1] for x in new]
    d["urls"] = [x[2] for x in new]
    d["storeHouse"] = [x[3] for x in new]
    save(path, d)
    report["profiles"][os.path.basename(os.path.dirname(path)) + "/" + os.path.basename(path)] = {
        "n": n,
        "timed": sum(1 for x in new[1:] if x[4] is not None),
        "top5": [(x[1]["name"], x[4]) for x in new[:6]],
    }
    print("profiles ranked %s n=%d timed=%d" % (path, n, sum(1 for x in new[1:] if x[4] is not None)))


def rank_sites(path, report):
    d = load(path)
    sites = d.get("sites") or []
    testable = [s.get("api") for s in sites if str(s.get("api", "")).startswith(("http://", "https://"))]
    uniq = list(dict.fromkeys(testable))
    with ThreadPoolExecutor(max_workers=24) as ex:
        list(ex.map(lambda u: fetch_ms(u, 65536, 8), uniq))
    mss = [CACHE.get(s.get("api")) for s in sites]
    med = median(mss)
    order = sorted(
        range(len(sites)),
        key=lambda i: (mss[i] if mss[i] is not None else med, i),
    )
    d["sites"] = [sites[i] for i in order]
    save(path, d)
    report["sites"][os.path.basename(os.path.dirname(path)) + "/" + os.path.basename(path)] = {
        "n": len(sites),
        "timed": sum(1 for m in mss if m is not None),
        "median_ms": med,
        "top10": [(sites[i]["name"], mss[i]) for i in order[:10]],
    }
    print("sites ranked %s n=%d timed=%d med=%s" % (path, len(sites), sum(1 for m in mss if m is not None), med))


def main():
    t0 = time.time()
    report = {"generated": time.strftime("%Y-%m-%d %H:%M:%S"), "profiles": {}, "sites": {}}
    for p in MULTIS:
        if os.path.exists(p):
            rank_profiles(p, report)
    for p in SINGLES:
        if os.path.exists(p):
            rank_sites(p, report)
    with io.open("output/speed_report.json", "w", encoding="utf-8", newline="\n") as f:
        json.dump(report, f, ensure_ascii=False, indent=2)
    print("DONE in %.1fs, unique urls tested=%d" % (time.time() - t0, len(CACHE)))


if __name__ == "__main__":
    main()
