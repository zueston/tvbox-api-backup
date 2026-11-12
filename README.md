# tvbox-api-backup（四源聚合版）

聚合四个上游的 TVBox 直播/点播接口源，去重测活后按 **安卓4 兼容** 与 **安卓5+** 两套输出。

## 上游

| 来源 | 内容 |
|---|---|
| [lubin776/tvbox-api-backup](https://github.com/lubin776/tvbox-api-backup) | api_list.json 接口清单 + livelist.txt 直播备份 |
| [Lightconer/tvbox-ysc-config](https://github.com/Lightconer/tvbox-ysc-config) | config/sources.json 影视仓 10 源 |
| [25175/tvyuan](https://github.com/25175/tvyuan) | sources.txt 带测速 93 条 + tvbox_multi.json |
| [聚玩盒子 jsonlist](https://www.juwanhezi.com/jsonlist) | 单仓/多仓全量线路（ajax 分页抓取） |















## 订阅地址（jsDelivr CDN 优先，`@agg-latest` 必带）

点播·干净版（无验证门；普通广告源在此档，盒子 AI 规则可自动去广告）
```
安卓5+ 多仓   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/multi.json
安卓5+ 单仓   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/single.json
安卓4  多仓   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android4/multi.json
安卓4  单仓   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android4/single.json
```

安卓5+ 单仓·分段版（站点太多嫌卡就订这些：干净全量按测速排序切成4段，只订1-2段最轻）
```
第1段·最快   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/single_p1.json
第2段       https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/single_p2.json
第3段       https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/single_p3.json
第4段·长尾   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/single_p4.json
```

分区订阅（从干净版里单独抽出来的专区，按需订）
```
成人专区(隔离)        https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/single_p5.json
教育/少儿专区         https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/single_p6.json
体育专区               https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/single_p7.json
```

点播·要验证版（仅带「接口验证」门弹窗的线路，需手动领验证码，独立一档）
```
安卓5+ 多仓   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/multiad.json
安卓5+ 单仓   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android5/singlead.json
安卓4  多仓   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android4/multiad.json
安卓4  单仓   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/android4/singlead.json
```

直播源
```
可直连(63条)      https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/live_direct.txt
```
要验证
```
需广告/验证(17条)   https://testingcf.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/live_ad.txt
```

| 用途 | 安卓5+ | 安卓4 |
|---|---|---|
| 多仓订阅（影视仓类填这个） | `output/android5/multi.json` | `output/android4/multi.json` |
| 聚合单仓（所有软件通用） | `output/android5/single.json` | `output/android4/single.json` |
| 多仓·要验证版 | `output/android5/multiad.json` | `output/android4/multiad.json` |
| 单仓·要验证版 | `output/android5/singlead.json` | `output/android4/singlead.json` |
| 单仓·分段1-4（嫌卡选订） | `output/android5/single_p1..p4.json` | 无需（不切） |
| 成人专区（隔离） | `output/android5/single_p5.json` | 同左（不分版本） |
| 教育/少儿专区 | `output/android5/single_p6.json` | 同左（不分版本） |
| 体育专区 | `output/android5/single_p7.json` | 同左（不分版本） |
| 直播·可直连 | `output/live_direct.txt` | 同左（不分版本） |
| 直播·需验证 | `output/live_ad.txt` | 同左（不分版本） |

`@agg-latest` 不能省：这是每周更新自动移动的滚动 tag，jsDelivr 对 tag 缓存**不可变、推送即新鲜**（`@main` 分支缓存会陈旧数小时，导致盒子拿到旧配置——乱码/验证门都是这么来的）。

**盒子提示「配置获取失败」时按顺序换前缀**（同路径替换即可，文件内容完全一致）：
1. `https://gcore.jsdelivr.net/gh/zueston/tvbox-api-backup@agg-latest/output/...`
2. `https://gh-proxy.com/https://raw.githubusercontent.com/zueston/tvbox-api-backup/main/output/...`（GitHub 直连被墙时用，大文件略慢）
3. 原始地址 `https://raw.githubusercontent.com/zueston/tvbox-api-backup/main/output/...`（需科学环境）
`cdn.jsdelivr.net` 主域在部分运营商线路被 DNS 污染解析失败；`fastly.jsdelivr.net` 边缘缓存对更新**极顽固**（purge 报成功也不刷，实测会陈旧一天以上），故本仓库默认前缀用 `testingcf.jsdelivr.net`（实测推送即新鲜），fastly 仅作兜底。

## 直播源地址（完整 80 条，独立直播订阅）

**不分安卓4 / 安卓5+**：以下均为 m3u/txt 的 HTTP 订阅地址，走普通网络请求，旧内核同样可拉。填 IPTV 播放器、TVBox/影视仓的直播地址，或 `single.json` 的 `lives` 都从这里取。其中 17 条需过广告/验证（见下表与 `output/live_ad.txt`），其余 63 条可直连（`output/live_direct.txt`）。

```
APTV          https://wget.la/https://github.com/Kimentanm/aptv/raw/master/m3u/iptv.m3u
B站直播          https://sub.ottiptv.cc/bililive.m3u
B站直播1线        https://file.icve.com.cn/file_doc/220/1003/370FAE41BD301F89BA1FCD6FDB8D5BD6.m3u
B站直播2线        https://ztha.top/TVBox/lib/bililive.m3u
EPG直播         http://gh-proxy.org/https://raw.githubusercontent.com/Wirili/IPTV/main/live.txt
FMMIPV6       https://m3u.ibert.me/txt/fmml_ipv6.txt
Guovin        https://raw.githubusercontent.com/Guovin/iptv-api/gd/output/result.m3u
Kimentanm     https://raw.githubusercontent.com/Kimentanm/aptv/master/m3u/iptv.m3u
Kimentanm3线   https://ztha.top/TVBox/lib/iptv.m3u
Kimentanm4线   https://ghfast.top/https://raw.githubusercontent.com/Kimentanm/aptv/master/m3u/iptv.m3u
MV            https://ztha.top/TVBox/tv/MV.txt
PPV体育赛事直播     https://jsnzkpg4.pages.dev/https://www.korice.eu.org/ppv_m3u.php
YY轮播          https://sub.ottiptv.cc/yylunbo.m3u
YY轮播1线        https://file.icve.com.cn/file_doc/178/700/2C9AF1F98DBC1523826C0CD4DA8D8947.m3u
YY轮播2线        https://ztha.top/TVBox/lib/yylunbo.m3u
YanG1线        https://gh-proxy.org/https://raw.githubusercontent.com/YanG-1989/m3u/main/Gather.m3u
cluntop       https://clun.top/lib/iptv.m3u
cluntoptest   https://clun.top/lib/iptv_test.m3u
develop202    https://gh-proxy.org/https://raw.githubusercontent.com/develop202/migu_video/refs/heads/main/interface.txt
develop2021线  https://ztha.top/TVBox/lib/interface.txt
gambiarras    https://raw.githubusercontent.com/gambiarras/legal-iptv/refs/heads/main/playlist.m3u
live1线        http://xhztv.top/xhz/live.txt
mlzlzj        https://raw.githubusercontent.com/mlzlzj/TV/main/output/result.m3u
suxuang       https://raw.githubusercontent.com/suxuang/myIPTV/main/ipv4.m3u
yuan          http://wangziduoqing.com/yuan/zb.txt
世界杯           https://ztha.top/TVBox/lib/fwc.m3u
乌拉TV直播        https://jsnzkpg4.pages.dev/https://ilook.epg.one/5CM5SY98BF24PL/2
优选            https://gh-proxy.com/raw.githubusercontent.com/zhoujck/config/main/ext/live.txt
全球            http://xingioe.top/down.php/82d0754d79de3be03e9b63e4d2d96818.jpg
全球TV直播        https://jsnzkpg4.pages.dev/https://iptv-org.github.io/iptv/index.m3u
初秋语           https://gh-proxy.com/raw.githubusercontent.com/gaotianliuyun/gao/master/list.txt
华视TV直播        https://445569.pages.dev/https://raw.githubusercontent.com/swhtv/111/refs/heads/main/华视box华视大全swtv
南风直播源         https://gh-proxy.com/https://raw.githubusercontent.com/yoursmile66/TVBox/main/live.txt
咪咕            https://develop202.github.io/migu_video/interface.txt
咪咕TV直播        https://eastscreen.tv/iptvlist.php?token=N1pcBwAGHwkCAx8OTFhABgEFAA
地方台直播         https://sd.shandong.bbroot.com/xk/zb.txt
夜空1           https://pan.29o.cn/down.php/aa846bceb7a1b4adb0385b1f61b192e8.txt
央视频           https://mpimg.cn/down.php/caac7a6dae8f835257a11e7a11291bf2.txt
尘墨            https://52xiaobai.cn/ceshi/zb.php
应该能看          https://gh-proxy.org/raw.githubusercontent.com/vinkerq/iptv-api/refs/heads/master/iptv.txt
很少            https://mpimg.cn/down.php/fa04b02ffac54ac877f5250d3d70e494.txt
手动不知何时更新      https://szyyds.cn/tv/live/x.txt
挺好直播          https://ztha.top/TVBox/tv/thtv.txt
斗鱼一起看         https://sub.ottiptv.cc/douyuyqk.m3u
斗鱼一起看1线       https://file.icve.com.cn/file_doc/254/346/3FB56B2C49DF92B3252352FBE5CD00F1.m3u
斗鱼一起看2线       https://ztha.top/TVBox/lib/douyuyqk.m3u
易发TV直播        https://445569.pages.dev/https://raw.githubusercontent.com/fafa002/yf2025/refs/heads/main/yiyifafa.txt
有效期27年7月      http://m.szyyds.cn/api.php?token=8664f352657e8b13585bcf0f84fc3512
歌手直播          https://mgtv.ottiptv.cc/mglist.m3u
没4K           https://mpimg.cn/text.php?hash=7265d70b6834cefbddb61bcc2d9c99db
游魂            https://www.iyouhun.com/tv/zb
电视直播          http://gh-proxy.org/raw.githubusercontent.com/Supprise0901/TVBox_live/main/live.txt
移动            https://gh-proxy.com/raw.githubusercontent.com/zhoujck/config/main/ext/移动
线路            http://www.52top.com.cn:678/downloads/migu.txt
经典电视剧         https://wp.kayyw.com/f/XOpgIZ/%E7%BB%8F%E5%85%B8%E7%94%B5%E8%A7%86%E5%89%A7.txt
综合直播1线        http://193.123.86.190:14888/TV/iptv.php
综合直播2线        https://ghfast.top/https://raw.githubusercontent.com/develop202/migu_video/refs/heads/main/interface.txt
联通            https://gh-proxy.com/raw.githubusercontent.com/zhoujck/config/main/ext/联通
范明明           https://live.fanmingming.cn/tv/m3u/ipv6.m3u
范明明需开启V6网络    https://nos.netease.com/ysf/3d75a78a0fc7ede372c03598d6d10367.m3u
范明明需开启V6网络1线  https://ztha.top/TVBox/lib/3d75a78a0fc7ede372c03598d6d10367.m3u
虎牙一起看         https://sub.ottiptv.cc/huyayqk.m3u
虎牙一起看1线       https://file.icve.com.cn/file_doc/946/41/ECB0A5FBED1D8C4D4E049E95DB9F756F.m3u
虎牙一起看2线       https://ztha.top/TVBox/lib/huyayqk.m3u
裤佬IPTV直播      https://iptv.445569.xyz/live.m3u
裤佬TikTok直播    https://tiktok.445569.xyz/live.m3u
裤佬Twitch直播    https://twitch.445569.xyz/live.m3u
裤佬YY直播        https://yy.445569.xyz/live.m3u
裤佬体育直播        https://jsnzkpg.de5.net/all.m3u
裤佬体育直播备       https://stymei.pages.dev/live.m3u
裤佬快手直播        https://kuaishou.445569.xyz/list.m3u
裤佬抖音直播        https://douyin.445569.xyz/live.m3u
裤佬斗鱼直播        https://douyu.445569.xyz/live.m3u
裤佬来疯直播        https://laifeng.445569.xyz/live.m3u
裤佬百战直播        https://baizhan.445569.xyz/live.m3u
裤佬虎牙直播        https://yahu.445569.xyz/live.m3u
裤佬虎牙直播        https://huya.445569.xyz/live.m3u
裤佬酷狗直播        https://kugou.445569.xyz/live.m3u
韩国Panda直播     https://jsnzkpg4.pages.dev/https://xiongmao.caonizuzong.indevs.in/all.m3u
音乐所           https://szyyds.cn/tv/live/yy.txt
```

同步文件：`output/live_sources.txt`（格式 `名称<TAB>URL<TAB>来源`），每周日 Actions 自动重测活更新。

## 需看广告/验证的线路（单独列出）

下列直播线路直接打开是**广告中间页、授权注册公告、网盘/图床落地页或已失效**，需在浏览器/微信里过一道验证才能拿到真实源；其余线路可直接当订阅用。

以下 17 条**不能直接当订阅地址填**（或浏览器打开需先过中间页），其余 63 条可直连。

| 名称 | 类型 | 判定 | 完整地址 |
|---|---|---|---|
| 乌拉TV直播 | HTML | 网页/验证页 | `https://jsnzkpg4.pages.dev/https://ilook.epg.one/5CM5SY98BF24PL/2` |
| 全球 | HTML | 网页/验证页（SPA空壳） | `http://xingioe.top/down.php/82d0754d79de3be03e9b63e4d2d96818.jpg` |
| 咪咕TV直播 | HTML | 网页/验证页 | `https://eastscreen.tv/iptvlist.php?token=N1pcBwAGHwkCAx8OTFhABgEFAA` |
| 尘墨 | HTML | 网页/验证页（授权/注册公告/JS跳转/倒计时） | `https://52xiaobai.cn/ceshi/zb.php` |
| Kimentanm4线 | FAIL | 拉取失败 | `https://ghfast.top/https://raw.githubusercontent.com/Kimentanm/aptv/master/m3u/iptv.m3u` |
| yuan | FAIL | 拉取失败 | `http://wangziduoqing.com/yuan/zb.txt` |
| 咪咕 | FAIL | 拉取失败 | `https://develop202.github.io/migu_video/interface.txt` |
| 地方台直播 | FAIL | 拉取失败 | `https://sd.shandong.bbroot.com/xk/zb.txt` |
| 综合直播2线 | FAIL | 拉取失败 | `https://ghfast.top/https://raw.githubusercontent.com/develop202/migu_video/refs/heads/main/interface.txt` |
| 范明明 | FAIL | 拉取失败 | `https://live.fanmingming.cn/tv/m3u/ipv6.m3u` |
| 裤佬虎牙直播 | FAIL | 拉取失败 | `https://huya.445569.xyz/live.m3u` |
| 裤佬酷狗直播 | FAIL | 拉取失败 | `https://kugou.445569.xyz/live.m3u` |
| 夜空1 | TXT | 源可直连，网页打开是网盘下载页/网盘域 | `https://pan.29o.cn/down.php/aa846bceb7a1b4adb0385b1f61b192e8.txt` |
| 央视频 | M3U | 源可直连，网页打开是网盘下载页 | `https://mpimg.cn/down.php/caac7a6dae8f835257a11e7a11291bf2.txt` |
| 很少 | TXT | 源可直连，网页打开是网盘下载页 | `https://mpimg.cn/down.php/fa04b02ffac54ac877f5250d3d70e494.txt` |
| 有效期27年7月 | M3U | 源可直连，网页打开是带token参数 | `http://m.szyyds.cn/api.php?token=8664f352657e8b13585bcf0f84fc3512` |
| 没4K | TXT | 源可直连，网页打开是图床哈希页 | `https://mpimg.cn/text.php?hash=7265d70b6834cefbddb61bcc2d9c99db` |

判定脚本：`scripts/classify_live.py`（产物 `output/live_probe.json`），每周随 Actions 更新。

## 哪些软件支持多仓、哪些支持单仓

按 TVBox 系壳子的实际能力（多仓 / 多线路 / 单接口三者关系参考恩山论坛 [TVBox多仓接口分享](https://www.right.com.cn/forum/archiver/tid-8352531.html)：多仓=多个单仓，多线路=一个仓库内含多条线路，单接口=单线路全软件通用）：

1. **单仓（`single.json`）＝单接口，所有 TVBox 系软件通用**：TVBox 原版及全部衍生版（oq0tv、黑盒、Biu 等）、影视仓、OK影视/FM影视/521影视、Catbox、巧盒、月光宝盒、影迷等——设置里"配置地址/接口地址"直接填。
2. **多仓（`multi.json`，storeHouse 形态）＝订阅仓库，只有带"多仓订阅"入口的壳支持**：影视仓及其修改版（Player、讴歌仓等）、Catbox、MBox 竖屏开源版、影音壳子、影迷、easybox、巧盒、月光宝盒等（设置里有"订阅仓库/多仓地址"入口的都可以）。**TVBox 原版和黑盒不支持**，往配置地址填多仓会报错或空白，这类软件请用 `single.json`。
3. **多线路**：OK影视/FM影视/521影视 另支持"多线路"形态，本仓库 `multi.json` 顶层同时带 `urls` 数组字段，这类软件也能直接吃。

## 安卓4 / 安卓5+ 区分规则

- **安卓5+ single**：保留全部站点（含 `csp:` Jar 爬虫）、解析 type2、全局 jar/spider/ijk 配置。
- **安卓4 single**：剔除 `type==3`、`api/spider` 以 `csp:`/`assets:`/`jar:` 开头的站点（旧内核跑不了 Jar 爬虫）、剔除 `type==2` 解析、剔除无 url 直播行、不写全局 jar/spider；选源名额扩大到 3 倍并用"空源不占名额"策略补足有效站点。
- **点播分池规则**：只有**带「接口验证」门弹窗**的源（仓库主机或配置 jar/spider 命中 guot55 宝盒系 / bhh.indevs.in / iyouhun / 124.223.214.31 黑名单）才进要验证版；普通广告源、反爬导航页、base64 混淆配置**都留在干净版**——广告由盒子端 AI 规则自动过滤，不需要用户手动过。要验证版内保留门站点与门 jar（那一档就是给愿意领验证码的人准备的）。
- **multi**：干净版=全量存活非门源（80 条），要验证版=自家门仓单仓+门源（8 条）；两套 profiles[0] 都是自家聚合单仓且 home 指向它（影视仓自动激活第一条，保证打开就有内容）。

## 去重与测活

- URL 规范化：剥 `gh-proxy.*` 前缀、jsDelivr→raw、`raw.github.com`→`raw.githubusercontent.com`、host 小写、去尾斜杠，同一规范化键只保留一条并合并来源标记。
- 16 线程并发测活：HTTP 200 + 体积 >50B，`.json` 结尾额外校验可解析；聚玩盒子当日已测活的仍照常探内容量（兜底算活）。
- **盒子反爬适配**（饭太硬类源站）：浏览器 UA 拿到导航页/HTML 时自动用 `okhttp/3.11` 盒子 UA 重试；支持 JPEG+尾部 base64 混淆配置解码（`ew0K` 起解）；中文域名自动 punycode（IDNA）转换后探测。
- **单仓选源按内容量优先**（站点+解析+直播数降序、同量比响应速度），空源不占 TOP 名额，避免聚合出"快但空"的配置。
- **速度排序**（`scripts/speed_rank.py`，每周日 13:00 由本机计划任务跑，测试点=长沙移动出口，与盒子实际体验一致；Actions 周日 12:30 先用山河云单点粗排兜底，本机跑完后以精确结果覆盖）：多仓线路按整包响应实测耗时降序重排（profiles/urls/storeHouse 三数组同步，自家第一条固定）；单仓站点按 api 直连实测耗时排序，快的放上面；csp 爬虫型站点与不可达 api 无法直接测，按全体中位耗时插入中段保持相对顺序。明细见 `output/speed_report.json`（每条线路/站点的实测毫秒）。

## 手动更新

```bash
cd scripts
python collect_merge.py --top 12     # 重抓四上游+测活+重建全部产物
```

`output/juwan/all_sources.json` 若需刷新，先跑 `python scrape_juwanhezi.py`。

## 自动更新

两级流水线，**每周日**跑一轮（日常改动靠 Actions 当日 commit 即可，排序每周由本机校准一次）：
① GitHub Actions 每周日 12:30（北京时间）跑 `collect_merge.py` 整合+测活+分池+**山河云单点粗排**（兜底，本机不在时保基本排序），回推 `output/`（`.github/workflows/update.yml`）；
② 本机 Windows 计划任务 `TVBox-RankAndPush` 每周日 13:00 跑 `scripts/rank_and_push.ps1`：拉取远端 → 重跑管线 → **本机（长沙移动出口）`speed_rank.py` 精确测速排序** → commit+push → 移动 `agg-latest` tag。Actions 在美国机房测国内源不准，最终排序以本机为准；本机与山河云都失败时，保留 `collect_merge` 的内容量优先顺序照常出产物。

## 免责

所有接口与直播源来自公开互联网上游，本仓库仅做聚合、去重与测活展示，不对源内容可用性负责；失效源由每日任务自动剔除。
