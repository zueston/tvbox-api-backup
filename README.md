# tvbox-api-backup（四源聚合版）

聚合四个上游的 TVBox 直播/点播接口源，去重测活后按 **安卓4 兼容** 与 **安卓5+** 两套输出。

## 上游

| 来源 | 内容 |
|---|---|
| [lubin776/tvbox-api-backup](https://github.com/lubin776/tvbox-api-backup) | api_list.json 接口清单 + livelist.txt 直播备份 |
| [Lightconer/tvbox-ysc-config](https://github.com/Lightconer/tvbox-ysc-config) | config/sources.json 影视仓 10 源 |
| [25175/tvyuan](https://github.com/25175/tvyuan) | sources.txt 带测速 93 条 + tvbox_multi.json |
| [聚玩盒子 jsonlist](https://www.juwanhezi.com/jsonlist) | 单仓/多仓全量线路（ajax 分页抓取） |

## 订阅地址（jsDelivr CDN 优先，`@main` 必带）

```
安卓5+ 多仓   https://cdn.jsdelivr.net/gh/zueston/tvbox-api-backup@main/output/android5/multi.json
安卓4  多仓   https://cdn.jsdelivr.net/gh/zueston/tvbox-api-backup@main/output/android4/multi.json
安卓5+ 单仓   https://cdn.jsdelivr.net/gh/zueston/tvbox-api-backup@main/output/android5/single.json
安卓4  单仓   https://cdn.jsdelivr.net/gh/zueston/tvbox-api-backup@main/output/android4/single.json
```

| 用途 | 安卓5+ | 安卓4 |
|---|---|---|
| 多仓订阅（影视仓类填这个） | `output/android5/multi.json` | `output/android4/multi.json` |
| 聚合单仓（所有软件通用） | `output/android5/single.json` | `output/android4/single.json` |
| 直播源清单 | `output/live_sources.txt` | 同左 |

`@main` 不能省：仓库没打 release tag 时 jsDelivr 缺它会 404。`cdn.jsdelivr.net` 在部分运营商线路被污染解析失败时，把前缀换成 `https://fastly.jsdelivr.net/gh/zueston/tvbox-api-backup@main/output/...`（同路径，实测四文件全 200）。原始地址：`https://raw.githubusercontent.com/zueston/tvbox-api-backup/main/output/...`

## 哪些软件支持多仓、哪些支持单仓

按 TVBox 系壳子的实际能力（多仓 / 多线路 / 单接口三者关系参考恩山论坛 [TVBox多仓接口分享](https://www.right.com.cn/forum/archiver/tid-8352531.html)：多仓=多个单仓，多线路=一个仓库内含多条线路，单接口=单线路全软件通用）：

1. **单仓（`single.json`）＝单接口，所有 TVBox 系软件通用**：TVBox 原版及全部衍生版（oq0tv、黑盒、Biu 等）、影视仓、OK影视/FM影视/521影视、Catbox、巧盒、月光宝盒、影迷等——设置里"配置地址/接口地址"直接填。
2. **多仓（`multi.json`，storeHouse 形态）＝订阅仓库，只有带"多仓订阅"入口的壳支持**：影视仓及其修改版（Player、讴歌仓等）、Catbox、MBox 竖屏开源版、影音壳子、影迷、easybox、巧盒、月光宝盒等（设置里有"订阅仓库/多仓地址"入口的都可以）。**TVBox 原版和黑盒不支持**，往配置地址填多仓会报错或空白，这类软件请用 `single.json`。
3. **多线路**：OK影视/FM影视/521影视 另支持"多线路"形态，本仓库 `multi.json` 顶层同时带 `urls` 数组字段，这类软件也能直接吃。

## 安卓4 / 安卓5+ 区分规则

- **安卓5+ single**：保留全部站点（含 `csp:` Jar 爬虫）、解析 type2、全局 jar/spider/ijk 配置。
- **安卓4 single**：剔除 `type==3`、`api/spider` 以 `csp:`/`assets:`/`jar:` 开头的站点（旧内核跑不了 Jar 爬虫）、剔除 `type==2` 解析、剔除无 url 直播行、不写全局 jar/spider；选源名额扩大到 3 倍并用"空源不占名额"策略补足有效站点。
- **multi**：两套同为去重测活后的全量存活源清单（78 条），仅名称标注不同。

## 去重与测活

- URL 规范化：剥 `gh-proxy.*` 前缀、jsDelivr→raw、`raw.github.com`→`raw.githubusercontent.com`、host 小写、去尾斜杠，同一规范化键只保留一条并合并来源标记。
- 16 线程并发测活：HTTP 200 + 体积 >50B，`.json` 结尾额外校验可解析；聚玩盒子当日已测活的直接信任。

## 手动更新

```bash
cd scripts
python collect_merge.py --top 12     # 重抓四上游+测活+重建全部产物
```

`output/juwan/all_sources.json` 若需刷新，先跑 `python scrape_juwanhezi.py`。

## 自动更新

GitHub Actions 每日 12:30（北京时间）运行 `scripts/collect_merge.py` 并回推 `output/`，见 `.github/workflows/update.yml`。

## 免责

所有接口与直播源来自公开互联网上游，本仓库仅做聚合、去重与测活展示，不对源内容可用性负责；失效源由每日任务自动剔除。
