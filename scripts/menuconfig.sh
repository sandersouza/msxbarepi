#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

CONFIG_KCONFIG_FILE="$ROOT_DIR/.config"
CONFIG_ROOT_MK_FILE="$ROOT_DIR/.config.mk"
CONFIG_BUILD_MK_FILE="$ROOT_DIR/build/config.mk"
KCONFIG_SPEC_FILE="$ROOT_DIR/config/Kconfig.msxbarepi"
MCONF_BIN="$ROOT_DIR/build/tools/kconfig-linux/mconf"
MCONF_SAVED_MARKER="$ROOT_DIR/build/tools/kconfig-linux/.menuconfig.saved"
SYNC_ONLY=0

if [ "${1:-}" = "--sync-only" ]; then
  SYNC_ONLY=1
  shift
fi

if [ "$PWD" != "/Users/sandersouza/Developer/msxbarepi" ]; then
  echo "[WARN] PWD atual: $PWD" >&2
  echo "[WARN] Recomenda-se usar /Users/sandersouza/Developer/msxbarepi" >&2
fi

kconfig_enabled() {
  local key="$1"
  if grep -Eq "^CONFIG_${key}=y$" "$CONFIG_KCONFIG_FILE" 2>/dev/null; then
    echo 1
  else
    echo 0
  fi
}

kconfig_string() {
  local key="$1"
  local line
  line=$(grep -E "^CONFIG_${key}=\"" "$CONFIG_KCONFIG_FILE" 2>/dev/null || true)
  line="${line#*=}"
  line="${line#\"}"
  line="${line%\"}"
  printf '%s' "$line"
}

normalize_boot_strategy() {
  case "${1:-}" in
    multicore|MULTICORE|Multicore)
      printf '%s' "multicore"
      ;;
    *)
      printf '%s' "standalone"
      ;;
  esac
}

kconfig_boot_strategy() {
  if [ "$(kconfig_enabled MSXBARE_BOOT_STRATEGY_MULTICORE)" = "1" ]; then
    printf '%s' "multicore"
  else
    printf '%s' "standalone"
  fi
}

detect_boot_strategy_from_kconfig_file() {
  local strategy=""

  if grep -Eq '^CONFIG_MSXBARE_BOOT_STRATEGY_MULTICORE=y$' "$CONFIG_KCONFIG_FILE" 2>/dev/null; then
    strategy="multicore"
  elif grep -Eq '^CONFIG_MSXBARE_BOOT_STRATEGY_STANDALONE=y$' "$CONFIG_KCONFIG_FILE" 2>/dev/null; then
    strategy="standalone"
  elif grep -Eq '^CONFIG_MSXBARE_INITRAMFS_EXTERNAL=y$' "$CONFIG_KCONFIG_FILE" 2>/dev/null; then
    strategy="multicore"
  elif grep -Eq '^CONFIG_MSXBARE_INITRAMFS_EMBEDDED=y$' "$CONFIG_KCONFIG_FILE" 2>/dev/null; then
    strategy="standalone"
  fi

  normalize_boot_strategy "$strategy"
}

