#!/bin/sh

set -e

RICE_DIR="${2:-"$(pwd)"}"
INSTALLATION_DIR="${1:-"$HOME"}"

[ ! -d "$RICE_DIR" ] && echo "$RICE_DIR does not point to archrice directory" && exit 1
[ ! -d "$INSTALLATION_DIR" ] && echo "$INSTALLATION_DIR is not a valid directory" && exit 1

cd "$INSTALLATION_DIR"

find . -maxdepth 1 -type l | while read link; do
  [ readlink -f "$link" | grep "$INSTALLATION_DIR" ] && rm -i "$link"
done

find "$RICE_DIR" -maxdepth 1 | while read el; do
  cp -r "$el" "$INSTALLATION_DIR"
done