# -*- coding: utf-8 -*-
"""把 output/live_sources.txt 全部 78 条独立直播源完整地址写进 README「直播源地址」节，
并整理「订阅地址」节顺序（代码块→表格→备注→直播节）。"""
import io, re

ROOT = __file__.rsplit("/", 2)[0] if "/" in __file__ else "."
README = "README.md"
LIVES = "output/live_sources.txt"

def main():
    rows = []
    with io.open(LIVES, encoding="utf-8") as f:
        for line in f:
            line = line.rstrip("\n")
            if not line or line.startswith("#"):
                continue
            parts = line.split("\t")
            if len(parts) >= 2 and parts[1].startswith(("http://", "https://")):
                rows.append((parts[0], parts[1]))
    name_w = max(len(n) for n, _ in rows)
    list_block = "\n".join(f"{n:<{name_w}}  {u}" for n, u in rows)

    with io.open(README, encoding="utf-8") as f:
        text = f.read()

    # 1) 移除旧的直播节（标题到下一个 ## 之前）
    text = re.sub(r"## 直播源地址.*?(?=\n## |\Z)", "", text, flags=re.S)

    # 2) 移除现有表格+备注块，准备按新顺序重排
    m = re.search(r"\|\s*用途.*?\n\n`@main`.*?\n", text, flags=re.S)
    table_note = ""
    if m:
        table_note = m.group(0).rstrip("\n")
        text = text[: m.start()] + text[m.end():]

    live_section = (
        "## 直播源地址（完整 %d 条，独立直播订阅）\n\n"
        "**不分安卓4 / 安卓5+**：以下均为 m3u/txt 的 HTTP 订阅地址，走普通网络请求，"
        "旧内核同样可拉。填 IPTV 播放器、TVBox/影视仓的直播地址，或 `single.json` 的 `lives` 都从这里取。\n\n"
        "```\n%s\n```\n\n"
        "同步文件：`output/live_sources.txt`（格式 `名称<TAB>URL<TAB>来源`），每日 Actions 自动重测活更新。\n"
    ) % (len(rows), list_block)

    # 广告/验证线路表（classify_live.py 产物）
    verify_section = ""
    try:
        with io.open("output/live_verify_table.md", encoding="utf-8") as f:
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
    text = re.sub(r"## 需看广告/验证的线路.*?(?=\n## |\Z)", "", text, flags=re.S)

    anchor = "## 哪些软件支持多仓、哪些支持单仓"
    if anchor in text:
        text = text.replace(anchor, live_section + ("\n" + verify_section if verify_section else "") + "\n" + anchor, 1)
    else:
        text = text.rstrip("\n") + "\n\n" + live_section + ("\n\n" + verify_section if verify_section else "")

    # 3) 表格+备注放回「订阅地址」代码块之后
    if table_note:
        cb_end = re.search(r"(订阅地址[^\n]*\n\n```\n.*?\n```\n)", text, flags=re.S)
        if cb_end:
            i = cb_end.end()
            text = text[:i] + "\n" + table_note + "\n\n" + text[i:]

    with io.open(README, "w", encoding="utf-8", newline="\n") as f:
        f.write(text)
    print("OK rows=%d readme_bytes=%d" % (len(rows), len(text.encode("utf-8"))))

if __name__ == "__main__":
    main()
