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

if [ "$PWD" != "/Users/sandersouza/Developer/msxbarepi-circle" ]; then
  echo "[WARN] PWD atual: $PWD" >&2
  echo "[WARN] Recomenda-se usar /Users/sandersouza/Developer/msxbarepi-circle" >&2
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

ensure_default_kconfig() {
  cat > "$CONFIG_KCONFIG_FILE" <<'KCONF'
# Auto-generated baseline config for MSX BarePI
CONFIG_MSXBARE_DEBUG=y
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
  local debug=1 scc=1 fmpac=1 disk=1 megaram=1 msx2=1 bootscreen=0 msx2p=1 loadrom=1 loaddisk=1 onerom=0
  local onerom_path="" bootmode="NORM" patreon=""

  # shellcheck disable=SC1090
  source "$legacy"

  debug="${DEBUG:-1}"
  scc="${MSXBARE_FEAT_SCC:-1}"
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

  yn() { [ "$1" = "1" ] && echo "y" || echo "n"; }

  {
    echo "# Migrated from legacy .config"
    [ "$(yn "$debug")" = "y" ] && echo "CONFIG_MSXBARE_DEBUG=y" || echo "# CONFIG_MSXBARE_DEBUG is not set"
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
    return 0
  fi

  if grep -q '^DEBUG=' "$CONFIG_KCONFIG_FILE"; then
    write_kconfig_from_legacy "$CONFIG_KCONFIG_FILE"
    return 0
  fi

  ensure_default_kconfig
}

emit_make_config() {
  mkdir -p "$ROOT_DIR/build"

  local DEBUG
  local MSXBARE_FEAT_SCC
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

  DEBUG="$(kconfig_enabled MSXBARE_DEBUG)"
  MSXBARE_FEAT_SCC="$(kconfig_enabled MSXBARE_FEAT_SCC)"
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
