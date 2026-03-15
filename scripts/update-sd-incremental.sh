#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
. "${PROJECT_ROOT}/scripts/sdcard-common.sh"

if [ "${EUID:-$(id -u)}" -eq 0 ]; then
  echo "[ERRO] Este script nao pode ser executado como root."
  exit 1
fi

VOLUME_NAME="${VOLUME_NAME:-RPIBOOT}"
TARGET_VOLUME="${TARGET_VOLUME:-$(sdcard_default_target_volume "$VOLUME_NAME")}"
SD_DEVICE="${SD_DEVICE:-}"
KERNEL_IMG="${KERNEL_IMG:-${PROJECT_ROOT}/artifacts/kernel8-default.img}"
CONFIG_TXT="${CONFIG_TXT:-${PROJECT_ROOT}/sdcard/config.txt}"
CMDLINE_TXT="${CMDLINE_TXT:-${PROJECT_ROOT}/sdcard/cmdline.txt}"
INITRAMFS_IMG="${INITRAMFS_IMG:-${PROJECT_ROOT}/sdcard/msx.cpio}"
INITRAMFS_SRC_DIR="${INITRAMFS_SRC_DIR:-${PROJECT_ROOT}/roms/initramfs}"
SETTINGS_CFG="${SETTINGS_CFG:-${PROJECT_ROOT}/sdcard/MSXBARE.CFG}"
FIRMWARE_DIR="${FIRMWARE_DIR:-${PROJECT_ROOT}/rpi-firmware}"
GAMES_SRC_DIR="${GAMES_SRC_DIR:-${PROJECT_ROOT}/roms/games}"
COPY_GAMES_TO_ROOT="${COPY_GAMES_TO_ROOT:-0}"
DEBUG="${DEBUG:-0}"
VIDEO_MODE_PRESET="${VIDEO_MODE_PRESET:-auto}"
EJECT_AT_END="${EJECT_AT_END:-0}"

export COPYFILE_DISABLE=1
sdcard_require_prepare_deps

if [ -n "$SD_DEVICE" ] && [ "${SD_DEVICE#/dev/}" = "$SD_DEVICE" ]; then
  SD_DEVICE="/dev/${SD_DEVICE}"
fi

if [ -n "$SD_DEVICE" ]; then
  detected_volume="$(sdcard_discover_mounted_volume_for_disk "$SD_DEVICE" || true)"
  if [ -z "$detected_volume" ]; then
    sdcard_mount_disk_if_needed "$SD_DEVICE"
    detected_volume="$(sdcard_discover_mounted_volume_for_disk "$SD_DEVICE" || true)"
  fi
  if [ -n "$detected_volume" ]; then
    TARGET_VOLUME="$detected_volume"
    echo "[INFO] SD_DEVICE detectado: ${SD_DEVICE} -> ${TARGET_VOLUME}"
  fi
fi

if [ ! -d "$TARGET_VOLUME" ]; then
  echo "[ERRO] Volume nao montado: ${TARGET_VOLUME}"
  if [ -n "$SD_DEVICE" ]; then
    echo "[ERRO] Nao foi possivel resolver volume montado para SD_DEVICE=${SD_DEVICE}."
  fi
  exit 1
fi

is_yes() {
  case "${1:-}" in
    1|y|Y|yes|YES|true|TRUE|sim|SIM|s|S) return 0 ;;
    *) return 1 ;;
  esac
}

set_or_append_config_key() {
  local file="$1"
  local key="$2"
  local value="$3"
  if grep -Eq "^[[:space:]]*${key}=" "$file"; then
    sed -E "s|^[[:space:]]*${key}=.*|${key}=${value}|" "$file" > "${file}.new"
    mv "${file}.new" "$file"
  else
    printf '%s=%s\n' "$key" "$value" >> "$file"
  fi
}

drop_config_key_if_present() {
  local file="$1"
  local key="$2"
  if grep -Eq "^[[:space:]]*${key}=" "$file"; then
    sed -E "/^[[:space:]]*${key}=.*/d" "$file" > "${file}.new"
    mv "${file}.new" "$file"
  fi
}

apply_video_mode_preset() {
  local file="$1"
  local preset="$2"
  case "$preset" in
    auto|"")
      drop_config_key_if_present "$file" "hdmi_group"
      drop_config_key_if_present "$file" "hdmi_mode"
      drop_config_key_if_present "$file" "framebuffer_width"
      drop_config_key_if_present "$file" "framebuffer_height"
      ;;
    1080|1080p)
      set_or_append_config_key "$file" "hdmi_group" "1"
      set_or_append_config_key "$file" "hdmi_mode" "16"
      set_or_append_config_key "$file" "framebuffer_width" "1920"
      set_or_append_config_key "$file" "framebuffer_height" "1080"
      ;;
    720|720p|16:9)
      set_or_append_config_key "$file" "hdmi_group" "1"
      set_or_append_config_key "$file" "hdmi_mode" "4"
      set_or_append_config_key "$file" "framebuffer_width" "1280"
      set_or_append_config_key "$file" "framebuffer_height" "720"
      ;;
    768|1024x768|4:3)
      set_or_append_config_key "$file" "hdmi_group" "2"
      set_or_append_config_key "$file" "hdmi_mode" "16"
      set_or_append_config_key "$file" "framebuffer_width" "1024"
      set_or_append_config_key "$file" "framebuffer_height" "768"
      ;;
    *)
      echo "[ERRO] VIDEO_MODE_PRESET invalido: ${preset}"
      exit 1
      ;;
  esac
}

