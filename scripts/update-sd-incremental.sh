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
KERNEL_IMG="${KERNEL_IMG:-}"
CONFIG_TXT="${CONFIG_TXT:-${PROJECT_ROOT}/sdcard/config.txt}"
CMDLINE_TXT="${CMDLINE_TXT:-${PROJECT_ROOT}/sdcard/cmdline.txt}"
INITRAMFS_IMG="${INITRAMFS_IMG:-${PROJECT_ROOT}/sdcard/msx.cpio}"
INITRAMFS_SRC_DIR="${INITRAMFS_SRC_DIR:-${PROJECT_ROOT}/roms/initramfs}"
SETTINGS_CFG="${SETTINGS_CFG:-${PROJECT_ROOT}/sdcard/msx.cfg}"
SD_KERNEL_NAME="${SD_KERNEL_NAME:-msx.img}"
SD_SETTINGS_NAME="${SD_SETTINGS_NAME:-msx.cfg}"
SD_MSX_DIR_NAME="${SD_MSX_DIR_NAME:-msx}"
FIRMWARE_DIR="${FIRMWARE_DIR:-${PROJECT_ROOT}/rpi-firmware}"
GAMES_SRC_DIR="${GAMES_SRC_DIR:-${PROJECT_ROOT}/roms/games}"
COPY_GAMES_TO_ROOT="${COPY_GAMES_TO_ROOT:-0}"
DEBUG="${DEBUG:-0}"
MSXBARE_BOOT_STRATEGY="${MSXBARE_BOOT_STRATEGY:-}"
MSXBARE_EMBED_INITRAMFS="${MSXBARE_EMBED_INITRAMFS:-1}"
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

resolve_boot_strategy() {
  if [ -n "$MSXBARE_BOOT_STRATEGY" ]; then
    normalize_boot_strategy "$MSXBARE_BOOT_STRATEGY"
    return 0
  fi
  if is_yes "$MSXBARE_EMBED_INITRAMFS"; then
    printf '%s' "standalone"
  else
    printf '%s' "multicore"
  fi
}

MSXBARE_BOOT_STRATEGY="$(resolve_boot_strategy)"
if [ "$MSXBARE_BOOT_STRATEGY" = "multicore" ]; then
  MSXBARE_EMBED_INITRAMFS=0
else
  MSXBARE_EMBED_INITRAMFS=1
fi

resolve_default_kernel_img() {
  local branch=""
  local issue_id=""
  local candidate=""

  if [ -n "$KERNEL_IMG" ]; then
    printf '%s' "$KERNEL_IMG"
    return 0
  fi

  branch="$(git -C "$PROJECT_ROOT" rev-parse --abbrev-ref HEAD 2>/dev/null || true)"
  issue_id="$(printf "%s" "$branch" | sed -n 's/^\([0-9][0-9]*\)-.*/\1/p')"
  if [ -n "$issue_id" ]; then
    candidate="${PROJECT_ROOT}/artifacts/kernel8-issue${issue_id}.img"
    if [ -f "$candidate" ]; then
      printf '%s' "$candidate"
      return 0
    fi
  fi

  for candidate in \
    "${PROJECT_ROOT}/artifacts/kernel8-default.img" \
    "${PROJECT_ROOT}/artifacts/kernel8-bootstrap.img" \
    "${PROJECT_ROOT}/build/kernel8.img" \
    "${PROJECT_ROOT}/build/src/kernel8.img" \
    "${PROJECT_ROOT}/src/kernel8.img"
  do
    if [ -f "$candidate" ]; then
      printf '%s' "$candidate"
      return 0
    fi
  done

  printf '%s' "${PROJECT_ROOT}/artifacts/kernel8-default.img"
}

ensure_runtime_root_dirs() {
  mkdir -p "${TARGET_VOLUME}/${SD_MSX_DIR_NAME}/roms" "${TARGET_VOLUME}/${SD_MSX_DIR_NAME}/disks" "${TARGET_VOLUME}/${SD_MSX_DIR_NAME}/cheats"
  echo "[OK] Diretorios MSX garantidos: ${SD_MSX_DIR_NAME}/roms ${SD_MSX_DIR_NAME}/disks ${SD_MSX_DIR_NAME}/cheats"
}

