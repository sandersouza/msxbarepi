#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
TMP_DIR="$(mktemp -d)"
ZIP_URL="http://bluemsx.msxblue.com/rel_download/blueMSXv282full.zip"
DEST_DIR="$ROOT_DIR/sdcard/cheats"

cleanup() {
  rm -rf "$TMP_DIR"
}
trap cleanup EXIT

cd "$TMP_DIR"
curl -L -f -O "$ZIP_URL"
unzip -q blueMSXv282full.zip "Tools/Cheats/msx/*"

mkdir -p "$DEST_DIR"
find "$DEST_DIR" -type f -name '*.mcf' -delete
cp Tools/Cheats/msx/*.mcf "$DEST_DIR"/

echo "blueMSX cheats synced to $DEST_DIR"
