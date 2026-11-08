# -*- coding: utf-8 -*-
"""README 生成器（幂等）：
1) 订阅地址节：点播 干净版4条 + 要验证版4条 + 直播双清单，按固定版式；
2) 直播源地址节：读 output/live_sources.txt 全量；
3) 需看广告/验证的线路节：读 output/live_verify_table.md；
4) 顺带产出 output/live_direct.txt / output/live_ad.txt（直播分池）。
依赖顺序：collect_merge.py → classify_live.py → 本脚本。"""
import io, re, os

README = "README.md"
LIVES = "output/live_sources.txt"
PROBE = "output/live_probe.json"
VERIFY = "output/live_verify_table.md"

REPO = "zueston/tvbox-api-backup"
CDN = "https://cdn.jsdelivr.net/gh"
BASE = f"{CDN}/{REPO}@main/output"

def need_verify(r):
    return r["kind"] in ("HTML", "FAIL", "ODD") or (r["kind"] in ("M3U", "TXT") and r["marks"])

def live_lists(rows, recs):
    """rows: [(name,url,origin)]; recs: live_probe.json 记录（可能缺）"""
    by_url = {r["url"]: r for r in recs}
    direct, ad = [], []
    for n, u, o in rows:
        r = by_url.get(u)
        (ad if r and need_verify(r) else direct).append((n, u, o))
    with io.open("output/live_direct.txt", "w", encoding="utf-8", newline="\n") as f:
        f.write("# 直播源·可直接订阅 %d 条\n" % len(direct))
        for n, u, o in direct:
            f.write(f"{n}\t{u}\t{o}\n")
    with io.open("output/live_ad.txt", "w", encoding="utf-8", newline="\n") as f:
        f.write("# 直播源·需看广告/验证 %d 条\n" % len(ad))
        for n, u, o in ad:
            f.write(f"{n}\t{u}\t{o}\n")
    return direct, ad

def main():
    os.chdir(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    rows = []
    with io.open(LIVES, encoding="utf-8") as f:
        for line in f:
            line = line.rstrip("\n")
            if not line or line.startswith("#"):
                continue
            parts = line.split("\t")
            if len(parts) >= 2 and parts[1].startswith(("http://", "https://")):
                rows.append((parts[0], parts[1], parts[2] if len(parts) > 2 else ""))

    recs = []
    try:
        import json
        recs = json.load(io.open(PROBE, encoding="utf-8"))
    except Exception:
        pass
    direct, ad = live_lists(rows, recs)

    sub_block = f"""## 订阅地址（jsDelivr CDN 优先，`@main` 必带）

点播·干净版（无广告验证线路）
```
安卓5+ 多仓   {BASE}/android5/multi.json
安卓5+ 单仓   {BASE}/android5/single.json
安卓4  多仓   {BASE}/android4/multi.json
安卓4  单仓   {BASE}/android4/single.json
```

点播·要验证版（源站反爬/导航页/落地页线路，独立一档）
```
安卓5+ 多仓   {BASE}/android5/multiad.json
安卓5+ 单仓   {BASE}/android5/singlead.json
安卓4  多仓   {BASE}/android4/multiad.json
安卓4  单仓   {BASE}/android4/singlead.json
```

直播源
```
可直连({len(direct)}条)      {BASE}/live_direct.txt
```
要验证
```
需广告/验证({len(ad)}条)   {BASE}/live_ad.txt
```

| 用途 | 安卓5+ | 安卓4 |
|---|---|---|
| 多仓订阅（影视仓类填这个） | `output/android5/multi.json` | `output/android4/multi.json` |
| 聚合单仓（所有软件通用） | `output/android5/single.json` | `output/android4/single.json` |
| 多仓·要验证版 | `output/android5/multiad.json` | `output/android4/multiad.json` |
| 单仓·要验证版 | `output/android5/singlead.json` | `output/android4/singlead.json` |
| 直播·可直连 | `output/live_direct.txt` | 同左（不分版本） |
| 直播·需验证 | `output/live_ad.txt` | 同左（不分版本） |

`@main` 不能省：仓库没打 release tag 时 jsDelivr 缺它会 404。`cdn.jsdelivr.net` 在部分运营商线路被污染解析失败时，把前缀换成 `https://fastly.jsdelivr.net/gh/zueston/tvbox-api-backup@main/output/...`（同路径，实测全 200）。原始地址：`https://raw.githubusercontent.com/zueston/tvbox-api-backup/main/output/...`
"""

    name_w = max(len(n) for n, _, _ in rows)
    list_block = "\n".join(f"{n:<{name_w}}  {u}" for n, u, _ in rows)
    live_section = (
        "## 直播源地址（完整 %d 条，独立直播订阅）\n\n"
        "**不分安卓4 / 安卓5+**：以下均为 m3u/txt 的 HTTP 订阅地址，走普通网络请求，"
        "旧内核同样可拉。填 IPTV 播放器、TVBox/影视仓的直播地址，或 `single.json` 的 `lives` 都从这里取。"
        "其中 %d 条需过广告/验证（见下表与 `output/live_ad.txt`），其余 %d 条可直连（`output/live_direct.txt`）。\n\n"
        "```\n%s```\n\n"
        "同步文件：`output/live_sources.txt`（格式 `名称<TAB>URL<TAB>来源`），每日 Actions 自动重测活更新。\n"
    ) % (len(rows), len(ad), len(direct), list_block + "\n")

    verify_section = ""
    try:
        with io.open(VERIFY, encoding="utf-8") as f:
            vtxt = f.read().strip()
        if vtxt:
            verify_section = (
                "## 需看广告/验证的线路（单独列出）\n\n"
                "下列直播线路直接打开是**广告中间页、授权注册公告、网盘/图床落地页或已失效**，"
                "需在浏览器/微信里过一道验证才能拿到真实源；其余线路可直接当订阅用。\n\n%s\n\n"
                "判定脚本：`scripts/classify_live.py`（产物 `output/live_probe.json`），每日随 Actions 更新。\n"
            ) % vtxt
    except IOError:
        pass

    with io.open(README, encoding="utf-8") as f:
        text = f.read()

    # 幂等移除旧节
    text = re.sub(r"## 直播源地址.*?(?=\n## |\Z)", "", text, flags=re.S)
    text = re.sub(r"## 需看广告/验证的线路.*?(?=\n## |\Z)", "", text, flags=re.S)
    text = re.sub(r"## 订阅地址.*?(?=\n## |\Z)", "", text, flags=re.S)

    anchor = "## 哪些软件支持多仓、哪些支持单仓"
    if anchor in text:
        text = text.replace(anchor, sub_block + "\n" + live_section
                            + ("\n" + verify_section if verify_section else "") + "\n" + anchor, 1)
    else:
        text = text.rstrip("\n") + "\n\n" + sub_block + "\n" + live_section \
               + ("\n\n" + verify_section if verify_section else "")

    with io.open(README, "w", encoding="utf-8", newline="\n") as f:
        f.write(text)
    print("OK rows=%d direct=%d ad=%d readme_bytes=%d" % (
        len(rows), len(direct), len(ad), len(text.encode("utf-8"))))

if __name__ == "__main__":
    main()
