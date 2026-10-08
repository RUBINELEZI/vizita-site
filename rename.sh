#!/bin/sh
# Swap the brand name and domain everywhere.
# Usage: ./rename.sh "OldName" "NewName" "old-domain.com" "new-domain.com"
set -e
[ $# -eq 4 ] || { echo 'usage: ./rename.sh OLD_NAME NEW_NAME OLD_DOMAIN NEW_DOMAIN'; exit 1; }
for f in index.html README.md; do
  sed -i.bak -e "s/$3/$4/g" -e "s/$1/$2/g" "$f" && rm "$f.bak"
done
echo "Renamed $1 -> $2 and $3 -> $4"
