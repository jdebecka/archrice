#!/bin/sh

set -e

DEST="${1:-"$HOME"}"
RICE_DIR="${2:-"$(pwd)"}"

[ ! -d "$RICE_DIR" ] && echo "$RICE_DIR does not point to archrice directory" && exit 1
[ ! -d "$DEST" ] && echo "$DEST is not a valid directory" && exit 1

echo "using RICE_DIR=$RICE_DIR, DEST=$DEST"

[ -d "$DEST/old_config" ] && echo "old_config exists. rename it and run again" && exit 1
# rename old configs and local files
mkdir "$DEST/old_config"

find "$RICE_DIR" -maxdepth 1 | while read el; do
  [ -e "$DEST/$(basename "$el")" ] && mv -i "$DEST/$(basename "$el")" old_config && echo "moved $DEST/$(basename "$el") to old_config"
  ln -s "$el" "$DEST/$(basename "$el")"
done