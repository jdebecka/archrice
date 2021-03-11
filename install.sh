#!/bin/sh

set -e

RICE_DIR="${2:-"$(pwd)"}"
DEST="${1:-"$HOME"}"

[ ! -d "$RICE_DIR" ] && echo "$RICE_DIR does not point to archrice directory" && exit 1
[ ! -d "$DEST" ] && echo "$DEST is not a valid directory" && exit 1

cd "$DEST"

[ -d old_config ] && echo "old_config exists. rename it and run again" && exit 1
# rename old configs and local files
mkdir old_config

find "$RICE_DIR" -maxdepth 1 | while read el; do
  [ -e "$DEST/$(basename "$el")" ] && mv "$DEST/$(basename "$el")" old_config
  ln -s "$el" "$DEST/$(basename "$el")"
done