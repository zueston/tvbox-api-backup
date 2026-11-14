# 影视丶隐 · 一键隐藏网盘类（改装版影视仓 5.8.8）

在原版 FongMi 影视仓 5.8.8 基础上，加入「一键隐藏网盘/登录/分享/推送/本地类站点」功能，
并可自定义隐藏关键字（支持内置默认、手动编辑、或从网络地址拉取）。与原版**共存**安装
（包名 `com.fongmi.android.tv.hide`，桌面名「影视丶隐」）。

## 功能

- 设置页新增三行：
  - **隐藏网盘类**：开 / 关（默认开）。开=按关键字隐藏站点，关=全部显示（可恢复，不删数据）。
  - **关键字地址**：关键字文件 URL。默认内置
    `https://raw.githubusercontent.com/zueston/tvbox-api-backup/main/output/block_keys.txt`，
    启动/打开设置时后台拉取并缓存。清空此地址=不过滤。
  - **自定义关键字**：点击弹窗编辑。手填优先于网络缓存；逗号/顿号/分号/空格/斜杠均可分隔。
- 关键词命中站点名的站点在站点选择网格、搜索列表中隐藏（DB 保留，开关关即可恢复）。

## 出厂默认关键字（output/block_keys.txt）

网盘,云盘,登录,登陆,盘搜,云搜,蓝奏,夸克,盘她,盘他,UC盘,UC,四盘,优汐,搜搜,配置,设置,易搜,抠抠,本地,文件,推送

修改关键字**无需重新编译**：改仓库 `output/block_keys.txt` 即可，客户端下次拉取生效。

## 目录

- `hide-src/com/fongmi/hide/*.smali`：新增功能源码（Block 逻辑 / 设置页交互 / 网络拉取）。
- `patched-smali/`：被改动的原程序 smali（Site=站点隐藏过滤、SettingActivity=设置页注入、
  y44=禁用检查更新、RuntimeModule=签名校验绕过）。
- `res-patches/activity_setting.xml`：设置页布局（新增三行）。
- `apk/影视丶隐_5.8.8.apk`：编译签名后的成品。

## 构建（apktool）

```
apktool d 原版5.8.8.apk -o fw
# 将 patched-smali / hide-src / res-patches 对应合并进 fw
apktool b fw -o out.apk --aapt <aapt2>
apksigner / uber-apk-signer 签名
```

## 说明

- 该版本禁用自带检查更新、已处理签名校验（自签可运行）。
- 与原版 `com.fongmi.android.tv` 共存，互不影响。