resolve_target_devices() {
  if [ -n "$SD_DEVICE" ]; then
    TARGET_DISK_DEVICE="$SD_DEVICE"
  fi

  if sdcard_is_macos; then
    local part_id=""
    local disk_id=""
    part_id="$(diskutil info -plist "$TARGET_VOLUME" 2>/dev/null | plutil -extract DeviceIdentifier raw -o - - 2>/dev/null || true)"
    disk_id="$(diskutil info -plist "$TARGET_VOLUME" 2>/dev/null | plutil -extract ParentWholeDisk raw -o - - 2>/dev/null || true)"
    if [ -n "$part_id" ]; then
      TARGET_PART_DEVICE="/dev/${part_id}"
    fi
    if [ -n "$disk_id" ]; then
      TARGET_DISK_DEVICE="${TARGET_DISK_DEVICE:-/dev/${disk_id}}"
    fi
    return 0
  fi

  if command -v findmnt >/dev/null 2>&1; then
    TARGET_PART_DEVICE="$(findmnt -n -o SOURCE --target "$TARGET_VOLUME" 2>/dev/null | head -n1 || true)"
  fi
  if [ -z "${TARGET_PART_DEVICE:-}" ]; then
    TARGET_PART_DEVICE="$(lsblk -pnro NAME,MOUNTPOINT 2>/dev/null | awk -v target=\"$TARGET_VOLUME\" '$2==target{print $1; exit}' || true)"
  fi
  if [ -n "${TARGET_PART_DEVICE:-}" ] && [ -z "${TARGET_DISK_DEVICE:-}" ]; then
    local parent=""
    parent="$(lsblk -nro PKNAME "$TARGET_PART_DEVICE" 2>/dev/null | head -n1 | tr -d '\n' || true)"
    if [ -n "$parent" ]; then
      TARGET_DISK_DEVICE="/dev/${parent}"
    fi
  fi
}

unmount_target_volume() {
  if [ -n "${TARGET_DISK_DEVICE:-}" ]; then
    sdcard_unmount_disk "$TARGET_DISK_DEVICE"
    return 0
  fi

  if [ -z "${TARGET_PART_DEVICE:-}" ]; then
    return 1
  fi

  if sdcard_is_macos; then
    diskutil unmount "$TARGET_VOLUME" >/dev/null 2>&1 || true
    return 0
  fi

  if command -v udisksctl >/dev/null 2>&1; then
    udisksctl unmount -b "$TARGET_PART_DEVICE" >/dev/null 2>&1 || true
  else
    sudo umount "$TARGET_PART_DEVICE" >/dev/null 2>&1 || true
  fi
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

drop_initramfs_line_if_present() {
  local file="$1"
  if grep -Eq '^[[:space:]]*initramfs[[:space:]]+' "$file"; then
    sed -E '/^[[:space:]]*initramfs[[:space:]]+.*/d' "$file" > "${file}.new"
    mv "${file}.new" "$file"
  fi
}

replace_kernel_block() {
  local file="$1"
  local kernel_name="$2"
  local initramfs_name="$3"
  awk -v kernel_name="$kernel_name" -v initramfs_name="$initramfs_name" '
    BEGIN { in_block = 0; replaced = 0 }
    /^#---KERNEL START---$/ {
      print
      print "kernel=" kernel_name
      if (initramfs_name != "") {
        print "initramfs " initramfs_name " followkernel"
      }
      in_block = 1
      replaced = 1
      next
    }
    /^#---KERNEL END---$/ {
      in_block = 0
      print
      next
    }
    in_block { next }
    { print }
    END { if (!replaced) exit 2 }
  ' "$file" > "${file}.new"
  local rc=$?
  if [ "$rc" -ne 0 ]; then
    rm -f "${file}.new"
    echo "[ERRO] Bloco #---KERNEL START---/#---KERNEL END--- ausente em config.txt" >&2
    return "$rc"
  fi
  mv "${file}.new" "$file"
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
scale=3
language=0
widescreen=0
scanline=0
gfx9000=0
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
  mkdir -p "${TARGET_VOLUME}/${SD_MSX_DIR_NAME}"
  echo "[INFO] Atualizando conteudo de ${GAMES_SRC_DIR} -> ${TARGET_VOLUME}/${SD_MSX_DIR_NAME}/"
  if command -v rsync >/dev/null 2>&1; then
    rsync -a --exclude '.*' --exclude '._*' "${GAMES_SRC_DIR}/" "${TARGET_VOLUME}/${SD_MSX_DIR_NAME}/"
  else
    find "$GAMES_SRC_DIR" -mindepth 1 -maxdepth 1 ! -name '.*' -print0 | while IFS= read -r -d '' item; do
      cp -R "$item" "${TARGET_VOLUME}/${SD_MSX_DIR_NAME}/"
    done
  fi
}