ensure_settings_cfg() {
  if [ -f "$SETTINGS_CFG" ]; then
    return 0
  fi

  mkdir -p "$(dirname "$SETTINGS_CFG")"
  cat > "$SETTINGS_CFG" <<'EOF'
scale=250
resolution=0
language=0
widescreen=0
scanline=0
refresh=60
disk_rom=1
boot_mode=0
machine=0
z80_turbo=0
rensha=0
scc_cart=0
fm_music=0
debugger=0
audio_gain=100
cart_a_path=EMPTY
cart_b_path=EMPTY
disk_a_path=EMPTY
disk_b_path=EMPTY
#END
EOF
}

copy_if_changed() {
  local src="$1"
  local dst="$2"
  local label="$3"

  if [ ! -f "$src" ]; then
    echo "[WARN] Ausente: ${src}"
    return 0
  fi

  if [ -f "$dst" ] && cmp -s "$src" "$dst"; then
    echo "[SKIP] ${label} (sem alteracoes)"
    return 0
  fi

  cp "$src" "$dst"
  echo "[COPY] ${label}"
}

copy_games_incremental() {
  if ! is_yes "$COPY_GAMES_TO_ROOT"; then
    return 0
  fi
  if [ ! -d "$GAMES_SRC_DIR" ]; then
    echo "[WARN] GAMES_SRC_DIR ausente: ${GAMES_SRC_DIR}"
    return 0
  fi
  echo "[INFO] Atualizando conteudo de ${GAMES_SRC_DIR} -> ${TARGET_VOLUME}/"
  if command -v rsync >/dev/null 2>&1; then
    rsync -a --exclude '.*' --exclude '._*' "${GAMES_SRC_DIR}/" "${TARGET_VOLUME}/"
  else
    find "$GAMES_SRC_DIR" -mindepth 1 -maxdepth 1 ! -name '.*' -print0 | while IFS= read -r -d '' item; do
      cp -R "$item" "${TARGET_VOLUME}/"
    done
  fi
}

cleanup_macos_junk() {
  find "$TARGET_VOLUME" \
    \( -name '.fseventsd' -o -name '.Spotlight-V100' -o -name '.Trashes' -o -name '.Trash' -o -name '.TemporaryItems' -o -name '.DocumentRevisions-V100' -o -name '.AppleDouble' \) -prune \
    -o -name '._*' -type f -delete \
    -o -name '.DS_Store' -type f -delete \
    >/dev/null 2>&1 || true
}

if [ -d "$INITRAMFS_SRC_DIR" ] && [ -x "${PROJECT_ROOT}/scripts/make-initramfs.sh" ]; then
  "${PROJECT_ROOT}/scripts/make-initramfs.sh" "$INITRAMFS_SRC_DIR" "$INITRAMFS_IMG"
fi

ensure_settings_cfg

config_src="$CONFIG_TXT"
config_tmp=""
if [ -f "$CONFIG_TXT" ]; then
  if [ "$DEBUG" = "1" ] || [ "$VIDEO_MODE_PRESET" != "auto" ]; then
    config_tmp="$(mktemp)"
    cp "$CONFIG_TXT" "$config_tmp"
    config_src="$config_tmp"
  fi
  if [ "$DEBUG" = "1" ]; then
    if grep -Eq '^[[:space:]]*disable_splash=' "$config_src"; then
      sed -E 's/^[[:space:]]*disable_splash=.*/disable_splash=0/' "$config_src" > "${config_src}.new"
      mv "${config_src}.new" "$config_src"
    else
      printf '\ndisable_splash=0\n' >> "$config_src"
    fi
  fi
  if [ "$VIDEO_MODE_PRESET" != "auto" ]; then
    apply_video_mode_preset "$config_src" "$VIDEO_MODE_PRESET"
  fi
fi

copy_if_changed "$KERNEL_IMG" "${TARGET_VOLUME}/kernel8.img" "kernel8.img"
copy_if_changed "$config_src" "${TARGET_VOLUME}/config.txt" "config.txt"
copy_if_changed "$CMDLINE_TXT" "${TARGET_VOLUME}/cmdline.txt" "cmdline.txt"
copy_if_changed "$INITRAMFS_IMG" "${TARGET_VOLUME}/msx.cpio" "msx.cpio"
copy_if_changed "$SETTINGS_CFG" "${TARGET_VOLUME}/MSXBARE.CFG" "MSXBARE.CFG"

for fw in bootcode.bin start.elf fixup.dat bcm2710-rpi-3-b.dtb; do
  copy_if_changed "${FIRMWARE_DIR}/${fw}" "${TARGET_VOLUME}/${fw}" "$fw"
done

copy_games_incremental
cleanup_macos_junk

sync
sleep 1

if is_yes "$EJECT_AT_END"; then
  if [ -n "$SD_DEVICE" ]; then
    sdcard_safe_eject_disk "$SD_DEVICE"
    echo "[OK] SD atualizado e ejetado: ${SD_DEVICE}"
  elif sdcard_is_macos && command -v diskutil >/dev/null 2>&1; then
    disk_id="$(diskutil info -plist "$TARGET_VOLUME" 2>/dev/null | plutil -extract ParentWholeDisk raw -o - - 2>/dev/null || true)"
    if [ -n "$disk_id" ]; then
      sdcard_safe_eject_disk "/dev/${disk_id}"
      echo "[OK] SD atualizado e ejetado: /dev/${disk_id}"
    else
      echo "[WARN] Nao foi possivel determinar ParentWholeDisk para ejetar."
    fi
  else
    echo "[WARN] EJECT_AT_END=1 sem SD_DEVICE; ejecao automatica indisponivel."
  fi
else
  echo "[OK] SD atualizado incrementalmente em ${TARGET_VOLUME}"
fi

if [ -n "$config_tmp" ] && [ -f "$config_tmp" ]; then
  rm -f "$config_tmp"
fi
