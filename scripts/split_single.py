# -*- coding: utf-8 -*-
"""Split ranked single-repo configs into N chunks so each subscription stays light.

android5/single.json has 1200+ sites; TV boxes lag when importing that many.
speed_rank.py already ordered sites fast-first, so we slice in that order:
chunk 1 = fastest ~316, chunk 2 = next ~316, ... Each chunk keeps every global
field (spider/parses/lives/rules/wallpaper/logo/hosts/doh/ads...) intact and
is a fully usable standalone single-repo config.

Usage: python scripts/split_single.py [chunk_size] [max_parts]
  chunk_size: target sites per part (default 300)
  max_parts : cap on part count (default 4) -- remainder is spread evenly so
              all sites stay covered with exactly max_parts links when needed.
Only files whose site count exceeds chunk_size get split; smaller configs
(android4/single at ~200 sites) stay as-is and stale p-files are removed.

Outputs: output/android5/single_p1.json ... single_pN.json
"""
import io
import json
import math
import os
import sys

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SOURCES = [
    os.path.join(BASE, "output", "android5", "single.json"),
    os.path.join(BASE, "output", "android4", "single.json"),
]


def split_one(path: str, size: int, max_parts: int):
    with io.open(path, encoding="utf-8") as f:
        cfg = json.load(f)
    sites = cfg.get("sites", [])
    total = len(sites)
    d0 = os.path.dirname(path)

    def clean_stale(parts):
        for fn in sorted(os.listdir(d0)):
            if fn.startswith("single_p") and fn.endswith(".json"):
                idx = int(fn[len("single_p"):-len(".json")])
                if idx > parts:
                    os.remove(os.path.join(d0, fn))

    if total <= size:  # light enough, no split
        clean_stale(0)
        return total, 0, []
    parts = min(max(1, math.ceil(total / size)), max_parts)
    per = math.ceil(total / parts)  # balanced: 1263/4 -> 316
    out = []
    for i in range(parts):
        piece = dict(cfg)  # keep all global fields: spider/parses/lives/rules/...
        piece["sites"] = sites[i * per:(i + 1) * per]
        piece["//"] = "%s | 分段%d/%d | %d站(按测速排序)" % (
            cfg.get("//", "四源聚合单仓"), i + 1, parts, len(piece["sites"]))
        ppath = os.path.join(d0, "single_p%d.json" % (i + 1))
        with io.open(ppath, "w", encoding="utf-8") as f:
            json.dump(piece, f, ensure_ascii=False, indent=1)
        out.append(("single_p%d.json" % (i + 1), len(piece["sites"])))
    clean_stale(parts)
    return total, parts, out


def main():
    size = int(sys.argv[1]) if len(sys.argv) > 1 else 300
    max_parts = int(sys.argv[2]) if len(sys.argv) > 2 else 4
    for path in SOURCES:
        if not os.path.exists(path):
            continue
        total, parts, files = split_one(path, size, max_parts)
        if parts == 0:
            print("%s: %d sites <= %d, no split" % (
                os.path.relpath(path, BASE), total, size))
        else:
            print("%s: %d sites -> %d parts %s" % (
                os.path.relpath(path, BASE), total, parts,
                ", ".join("%s=%d" % fe for fe in files)))


if __name__ == "__main__":
    main()