copy_cheats_incremental() {
  local cheats_src="${GAMES_SRC_DIR}/cheats"
  local cheats_dst="${TARGET_VOLUME}/${SD_MSX_DIR_NAME}/cheats"

  if [ ! -d "$cheats_src" ]; then
    echo "[INFO] Cheats nao encontrados em ${cheats_src}; pulando payload minimo de cheats."
    return 0
  fi

  if ! find "$cheats_src" -mindepth 1 -maxdepth 1 ! -name '.*' -print -quit | grep -q .; then
    echo "[INFO] Diretorio de cheats vazio (sem itens visiveis): ${cheats_src}"
    return 0
  fi

  if [ -e "$cheats_dst" ]; then
    echo "[SKIP] ${SD_MSX_DIR_NAME}/cheats ja existe no destino; update nao sobrescreve payload de cheats."
    return 0
  fi

  mkdir -p "$cheats_dst"
  echo "[INFO] Semeando cheats de ${cheats_src} -> ${cheats_dst}/"
  if command -v rsync >/dev/null 2>&1; then
    rsync -a --exclude '.*' --exclude '._*' "${cheats_src}/" "${cheats_dst}/"
  else
    find "$cheats_src" -mindepth 1 -maxdepth 1 ! -name '.*' -print0 | while IFS= read -r -d '' item; do
      cp -R "$item" "$cheats_dst/"
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

echo "[INFO] Boot strategy ativa: ${MSXBARE_BOOT_STRATEGY}"

if is_yes "$MSXBARE_EMBED_INITRAMFS"; then
  echo "[INFO] Boot strategy Standalone: nao gerando msx.cpio para update incremental."
elif [ -d "$INITRAMFS_SRC_DIR" ] && [ -x "${PROJECT_ROOT}/scripts/make-initramfs.sh" ]; then
  "${PROJECT_ROOT}/scripts/make-initramfs.sh" "$INITRAMFS_SRC_DIR" "$INITRAMFS_IMG"
fi

KERNEL_IMG="$(resolve_default_kernel_img)"
echo "[INFO] KERNEL_IMG efetivo: ${KERNEL_IMG}"

ensure_settings_cfg
ensure_runtime_root_dirs

if [ ! -f "$KERNEL_IMG" ]; then
  echo "[ERRO] Kernel obrigatorio nao encontrado: ${KERNEL_IMG}"
  echo "[ERRO] Rode 'make' ou informe KERNEL_IMG=/caminho/kernel8.img ou /caminho/msx.img; ele sera gravado como ${SD_KERNEL_NAME} no SD."
  exit 1
fi

config_src="$CONFIG_TXT"
config_tmp=""
if [ -f "$CONFIG_TXT" ]; then
  config_tmp="$(mktemp)"
  cp "$CONFIG_TXT" "$config_tmp"
  config_src="$config_tmp"
  if is_yes "$MSXBARE_EMBED_INITRAMFS"; then
    replace_kernel_block "$config_src" "$SD_KERNEL_NAME" ""
    echo "[INFO] Boot strategy Standalone: removendo linha initramfs do config.txt efetivo"
  else
    replace_kernel_block "$config_src" "$SD_KERNEL_NAME" "msx.cpio"
    echo "[INFO] Boot strategy Multicore: adicionando 'initramfs msx.cpio followkernel'"
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

copy_if_changed "$KERNEL_IMG" "${TARGET_VOLUME}/${SD_KERNEL_NAME}" "$SD_KERNEL_NAME"
copy_if_changed "$config_src" "${TARGET_VOLUME}/config.txt" "config.txt"
copy_if_changed "$CMDLINE_TXT" "${TARGET_VOLUME}/cmdline.txt" "cmdline.txt"
if is_yes "$MSXBARE_EMBED_INITRAMFS"; then
  echo "[SKIP] msx.cpio (Boot strategy Standalone)"
else
  copy_if_changed "$INITRAMFS_IMG" "${TARGET_VOLUME}/msx.cpio" "msx.cpio"
fi
copy_if_changed "$SETTINGS_CFG" "${TARGET_VOLUME}/${SD_SETTINGS_NAME}" "$SD_SETTINGS_NAME"

for fw in bootcode.bin start.elf fixup.dat bcm2710-rpi-3-b.dtb; do
  copy_if_changed "${FIRMWARE_DIR}/${fw}" "${TARGET_VOLUME}/${fw}" "$fw"
done

copy_games_incremental
if ! is_yes "$COPY_GAMES_TO_ROOT"; then
  copy_cheats_incremental
fi
cleanup_macos_junk

TARGET_PART_DEVICE=""
TARGET_DISK_DEVICE=""
resolve_target_devices

sync
sleep 1

if is_yes "$EJECT_AT_END"; then
  if [ -n "${TARGET_DISK_DEVICE:-}" ]; then
    sdcard_safe_eject_disk "$TARGET_DISK_DEVICE"
    echo "[OK] SD atualizado, sincronizado e ejetado: ${TARGET_DISK_DEVICE}"
  else
    echo "[WARN] Nao foi possivel determinar o disco para ejecao; tentando apenas desmontar o volume."
    if unmount_target_volume; then
      echo "[OK] SD atualizado, sincronizado e desmontado: ${TARGET_VOLUME}"
    else
      echo "[WARN] Nao foi possivel desmontar automaticamente o volume: ${TARGET_VOLUME}"
    fi
  fi
else
  if unmount_target_volume; then
    echo "[OK] SD atualizado, sincronizado e desmontado: ${TARGET_VOLUME}"
  else
    echo "[WARN] SD atualizado e sincronizado, mas nao foi possivel desmontar automaticamente: ${TARGET_VOLUME}"
  fi
fi

if [ -n "$config_tmp" ] && [ -f "$config_tmp" ]; then
  rm -f "$config_tmp"
fi
