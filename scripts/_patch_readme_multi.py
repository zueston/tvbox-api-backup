# -*- coding: utf-8 -*-
import io, re

REPO = "zueston/tvbox-api-backup"
COMMIT = "f9974a9ca2fd900a6761a62a70e2625383c07b49"  # 这里替换为实际最新 commit(推送后由外部回填)
path = 'README.md'
s = io.open(path, encoding='utf-8').read()

# 1) 读取子仓报告，生成子仓清单表
rows = []
try:
    rep = io.open('scripts/_multihouse_report.txt', encoding='utf-8').read().splitlines()
    for ln in rep:
        m = re.match(r'\s*(\S+)\s+(\S+)\s+总\s*(\d+)\s+保留\s*(\d+)\s+剔\s*(\d+)\s+jar=(\S+)', ln)
        if m:
            tag, src, tot, kept, drop, jar = m.groups()
            rows.append((tag, src, tot, kept, drop, jar))
except Exception as e:
    print('report read err', e)

house_tbl = ['| 子仓 | 源 | 保留站数 | 剔除(无jar覆盖) | 全局jar |', '|---|---|---|---|---|']
for tag, src, tot, kept, drop, jar in rows:
    if tag.startswith('[跳过'):
        continue
    house_tbl.append('| %s | %s | %s | %s | %s |' % (tag, src, kept, drop, jar))
house_tbl_s = '\n'.join(house_tbl)

FASTLY = "https://fastly.jsdelivr.net/gh/%s@%s/output" % (REPO, COMMIT)
RAW = "https://raw.githubusercontent.com/%s/main" % REPO

multi_block = """
## 分源多仓（每源各用各的 jar —— 根治「爬虫加载失败」）

单一配置文件只能带**一个全局 spider jar**，而不同源的站点需要各自不同的 jar 里的类（例如站点 `csp_FirstAid` 必须有含 `FirstAid` 类的 jar 才能加载）。把所有源塞进一个 single.json，缺类的站一定会报 `ClassNotFoundException: ...FirstAid` =「爬虫加载失败」。

**解决方案：按源拆成多仓（storeHouse）**，每个源一个子仓、各用各的 jar；下不到私有 jar 的站（任何现有 jar 都没有对应类的 288 站）直接剔除。

**多仓订阅地址（推荐，一劳永逸不再「爬虫加载失败」）：**
```
{fastly}/android5/storehouse.json
```
> 用 **fastly.jsdelivr.net 的点 commit 定点地址**（不是 @agg-latest 滚动 tag，也不是 gh-proxy/raw）。
> 原因：影视仓拉订阅时会跟随子仓 URL 取 house_NN.json，若这些地址走 GitHub API（raw/gh-proxy）会撞 **GitHub 匿名限流 60 次/小时**，返回 `{{"message":"API rate limit exceeded"}}` 非 JSON → 解析失败 → 点播空白。
> 子仓内部 `url`（house_NN.json）与 `spider`（jar）已全部改为 **raw.githubusercontent 直连**（家庭宽带走 raw 不撞限流）；顶层 storehouse.json 用 **fastly 点 commit**（走 jsDelivr CDN 不经 GitHub API）。

子仓清单（共 10 个有效子仓，789 站保留 / 288 站因无 jar 覆盖剔除）：
{house_tbl}

说明：多仓里每个子仓都是完整配置，切换线路即切换子仓；每个子仓的 spider 已指向自托管 jar，站点随源就近调用自带/最优 jar，不再统一塞一个 jar。

---
"""

# 在第87行说明段（"订阅地址默认用..."）之前插入 multi_block
anchor = '订阅地址默认用'
idx = s.find(anchor)
if idx < 0:
    # 尝试其它锚点
    anchor2 = '## 直播源地址'
    idx = s.find(anchor2)
    if idx >= 0:
        s = s[:idx] + multi_block.format(fastly=FASTLY, house_tbl=house_tbl_s) + s[idx:]
        print('inserted before live section')
else:
    s = s[:idx] + multi_block.format(fastly=FASTLY, house_tbl=house_tbl_s) + s[idx:]
    print('inserted before 订阅地址默认说明')

io.open(path, 'w', encoding='utf-8').write(s)
print('README new len', len(s))
