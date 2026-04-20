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
KCONFIG_FILE="${KCONFIG_FILE:-${PROJECT_ROOT}/.config}"
ONE_ROM_MODE="${MSXBARE_ONE_ROM_MODE:-}"
ONE_ROM_PATH="${MSXBARE_ONE_ROM_PATH:-}"
BOOT_SCREEN="${MSXBARE_BOOT_SCREEN:-}"

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

if [ -z "$ONE_ROM_MODE" ] && [ -f "$KCONFIG_FILE" ]; then
  if grep -Eq '^CONFIG_MSXBARE_ONE_ROM_MODE=y$' "$KCONFIG_FILE"; then
    ONE_ROM_MODE="1"
  else
    ONE_ROM_MODE="0"
  fi
fi

if [ -z "$ONE_ROM_PATH" ] && [ -f "$KCONFIG_FILE" ]; then
  one_rom_line="$(grep -E '^CONFIG_MSXBARE_ONE_ROM_PATH=\"' "$KCONFIG_FILE" 2>/dev/null || true)"
  one_rom_line="${one_rom_line#*=}"
  one_rom_line="${one_rom_line#\"}"
  one_rom_line="${one_rom_line%\"}"
  ONE_ROM_PATH="$one_rom_line"
fi

if [ -z "$BOOT_SCREEN" ] && [ -f "$KCONFIG_FILE" ]; then
  if grep -Eq '^CONFIG_MSXBARE_BOOT_SCREEN=y$' "$KCONFIG_FILE"; then
    BOOT_SCREEN="1"
  else
    BOOT_SCREEN="0"
  fi
fi

if [ "${ONE_ROM_MODE:-0}" = "1" ]; then
  rm -f "$TMP_DIR/CARTA.ROM" "$TMP_DIR/CARTA.rom" "$TMP_DIR/carta.rom"

  if [ -n "${ONE_ROM_PATH:-}" ]; then
    one_rom_src="$ONE_ROM_PATH"
    case "$one_rom_src" in
      /*) ;;
      *) one_rom_src="$PROJECT_ROOT/$one_rom_src" ;;
    esac

    if [ -f "$one_rom_src" ]; then
      cp -f "$one_rom_src" "$TMP_DIR/CARTA.ROM"
      echo "[INFO] One ROM Mode: CARTA.ROM definido por ${one_rom_src}"
    else
      echo "[WARN] One ROM Mode: arquivo nao encontrado em MSXBARE_ONE_ROM_PATH='${ONE_ROM_PATH}'. CARTA.ROM nao sera incluido."
    fi
  else
    echo "[INFO] One ROM Mode: sem ROM selecionada; CARTA.ROM nao sera incluido."
  fi
fi

if [ "${BOOT_SCREEN:-0}" != "1" ]; then
  rm -f \
    "$TMP_DIR"/KANJI*.ROM \
    "$TMP_DIR"/KANJI*.rom \
    "$TMP_DIR"/KANJIBASIC*.ROM \
    "$TMP_DIR"/KANJIBASIC*.rom \
    "$TMP_DIR"/*_KANJI*.ROM \
    "$TMP_DIR"/*_KANJI*.rom \
    "$TMP_DIR"/*_KANJIBASIC*.ROM \
    "$TMP_DIR"/*_KANJIBASIC*.rom
  echo "[INFO] Boot Screen OFF: KANJI/KANJIBASIC removidos do initramfs."
fi

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
