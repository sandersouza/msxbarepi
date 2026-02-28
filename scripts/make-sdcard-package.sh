#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

PACKAGE_KERNEL_IMG="${PACKAGE_KERNEL_IMG:-${PROJECT_ROOT}/artifacts/kernel8-default.img}"
PACKAGE_CONFIG_TXT="${PACKAGE_CONFIG_TXT:-${PROJECT_ROOT}/sdcard/config.txt}"
PACKAGE_CMDLINE_TXT="${PACKAGE_CMDLINE_TXT:-${PROJECT_ROOT}/sdcard/cmdline.txt}"
PACKAGE_INITRAMFS_IMG="${PACKAGE_INITRAMFS_IMG:-${PROJECT_ROOT}/sdcard/msx.cpio}"
PACKAGE_SETTINGS_CFG="${PACKAGE_SETTINGS_CFG:-${PROJECT_ROOT}/sdcard/MSXBARE.CFG}"
PACKAGE_FIRMWARE_DIR="${PACKAGE_FIRMWARE_DIR:-${PROJECT_ROOT}/rpi-firmware/}"

PACKAGE_STAGE_DIR="${PACKAGE_STAGE_DIR:-${PROJECT_ROOT}/artifacts/.temp-sdcard-package}"
PACKAGE_TIMESTAMP="${PACKAGE_TIMESTAMP:-$(date +%Y%m%d%H%M)}"
PACKAGE_ZIP="${PACKAGE_ZIP:-${PROJECT_ROOT}/artifacts/sdcard-package-${PACKAGE_TIMESTAMP}.zip}"

required_fw_files="bootcode.bin start.elf fixup.dat bcm2710-rpi-3-b.dtb"

ensure_settings_cfg() {
  if [ -f "$PACKAGE_SETTINGS_CFG" ]; then
    return 0
  fi

  echo "[INFO] Arquivo de configuracao nao encontrado; gerando default: ${PACKAGE_SETTINGS_CFG}"
  mkdir -p "$(dirname "$PACKAGE_SETTINGS_CFG")"
  cat > "$PACKAGE_SETTINGS_CFG" <<'EOF'
overscan=0
widescreen=0
scanline=0
refresh=60
boot_mode=1
z80_turbo=0
rensha=0
scc_cart=1
debugger=1
audio_mute=0
#END
EOF
}

require_file() {
  local f="$1"
  if [ ! -f "$f" ]; then
    echo "[ERRO] Arquivo obrigatorio ausente: $f"
    exit 1
  fi
}

require_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "[ERRO] Comando obrigatorio nao encontrado: $1"
    exit 1
  fi
}

require_cmd zip
require_file "$PACKAGE_KERNEL_IMG"
require_file "$PACKAGE_CONFIG_TXT"
require_file "$PACKAGE_CMDLINE_TXT"
require_file "$PACKAGE_INITRAMFS_IMG"
ensure_settings_cfg
require_file "$PACKAGE_SETTINGS_CFG"

for fw in $required_fw_files; do
  require_file "${PACKAGE_FIRMWARE_DIR}/${fw}"
done

rm -rf "$PACKAGE_STAGE_DIR"
mkdir -p "$PACKAGE_STAGE_DIR"
mkdir -p "$(dirname "$PACKAGE_ZIP")"

cp "$PACKAGE_KERNEL_IMG" "${PACKAGE_STAGE_DIR}/kernel8.img"
cp "$PACKAGE_CONFIG_TXT" "${PACKAGE_STAGE_DIR}/config.txt"
cp "$PACKAGE_CMDLINE_TXT" "${PACKAGE_STAGE_DIR}/cmdline.txt"
cp "$PACKAGE_INITRAMFS_IMG" "${PACKAGE_STAGE_DIR}/msx.cpio"
cp "$PACKAGE_SETTINGS_CFG" "${PACKAGE_STAGE_DIR}/MSXBARE.CFG"

for fw in $required_fw_files; do
  cp "${PACKAGE_FIRMWARE_DIR}/${fw}" "${PACKAGE_STAGE_DIR}/${fw}"
done

rm -f "$PACKAGE_ZIP"
(
  cd "$PACKAGE_STAGE_DIR"
  zip -qry "$PACKAGE_ZIP" .
  rm -rf "$PACKAGE_STAGE_DIR"
)

echo "[OK] Pacote SD criado: $PACKAGE_ZIP"