ensure_missing_kconfig_defaults() {
  [ -f "$CONFIG_KCONFIG_FILE" ] || return 0

  if ! grep -Eq '^(CONFIG_MSXBARE_FEAT_GFX9000=y|# CONFIG_MSXBARE_FEAT_GFX9000 is not set)$' "$CONFIG_KCONFIG_FILE" 2>/dev/null; then
    printf 'CONFIG_MSXBARE_FEAT_GFX9000=y\n' >> "$CONFIG_KCONFIG_FILE"
  fi
  local has_standalone_choice=0
  local has_multicore_choice=0
  if grep -Eq '^(CONFIG_MSXBARE_BOOT_STRATEGY_STANDALONE=y|# CONFIG_MSXBARE_BOOT_STRATEGY_STANDALONE is not set)$' "$CONFIG_KCONFIG_FILE" 2>/dev/null; then
    has_standalone_choice=1
  fi
  if grep -Eq '^(CONFIG_MSXBARE_BOOT_STRATEGY_MULTICORE=y|# CONFIG_MSXBARE_BOOT_STRATEGY_MULTICORE is not set)$' "$CONFIG_KCONFIG_FILE" 2>/dev/null; then
    has_multicore_choice=1
  fi
  if [ "$has_standalone_choice" = "0" ] && [ "$has_multicore_choice" = "0" ]; then
    if [ "$(detect_boot_strategy_from_kconfig_file)" = "multicore" ]; then
      printf '# CONFIG_MSXBARE_BOOT_STRATEGY_STANDALONE is not set\n' >> "$CONFIG_KCONFIG_FILE"
      printf 'CONFIG_MSXBARE_BOOT_STRATEGY_MULTICORE=y\n' >> "$CONFIG_KCONFIG_FILE"
    else
      printf 'CONFIG_MSXBARE_BOOT_STRATEGY_STANDALONE=y\n' >> "$CONFIG_KCONFIG_FILE"
      printf '# CONFIG_MSXBARE_BOOT_STRATEGY_MULTICORE is not set\n' >> "$CONFIG_KCONFIG_FILE"
    fi
  elif [ "$has_standalone_choice" = "0" ]; then
    printf '# CONFIG_MSXBARE_BOOT_STRATEGY_STANDALONE is not set\n' >> "$CONFIG_KCONFIG_FILE"
  elif [ "$has_multicore_choice" = "0" ]; then
    printf '# CONFIG_MSXBARE_BOOT_STRATEGY_MULTICORE is not set\n' >> "$CONFIG_KCONFIG_FILE"
  fi
}

ensure_default_kconfig() {
  cat > "$CONFIG_KCONFIG_FILE" <<'KCONF'
# Auto-generated baseline config for MSX BarePI
CONFIG_MSXBARE_DEBUG=y
CONFIG_MSXBARE_BOOT_STRATEGY_STANDALONE=y
# CONFIG_MSXBARE_BOOT_STRATEGY_MULTICORE is not set
CONFIG_MSXBARE_BOOT_MODE_NONE=y
# CONFIG_MSXBARE_BOOT_MODE_NORM is not set
# CONFIG_MSXBARE_BOOT_MODE_FAST is not set
# CONFIG_MSXBARE_BOOT_MODE_GAME is not set
CONFIG_MSXBARE_FEAT_MSX2=y
# CONFIG_MSXBARE_BOOT_SCREEN is not set
CONFIG_MSXBARE_FEAT_MSX2P=y
# CONFIG_MSXBARE_ONE_ROM_MODE is not set
CONFIG_MSXBARE_ONE_ROM_PATH=""
CONFIG_MSXBARE_FEAT_SCC=y
CONFIG_MSXBARE_FEAT_GFX9000=y
CONFIG_MSXBARE_FEAT_FMPAC=y
CONFIG_MSXBARE_FEAT_DISK_ROM=y
CONFIG_MSXBARE_FEAT_MEGARAM=y
CONFIG_MSXBARE_FEAT_LOAD_ROM=y
CONFIG_MSXBARE_FEAT_LOAD_DISK=y
CONFIG_MSXBARE_PATREON_TAG=""
KCONF
}

