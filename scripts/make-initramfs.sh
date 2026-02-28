#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Uso: $0 <diretorio_de_entrada> <arquivo_saida.cpio>"
  echo "Exemplo: $0 roms/msx1 sdcard/msx.cpio"
  exit 1
fi

IN_DIR="$1"
OUT_FILE="$2"

if [ ! -d "$IN_DIR" ]; then
  echo "[ERRO] Diretorio nao encontrado: $IN_DIR"
  exit 1
fi

# Resolve caminho de saida para absoluto antes de mudar diretorio.
case "$OUT_FILE" in
  /*) OUT_ABS="$OUT_FILE" ;;
  *) OUT_ABS="$(pwd)/$OUT_FILE" ;;
esac

mkdir -p "$(dirname "$OUT_ABS")"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

cp -R "$IN_DIR"/*.ROM "$TMP_DIR"/

(
  cd "$TMP_DIR"
  find . -type f | LC_ALL=C sort | cpio -o -H newc --quiet > "$OUT_ABS"
)

echo "[OK] Initramfs criado: $OUT_ABS"
