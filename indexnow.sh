#!/bin/sh
# Tells Bing (and every IndexNow engine: Yandex, Seznam, Naver…) that pages changed, so they crawl them now
# rather than whenever they next visit. Run after pushing a change:
#   ./indexnow.sh                      every URL in sitemap.xml
#   ./indexnow.sh /faq/ /guides/…      only these paths
# The key is the one .txt file at the site root named after its own contents (the protocol's proof of ownership).
set -e
cd "$(dirname "$0")"
KEY=$(ls | grep -E '^[0-9a-f]{32}\.txt$' | head -1 | sed 's/\.txt$//')
[ -n "$KEY" ] || { echo "no IndexNow key file at the site root" >&2; exit 1; }
if [ $# -gt 0 ]; then URLS=$(for p in "$@"; do printf 'https://headwordapp.com%s\n' "$p"; done)
else URLS=$(grep -o '<loc>[^<]*</loc>' sitemap.xml | sed 's/<[^>]*>//g'); fi
LIST=$(printf '%s\n' "$URLS" | sed 's/.*/"&"/' | paste -sd, -)
curl -sS -o /dev/null -w 'IndexNow: HTTP %{http_code}\n' -X POST https://api.indexnow.org/indexnow \
  -H 'Content-Type: application/json; charset=utf-8' \
  -d "{\"host\":\"headwordapp.com\",\"key\":\"$KEY\",\"keyLocation\":\"https://headwordapp.com/$KEY.txt\",\"urlList\":[$LIST]}"