write_kconfig_from_legacy() {
  local legacy="$1"
  local debug=1 scc=1 gfx9000=1 fmpac=1 disk=1 megaram=1 msx2=1 bootscreen=0 msx2p=1 loadrom=1 loaddisk=1 onerom=0
  local onerom_path="" bootmode="NORM" patreon="" embed_initramfs=1 boot_strategy=""

  # shellcheck disable=SC1090
  source "$legacy"

  debug="${DEBUG:-1}"
  scc="${MSXBARE_FEAT_SCC:-1}"
  gfx9000="${MSXBARE_FEAT_GFX9000:-1}"
  fmpac="${MSXBARE_FEAT_FMPAC:-1}"
  disk="${MSXBARE_FEAT_DISK_ROM:-1}"
  megaram="${MSXBARE_FEAT_MEGARAM:-1}"
  msx2="${MSXBARE_FEAT_MSX2:-1}"
  bootscreen="${MSXBARE_BOOT_SCREEN:-0}"
  msx2p="${MSXBARE_FEAT_MSX2P:-1}"
  loadrom="${MSXBARE_FEAT_LOAD_ROM:-1}"
  loaddisk="${MSXBARE_FEAT_LOAD_DISK:-1}"
  onerom="${MSXBARE_ONE_ROM_MODE:-0}"
  onerom_path="${MSXBARE_ONE_ROM_PATH:-}"
  bootmode="${MSXBARE_BOOT_MODE_DEFAULT:-NORM}"
  patreon="${MSXBARE_PATREON_TAG:-}"
  embed_initramfs="${MSXBARE_EMBED_INITRAMFS:-1}"
  boot_strategy="$(normalize_boot_strategy "${MSXBARE_BOOT_STRATEGY:-}")"
  if [ -z "${MSXBARE_BOOT_STRATEGY:-}" ]; then
    if [ "$embed_initramfs" = "0" ]; then
      boot_strategy="multicore"
    else
      boot_strategy="standalone"
    fi
  fi

  yn() { [ "$1" = "1" ] && echo "y" || echo "n"; }

  {
    echo "# Migrated from legacy .config"
    [ "$(yn "$debug")" = "y" ] && echo "CONFIG_MSXBARE_DEBUG=y" || echo "# CONFIG_MSXBARE_DEBUG is not set"
    if [ "$boot_strategy" = "multicore" ]; then
      echo "# CONFIG_MSXBARE_BOOT_STRATEGY_STANDALONE is not set"
      echo "CONFIG_MSXBARE_BOOT_STRATEGY_MULTICORE=y"
    else
      echo "CONFIG_MSXBARE_BOOT_STRATEGY_STANDALONE=y"
      echo "# CONFIG_MSXBARE_BOOT_STRATEGY_MULTICORE is not set"
    fi
    case "$bootmode" in
      NONE)
        echo "CONFIG_MSXBARE_BOOT_MODE_NONE=y"
        echo "# CONFIG_MSXBARE_BOOT_MODE_NORM is not set"
        echo "# CONFIG_MSXBARE_BOOT_MODE_FAST is not set"
        echo "# CONFIG_MSXBARE_BOOT_MODE_GAME is not set"
        ;;
      FAST)
        echo "# CONFIG_MSXBARE_BOOT_MODE_NONE is not set"
        echo "# CONFIG_MSXBARE_BOOT_MODE_NORM is not set"
        echo "CONFIG_MSXBARE_BOOT_MODE_FAST=y"
        echo "# CONFIG_MSXBARE_BOOT_MODE_GAME is not set"
        ;;
      GAME)
        echo "# CONFIG_MSXBARE_BOOT_MODE_NONE is not set"
        echo "# CONFIG_MSXBARE_BOOT_MODE_NORM is not set"
        echo "# CONFIG_MSXBARE_BOOT_MODE_FAST is not set"
        echo "CONFIG_MSXBARE_BOOT_MODE_GAME=y"
        ;;
      *)
        echo "# CONFIG_MSXBARE_BOOT_MODE_NONE is not set"
        echo "CONFIG_MSXBARE_BOOT_MODE_NORM=y"
        echo "# CONFIG_MSXBARE_BOOT_MODE_FAST is not set"
        echo "# CONFIG_MSXBARE_BOOT_MODE_GAME is not set"
        ;;
    esac
    [ "$(yn "$msx2")" = "y" ] && echo "CONFIG_MSXBARE_FEAT_MSX2=y" || echo "# CONFIG_MSXBARE_FEAT_MSX2 is not set"
    [ "$(yn "$bootscreen")" = "y" ] && echo "CONFIG_MSXBARE_BOOT_SCREEN=y" || echo "# CONFIG_MSXBARE_BOOT_SCREEN is not set"
    [ "$(yn "$msx2p")" = "y" ] && echo "CONFIG_MSXBARE_FEAT_MSX2P=y" || echo "# CONFIG_MSXBARE_FEAT_MSX2P is not set"
    [ "$(yn "$onerom")" = "y" ] && echo "CONFIG_MSXBARE_ONE_ROM_MODE=y" || echo "# CONFIG_MSXBARE_ONE_ROM_MODE is not set"
    echo "CONFIG_MSXBARE_ONE_ROM_PATH=\"${onerom_path}\""
    [ "$(yn "$scc")" = "y" ] && echo "CONFIG_MSXBARE_FEAT_SCC=y" || echo "# CONFIG_MSXBARE_FEAT_SCC is not set"
    [ "$(yn "$gfx9000")" = "y" ] && echo "CONFIG_MSXBARE_FEAT_GFX9000=y" || echo "# CONFIG_MSXBARE_FEAT_GFX9000 is not set"
    [ "$(yn "$fmpac")" = "y" ] && echo "CONFIG_MSXBARE_FEAT_FMPAC=y" || echo "# CONFIG_MSXBARE_FEAT_FMPAC is not set"
    [ "$(yn "$disk")" = "y" ] && echo "CONFIG_MSXBARE_FEAT_DISK_ROM=y" || echo "# CONFIG_MSXBARE_FEAT_DISK_ROM is not set"
    [ "$(yn "$megaram")" = "y" ] && echo "CONFIG_MSXBARE_FEAT_MEGARAM=y" || echo "# CONFIG_MSXBARE_FEAT_MEGARAM is not set"
    [ "$(yn "$loadrom")" = "y" ] && echo "CONFIG_MSXBARE_FEAT_LOAD_ROM=y" || echo "# CONFIG_MSXBARE_FEAT_LOAD_ROM is not set"
    [ "$(yn "$loaddisk")" = "y" ] && echo "CONFIG_MSXBARE_FEAT_LOAD_DISK=y" || echo "# CONFIG_MSXBARE_FEAT_LOAD_DISK is not set"
    echo "CONFIG_MSXBARE_PATREON_TAG=\"${patreon}\""
  } > "$CONFIG_KCONFIG_FILE"
}

