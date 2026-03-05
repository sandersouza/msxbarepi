#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Uso: $0 <diretorio_de_entrada> <arquivo_saida.cpio>"
  echo "Exemplo: $0 roms/msx1 sdcard/msx.cpio"
  exit 1
fi

IN_DIR="$1"
OUT_FILE="$2"
PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

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

shopt -s nullglob

rom_candidates=("$IN_DIR"/*.ROM "$IN_DIR"/*.rom)
if [ "${#rom_candidates[@]}" -eq 0 ]; then
  echo "[ERRO] Nenhuma ROM encontrada em: $IN_DIR"
  exit 1
fi

cp -R "${rom_candidates[@]}" "$TMP_DIR"/

# Include mapper DB so GuessROM() can auto-detect by SHA/CRC.
if [ -f "$IN_DIR/CARTS.SHA" ]; then
  cp -f "$IN_DIR/CARTS.SHA" "$TMP_DIR/CARTS.SHA"
elif [ -f "$PROJECT_ROOT/roms/fmsx/CARTS.SHA" ]; then
  cp -f "$PROJECT_ROOT/roms/fmsx/CARTS.SHA" "$TMP_DIR/CARTS.SHA"
fi

if [ -f "$IN_DIR/CARTS.CRC" ]; then
  cp -f "$IN_DIR/CARTS.CRC" "$TMP_DIR/CARTS.CRC"
elif [ -f "$PROJECT_ROOT/roms/fmsx/CARTS.CRC" ]; then
  cp -f "$PROJECT_ROOT/roms/fmsx/CARTS.CRC" "$TMP_DIR/CARTS.CRC"
fi

(
  cd "$TMP_DIR"
  find . -type f | LC_ALL=C sort | cpio -o -H newc --quiet > "$OUT_ABS"
)

echo "[OK] Initramfs criado: $OUT_ABS"
