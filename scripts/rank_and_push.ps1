# rank_and_push.ps1 — 本机（长沙移动出口）每周聚合+精确测速+推送+移动 agg-latest tag
# 由 Windows 计划任务 TVBox-RankAndPush 每周日 13:00 调用（排在 Actions 周日 12:30 之后，本机排序为最终结果）
# 测速失败不阻断：speed_rank 报错时保留 collect_merge 的内容量优先顺序照常提交
# 手动执行：powershell -ExecutionPolicy Bypass -File scripts\rank_and_push.ps1

$Repo   = "F:\文档\deepseek-harness\default-workspace\tvbox-api-backup"
$TokF   = "F:\文档\deepseek-harness\default-workspace\tvsource\.gh_token"
$Log    = "F:\文档\deepseek-harness\default-workspace\tvbox-rank.log"
$ErrorActionPreference = "Continue"

function Log($m) { "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') $m" | Add-Content -Path $Log -Encoding UTF8 }

Set-Location $Repo
$TOK = (Get-Content $TokF -Raw).Substring(0,40)
$URL = "https://zueston:${TOK}@github.com/zueston/tvbox-api-backup.git"

Log "=== run start ==="

# 1) 同步远端（Actions 可能已推过当日更新；公开仓库匿名拉取即可）
git -c http.version=HTTP/1.1 pull --rebase origin main 2>&1 | Add-Content -Path $Log -Encoding UTF8

# 2) 管线：抓聚玩盒子种子 → 四源整合 → 本机测速排序 → 直播分类 → README
foreach ($cmd in @(
    "python scripts/scrape_juwanhezi.py",
    "python scripts/collect_merge.py --top 12",
    "python scripts/speed_rank.py",
    "python scripts/classify_live.py",
    "python scripts/gen_readme_live.py"
)) {
    Log "step: $cmd"
    Invoke-Expression $cmd *>> $Log
    Log ("exit=" + $LASTEXITCODE)
}

# 3) 提交产物
git add output/ README.md 2>&1 | Add-Content -Path $Log -Encoding UTF8
git diff --cached --quiet
if ($LASTEXITCODE -ne 0) {
    git -c user.name="zueston" -c user.email="zueston@users.noreply.github.com" commit -m "update: $(Get-Date -Format 'yyyy-MM-dd HH:mm') 本机测速排序自动更新" 2>&1 | Add-Content -Path $Log -Encoding UTF8
    for ($i = 1; $i -le 3; $i++) {
        git -c http.version=HTTP/1.1 push $URL main 2>&1 | Add-Content -Path $Log -Encoding UTF8
        if ($LASTEXITCODE -eq 0) { break }
        Start-Sleep -Seconds 5
    }
    Log ("push exit=" + $LASTEXITCODE)
    if ($LASTEXITCODE -ne 0) { Log "PUSH FAILED, abort tag move"; exit 1 }
} else {
    Log "no changes to commit"
}

# 4) 移动滚动 tag（tag 命令必须单独跑，勿放循环块内——PS 块内 git tag 曾不执行）
git tag -f agg-latest HEAD 2>&1 | Add-Content -Path $Log -Encoding UTF8
for ($i = 1; $i -le 3; $i++) {
    git -c http.version=HTTP/1.1 push -f $URL refs/tags/agg-latest 2>&1 | Add-Content -Path $Log -Encoding UTF8
    if ($LASTEXITCODE -eq 0) { break }
    Start-Sleep -Seconds 5
}
Log ("tag push exit=" + $LASTEXITCODE)
Log "=== run end ==="