prepare_kconfig_file() {
  if [ ! -f "$CONFIG_KCONFIG_FILE" ]; then
    if [ "${INTERACTIVE_MODE:-0}" = "1" ]; then
      return 0
    fi
    ensure_default_kconfig
    return 0
  fi

  if grep -q '^CONFIG_' "$CONFIG_KCONFIG_FILE"; then
    ensure_missing_kconfig_defaults
    return 0
  fi

  if grep -q '^DEBUG=' "$CONFIG_KCONFIG_FILE"; then
    write_kconfig_from_legacy "$CONFIG_KCONFIG_FILE"
    ensure_missing_kconfig_defaults
    return 0
  fi

  ensure_default_kconfig
  ensure_missing_kconfig_defaults
}

emit_make_config() {
  mkdir -p "$ROOT_DIR/build"

  local DEBUG
  local MSXBARE_FEAT_SCC
  local MSXBARE_FEAT_GFX9000
  local MSXBARE_FEAT_FMPAC
  local MSXBARE_FEAT_DISK_ROM
  local MSXBARE_FEAT_MEGARAM
  local MSXBARE_FEAT_MSX2
  local MSXBARE_BOOT_SCREEN
  local MSXBARE_FEAT_MSX2P
  local MSXBARE_FEAT_LOAD_ROM
  local MSXBARE_FEAT_LOAD_DISK
  local MSXBARE_ONE_ROM_MODE
  local MSXBARE_ONE_ROM_PATH
  local MSXBARE_PATREON_TAG
  local MSXBARE_BOOT_MODE_DEFAULT
  local MSXBARE_EMBED_INITRAMFS
  local MSXBARE_BOOT_STRATEGY
  local MSXBARE_USE_RAW_BOOT_CONFIG

  DEBUG="$(kconfig_enabled MSXBARE_DEBUG)"
  MSXBARE_FEAT_SCC="$(kconfig_enabled MSXBARE_FEAT_SCC)"
  MSXBARE_FEAT_GFX9000="$(kconfig_enabled MSXBARE_FEAT_GFX9000)"
  MSXBARE_FEAT_FMPAC="$(kconfig_enabled MSXBARE_FEAT_FMPAC)"
  MSXBARE_FEAT_DISK_ROM="$(kconfig_enabled MSXBARE_FEAT_DISK_ROM)"
  MSXBARE_FEAT_MEGARAM="$(kconfig_enabled MSXBARE_FEAT_MEGARAM)"
  MSXBARE_FEAT_MSX2="$(kconfig_enabled MSXBARE_FEAT_MSX2)"
  MSXBARE_BOOT_SCREEN="$(kconfig_enabled MSXBARE_BOOT_SCREEN)"
  MSXBARE_FEAT_MSX2P="$(kconfig_enabled MSXBARE_FEAT_MSX2P)"
  MSXBARE_FEAT_LOAD_ROM="$(kconfig_enabled MSXBARE_FEAT_LOAD_ROM)"
  MSXBARE_FEAT_LOAD_DISK="$(kconfig_enabled MSXBARE_FEAT_LOAD_DISK)"
  MSXBARE_ONE_ROM_MODE="$(kconfig_enabled MSXBARE_ONE_ROM_MODE)"
  MSXBARE_ONE_ROM_PATH="$(kconfig_string MSXBARE_ONE_ROM_PATH)"
  MSXBARE_PATREON_TAG="$(kconfig_string MSXBARE_PATREON_TAG)"
  MSXBARE_BOOT_STRATEGY="$(kconfig_boot_strategy)"
  if [ "$MSXBARE_BOOT_STRATEGY" = "multicore" ]; then
    MSXBARE_EMBED_INITRAMFS=0
    MSXBARE_USE_RAW_BOOT_CONFIG=0
  else
    MSXBARE_EMBED_INITRAMFS=1
    MSXBARE_USE_RAW_BOOT_CONFIG=1
  fi

  if [ "$(kconfig_enabled MSXBARE_BOOT_MODE_NONE)" = "1" ]; then
    MSXBARE_BOOT_MODE_DEFAULT="NONE"
  elif [ "$(kconfig_enabled MSXBARE_BOOT_MODE_FAST)" = "1" ]; then
    MSXBARE_BOOT_MODE_DEFAULT="FAST"
  elif [ "$(kconfig_enabled MSXBARE_BOOT_MODE_GAME)" = "1" ]; then
    MSXBARE_BOOT_MODE_DEFAULT="GAME"
  else
    MSXBARE_BOOT_MODE_DEFAULT="NORM"
  fi

  if [ "$MSXBARE_ONE_ROM_MODE" = "1" ]; then
    MSXBARE_FEAT_LOAD_ROM=0
    MSXBARE_FEAT_LOAD_DISK=0
    MSXBARE_BOOT_MODE_DEFAULT=GAME
  fi

  # Without DEBUG, Disk ROM must stay enabled in build.
  if [ "$DEBUG" != "1" ]; then
    MSXBARE_FEAT_DISK_ROM=1
  fi

  {
    echo "# Auto-generated by scripts/menuconfig.sh"
    echo "DEBUG_CONFIG := $DEBUG"
    echo "DEBUG := $DEBUG"
    echo "MSXBARE_FEAT_SCC_CONFIG := $MSXBARE_FEAT_SCC"
    echo "MSXBARE_FEAT_SCC := $MSXBARE_FEAT_SCC"
    echo "MSXBARE_FEAT_GFX9000_CONFIG := $MSXBARE_FEAT_GFX9000"
    echo "MSXBARE_FEAT_GFX9000 := $MSXBARE_FEAT_GFX9000"
    echo "MSXBARE_FEAT_FMPAC_CONFIG := $MSXBARE_FEAT_FMPAC"
    echo "MSXBARE_FEAT_FMPAC := $MSXBARE_FEAT_FMPAC"
    echo "MSXBARE_FEAT_DISK_ROM_CONFIG := $MSXBARE_FEAT_DISK_ROM"
    echo "MSXBARE_FEAT_DISK_ROM := $MSXBARE_FEAT_DISK_ROM"
    echo "MSXBARE_FEAT_MEGARAM_CONFIG := $MSXBARE_FEAT_MEGARAM"
    echo "MSXBARE_FEAT_MEGARAM := $MSXBARE_FEAT_MEGARAM"
    echo "MSXBARE_FEAT_MSX2_CONFIG := $MSXBARE_FEAT_MSX2"
    echo "MSXBARE_FEAT_MSX2 := $MSXBARE_FEAT_MSX2"
    echo "MSXBARE_BOOT_SCREEN_CONFIG := $MSXBARE_BOOT_SCREEN"
    echo "MSXBARE_BOOT_SCREEN := $MSXBARE_BOOT_SCREEN"
    echo "MSXBARE_FEAT_MSX2P_CONFIG := $MSXBARE_FEAT_MSX2P"
    echo "MSXBARE_FEAT_MSX2P := $MSXBARE_FEAT_MSX2P"
    echo "MSXBARE_FEAT_LOAD_ROM_CONFIG := $MSXBARE_FEAT_LOAD_ROM"
    echo "MSXBARE_FEAT_LOAD_ROM := $MSXBARE_FEAT_LOAD_ROM"
    echo "MSXBARE_FEAT_LOAD_DISK_CONFIG := $MSXBARE_FEAT_LOAD_DISK"
    echo "MSXBARE_FEAT_LOAD_DISK := $MSXBARE_FEAT_LOAD_DISK"
    echo "MSXBARE_ONE_ROM_MODE_CONFIG := $MSXBARE_ONE_ROM_MODE"
    echo "MSXBARE_ONE_ROM_MODE := $MSXBARE_ONE_ROM_MODE"
    echo "MSXBARE_ONE_ROM_PATH_CONFIG := $MSXBARE_ONE_ROM_PATH"
    echo "MSXBARE_ONE_ROM_PATH := $MSXBARE_ONE_ROM_PATH"
    echo "MSXBARE_BOOT_MODE_DEFAULT_CONFIG := $MSXBARE_BOOT_MODE_DEFAULT"
    echo "MSXBARE_BOOT_MODE_DEFAULT := $MSXBARE_BOOT_MODE_DEFAULT"
    echo "MSXBARE_BOOT_STRATEGY_CONFIG := $MSXBARE_BOOT_STRATEGY"
    echo "MSXBARE_BOOT_STRATEGY := $MSXBARE_BOOT_STRATEGY"
    echo "MSXBARE_EMBED_INITRAMFS_CONFIG := $MSXBARE_EMBED_INITRAMFS"
    echo "MSXBARE_EMBED_INITRAMFS := $MSXBARE_EMBED_INITRAMFS"
    echo "MSXBARE_USE_RAW_BOOT_CONFIG_CONFIG := $MSXBARE_USE_RAW_BOOT_CONFIG"
    echo "MSXBARE_USE_RAW_BOOT_CONFIG := $MSXBARE_USE_RAW_BOOT_CONFIG"
    echo "MSXBARE_PATREON_TAG_CONFIG := $MSXBARE_PATREON_TAG"
    echo "MSXBARE_PATREON_TAG := $MSXBARE_PATREON_TAG"
  } > "$CONFIG_ROOT_MK_FILE"

  cp "$CONFIG_ROOT_MK_FILE" "$CONFIG_BUILD_MK_FILE"

  echo "Gerado/atualizado: .config"
  echo "Gerado: .config.mk"
  echo "Gerado: build/config.mk"
}

INTERACTIVE_MODE=0
if [ "$SYNC_ONLY" = "0" ] && [ "${NON_INTERACTIVE:-0}" != "1" ] && [ -t 0 ] && [ -t 1 ]; then
  INTERACTIVE_MODE=1
fi

prepare_kconfig_file

if [ "$INTERACTIVE_MODE" = "1" ]; then
  if [ ! -x "$MCONF_BIN" ] \
    || [ "$ROOT_DIR/tools/kconfig-linux/mconf.c" -nt "$MCONF_BIN" ] \
    || [ "$ROOT_DIR/tools/kconfig-linux/lxdialog/util.c" -nt "$MCONF_BIN" ]; then
    ./scripts/build-kconfig-mconf.sh
  fi

  rm -f "$MCONF_SAVED_MARKER"
  export KCONFIG_CONFIG="$CONFIG_KCONFIG_FILE"
  export MCONF_SAVED_MARKER
  "$MCONF_BIN" "$KCONFIG_SPEC_FILE"
fi

if [ "$INTERACTIVE_MODE" = "1" ]; then
  if [ -f "$MCONF_SAVED_MARKER" ]; then
    emit_make_config
  fi
else
  emit_make_config
fi
