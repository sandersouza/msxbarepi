#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

PACKAGE_KERNEL_IMG="${PACKAGE_KERNEL_IMG:-${PROJECT_ROOT}/artifacts/kernel8-default.img}"
PACKAGE_CONFIG_TXT="${PACKAGE_CONFIG_TXT:-${PROJECT_ROOT}/sdcard/config.txt}"
PACKAGE_CMDLINE_TXT="${PACKAGE_CMDLINE_TXT:-${PROJECT_ROOT}/sdcard/cmdline.txt}"
PACKAGE_INITRAMFS_IMG="${PACKAGE_INITRAMFS_IMG:-${PROJECT_ROOT}/sdcard/msx.cpio}"
PACKAGE_EMBED_INITRAMFS="${PACKAGE_EMBED_INITRAMFS:-1}"
PACKAGE_SETTINGS_CFG="${PACKAGE_SETTINGS_CFG:-${PROJECT_ROOT}/sdcard/msxbarepi.cfg}"
PACKAGE_FIRMWARE_DIR="${PACKAGE_FIRMWARE_DIR:-${PROJECT_ROOT}/rpi-firmware/}"
PACKAGE_COPY_GAMES_TO_ROOT="${PACKAGE_COPY_GAMES_TO_ROOT:-0}"
PACKAGE_GAMES_SRC_DIR="${PACKAGE_GAMES_SRC_DIR:-${PROJECT_ROOT}/roms/games}"

PACKAGE_STAGE_DIR="${PACKAGE_STAGE_DIR:-${PROJECT_ROOT}/artifacts/.temp-sdcard-package}"
PACKAGE_TIMESTAMP="${PACKAGE_TIMESTAMP:-$(date +%Y%m%d%H%M)}"
PACKAGE_ZIP="${PACKAGE_ZIP:-${PROJECT_ROOT}/artifacts/sdcard-package-${PACKAGE_TIMESTAMP}.zip}"

required_fw_files="bootcode.bin start.elf fixup.dat bcm2710-rpi-3-b.dtb"

# Normaliza caminhos para absolutos quando necessário (evita falha após 'cd' no stage).
case "$PACKAGE_ZIP" in
  /*) ;;
  *) PACKAGE_ZIP="${PROJECT_ROOT}/${PACKAGE_ZIP}" ;;
esac

# Evita gravacao de AppleDouble/extended attributes no stage ZIP.
export COPYFILE_DISABLE=1

ensure_settings_cfg() {
  if [ -f "$PACKAGE_SETTINGS_CFG" ]; then
    return 0
  fi

  echo "[INFO] Arquivo de configuracao nao encontrado; gerando default: ${PACKAGE_SETTINGS_CFG}"
  mkdir -p "$(dirname "$PACKAGE_SETTINGS_CFG")"
  cat > "$PACKAGE_SETTINGS_CFG" <<'EOF'
backend_id=msx.fmsx
scale=2
language=1
resolution=2
scanline=0
gfx9000=0
refresh=60
disk_rom=1
kanji_rom=1
boot_mode=0
machine=0
rammapper_kb=256
megaram_kb=0
z80_turbo=0
rensha=0
joy_map_up=16385
joy_map_down=20481
joy_map_left=16384
joy_map_right=20480
joy_map_button1=8192
joy_map_button2=8193
fm_music=0
scc_plus=1
scc_dual=0
debugger=0
audio_gain=100
cart_a_path=
cart_b_path=
disk_a_path=
disk_b_path=
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
if [ "$PACKAGE_EMBED_INITRAMFS" != "1" ]; then
  require_file "$PACKAGE_INITRAMFS_IMG"
fi
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
if [ "$PACKAGE_EMBED_INITRAMFS" != "1" ]; then
  cp "$PACKAGE_INITRAMFS_IMG" "${PACKAGE_STAGE_DIR}/msx.cpio"
fi
cp "$PACKAGE_SETTINGS_CFG" "${PACKAGE_STAGE_DIR}/msxbarepi.cfg"

for fw in $required_fw_files; do
  cp "${PACKAGE_FIRMWARE_DIR}/${fw}" "${PACKAGE_STAGE_DIR}/${fw}"
done

if [ "$PACKAGE_COPY_GAMES_TO_ROOT" = "1" ]; then
  if [ -d "$PACKAGE_GAMES_SRC_DIR" ]; then
    if command -v rsync >/dev/null 2>&1; then
      rsync -a \
        --exclude '.*' \
        --exclude '._*' \
        "${PACKAGE_GAMES_SRC_DIR}/" "${PACKAGE_STAGE_DIR}/"
    else
      while IFS= read -r item; do
        cp -R "$item" "${PACKAGE_STAGE_DIR}/"
      done < <(find "$PACKAGE_GAMES_SRC_DIR" -mindepth 1 -maxdepth 1 ! -name '.*')
    fi
    echo "[OK] Conteudo de games copiado para raiz do pacote."
  else
    echo "[WARN] PACKAGE_COPY_GAMES_TO_ROOT=1, mas diretorio nao encontrado: ${PACKAGE_GAMES_SRC_DIR}"
  fi
fi

rm -f "$PACKAGE_ZIP"
(
  cd "$PACKAGE_STAGE_DIR"
  zip -qry "$PACKAGE_ZIP" .
  rm -rf "$PACKAGE_STAGE_DIR"
)

echo "[OK] Pacote SD criado: $PACKAGE_ZIP"
