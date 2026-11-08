#!/usr/bin/env bash
# 从 GCM 取 github.com 凭据，验证/创建仓库 zueston/tvbox-api-backup
set -euo pipefail
CREDS=$(printf "protocol=https\nhost=github.com\n\n" | git credential fill)
GH_TOKEN=$(echo "$CREDS" | sed -n 's/^password=//p')
GH_USER=$(echo "$CREDS" | sed -n 's/^username=//p')
echo "user=$GH_USER token_prefix=${GH_TOKEN:0:4} len=${#GH_TOKEN}"

api() { # api METHOD PATH [JSON]
  local m="$1" p="$2" body="${3:-}"
  if [ -n "$body" ]; then
    curl -s --tlsv1.2 --connect-timeout 20 --retry 2 -X "$m" \
      -H "Authorization: Bearer $GH_TOKEN" -H "Accept: application/vnd.github+json" \
      -H "Content-Type: application/json" -d "$body" \
      -w "\n__HTTP__%{http_code}" "https://api.github.com$p"
  else
    curl -s --tlsv1.2 --connect-timeout 20 --retry 2 -X "$m" \
      -H "Authorization: Bearer $GH_TOKEN" -H "Accept: application/vnd.github+json" \
      -H "Content-Type: application/json" \
      -w "\n__HTTP__%{http_code}" "https://api.github.com$p"
  fi
}

echo "== rate_limit =="
api GET /rate_limit | tail -c 400
echo
echo "== repo exists? =="
RESP=$(api GET "/repos/$GH_USER/tvbox-api-backup")
CODE=$(echo "$RESP" | sed -n 's/.*__HTTP__//p')
echo "http=$CODE"
if [ "$CODE" = "404" ]; then
  echo "== create =="
  cat > /tmp/repo_create.json <<'EOF'
{"name":"tvbox-api-backup","description":"TVBox four-source aggregator: android4/android5+ builds, dedup + alive-check, daily auto-update","private":false,"has_issues":false,"has_wiki":false,"auto_init":false}
EOF
  RESP2=$(api POST /user/repos "$(cat /tmp/repo_create.json)")
  echo "$RESP2" | tail -c 600
fi
