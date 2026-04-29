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
MAX_BYTES=$((128 * 1024 * 1024 * 1024))
DRY_RUN="${DRY_RUN:-0}"
NON_INTERACTIVE="${NON_INTERACTIVE:-0}"
AUTO_CONFIRM="${AUTO_CONFIRM:-0}"
DEBUG="${DEBUG:-0}"
MSXBARE_BOOT_STRATEGY="${MSXBARE_BOOT_STRATEGY:-}"
MSXBARE_EMBED_INITRAMFS="${MSXBARE_EMBED_INITRAMFS:-1}"
VIDEO_MODE_PRESET="${VIDEO_MODE_PRESET:-auto}"
COPY_GAMES_TO_ROOT="${COPY_GAMES_TO_ROOT:-}"
OFFLINE_DRY_PACKAGE="${OFFLINE_DRY_PACKAGE:-0}"
PACKAGE_ZIP="${PACKAGE_ZIP:-}"

KERNEL_IMG="${KERNEL_IMG:-}"
CONFIG_TXT="${CONFIG_TXT:-${PROJECT_ROOT}/sdcard/config.txt}"
CMDLINE_TXT="${CMDLINE_TXT:-${PROJECT_ROOT}/sdcard/cmdline.txt}"
INITRAMFS_IMG="${INITRAMFS_IMG:-${PROJECT_ROOT}/sdcard/msx.cpio}"
INITRAMFS_SRC_DIR="${INITRAMFS_SRC_DIR:-${PROJECT_ROOT}/roms/initramfs}"
GAMES_SRC_DIR="${GAMES_SRC_DIR:-${PROJECT_ROOT}/roms/games}"
FIRMWARE_DIR="${FIRMWARE_DIR:-${PROJECT_ROOT}/rpi-firmware/}"
SETTINGS_CFG="${SETTINGS_CFG:-${PROJECT_ROOT}/sdcard/msx.cfg}"
SD_KERNEL_NAME="${SD_KERNEL_NAME:-msx.img}"
SD_SETTINGS_NAME="${SD_SETTINGS_NAME:-msx.cfg}"
SD_MSX_DIR_NAME="${SD_MSX_DIR_NAME:-msx}"
IGNORED_SD_PAYLOAD_DIRS=("${PROJECT_ROOT}/sdcard/roms" "${PROJECT_ROOT}/sdcard/disks" "${PROJECT_ROOT}/sdcard/cheats" "${PROJECT_ROOT}/sdcard/msx")
CONFIG_EFFECTIVE_SRC="$CONFIG_TXT"
CONFIG_TMP=""

# Evita gravacao de AppleDouble/extended attributes em volumes FAT.
export COPYFILE_DISABLE=1

sdcard_require_prepare_deps
sdcard_require_interactive_selector

cleanup_temp_files() {
  if [ -n "${CONFIG_TMP:-}" ] && [ -f "${CONFIG_TMP:-}" ]; then
    rm -f "${CONFIG_TMP}"
  fi
}
trap cleanup_temp_files EXIT

is_path_under_dir() {
  local path="$1"
  local dir="$2"
  case "$path" in
    "$dir"/*|"$dir") return 0 ;;
    *) return 1 ;;
  esac
}

is_ignored_sd_payload_path() {
  local path="$1"
  for ignored in "${IGNORED_SD_PAYLOAD_DIRS[@]}"; do
    if is_path_under_dir "$path" "$ignored"; then
      return 0
    fi
  done
  return 1
}

plist_get() {
  local key="$1"
  local file="$2"
  /usr/bin/plutil -extract "$key" raw -o - "$file" 2>/dev/null || true
}

bytes_to_human() {
  local bytes="$1"
  /usr/bin/awk -v b="$bytes" 'BEGIN {
    split("B KB MB GB TB", u, " ");
    i = 1;
    while (b >= 1024 && i < 5) { b /= 1024; i++ }
    if (i == 1) printf "%.0f%s", b, u[i];
    else printf "%.1f%s", b, u[i];
  }'
}

has_minimum_rpi_boot_payload() {
  local volume="$1"

  [ -d "$volume" ] || return 1

  if [ ! -f "${volume}/${SD_KERNEL_NAME}" ]; then
    return 1
  fi

  return 0
}

select_sd_operation_mode() {
  local default_mode="$1"
  local selected=""

  if [ "$NON_INTERACTIVE" = "1" ]; then
    printf '%s' "$default_mode"
    return 0
  fi

  selected="$(select_with_fzf "Acao SD > " \
    "Cartao com estrutura de boot detectada. Escolha a acao." \
    "UPDATE (manter dados e atualizar arquivos)" \
    "FORMATAR (apagar e preparar do zero)")" || return 1

  case "$selected" in
    UPDATE*) printf '%s' "update" ;;
    *) printf '%s' "format" ;;
  esac
}

run_or_echo() {
  if [ "$DRY_RUN" = "1" ]; then
    echo "[DRY-RUN] $*"
  else
    "$@"
  fi
}

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

copy_games_payload_to_root() {
  local src_dir="$1"
  local target_dir="$2"

  if [ ! -d "$src_dir" ]; then
    echo "[WARN] Opcao de jogos ativa, mas diretorio ausente: ${src_dir}"
    return 0
  fi

  if ! find "$src_dir" -mindepth 1 -maxdepth 1 ! -name '.*' -print -quit | grep -q .; then
    echo "[INFO] Diretorio de jogos vazio (sem itens visiveis): ${src_dir}"
    return 0
  fi

  echo "[INFO] Copiando conteudo de ${src_dir} para ${target_dir}/${SD_MSX_DIR_NAME}/..."
  run_or_echo mkdir -p "${target_dir}/${SD_MSX_DIR_NAME}"
  if command -v rsync >/dev/null 2>&1; then
    run_or_echo rsync -a \
      --exclude '.*' \
      --exclude '._*' \
      "$src_dir"/ "${target_dir}/${SD_MSX_DIR_NAME}/"
  else
    while IFS= read -r item; do
      run_or_echo cp -R "$item" "${target_dir}/${SD_MSX_DIR_NAME}/"
    done < <(find "$src_dir" -mindepth 1 -maxdepth 1 ! -name '.*')
  fi
  echo "[OK] Jogos copiados para ${SD_MSX_DIR_NAME}/."
}

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
  local target_dir="$1"
  run_or_echo mkdir -p "${target_dir}/${SD_MSX_DIR_NAME}/roms" "${target_dir}/${SD_MSX_DIR_NAME}/disks" "${target_dir}/${SD_MSX_DIR_NAME}/cheats"
  echo "[OK] Diretorios MSX garantidos: ${SD_MSX_DIR_NAME}/roms ${SD_MSX_DIR_NAME}/disks ${SD_MSX_DIR_NAME}/cheats"
}

copy_cheats_payload_to_root() {
  local src_dir="$1"
  local target_dir="$2"
  local cheats_src="${src_dir}/cheats"
  local cheats_dst="${target_dir}/${SD_MSX_DIR_NAME}/cheats"

  if [ ! -d "$cheats_src" ]; then
    echo "[INFO] Cheats nao encontrados em ${cheats_src}; pulando payload minimo de cheats."
    return 0
  fi

  if ! find "$cheats_src" -mindepth 1 -maxdepth 1 ! -name '.*' -print -quit | grep -q .; then
    echo "[INFO] Diretorio de cheats vazio (sem itens visiveis): ${cheats_src}"
    return 0
  fi

  echo "[INFO] Copiando cheats de ${cheats_src} para ${cheats_dst}..."
  run_or_echo mkdir -p "$cheats_dst"
  if command -v rsync >/dev/null 2>&1; then
    run_or_echo rsync -a \
      --exclude '.*' \
      --exclude '._*' \
      "$cheats_src"/ "$cheats_dst"/
  else
    while IFS= read -r item; do
      run_or_echo cp -R "$item" "$cheats_dst/"
    done < <(find "$cheats_src" -mindepth 1 -maxdepth 1 ! -name '.*')
  fi
  echo "[OK] Cheats copiados para ${SD_MSX_DIR_NAME}/cheats."
}

cleanup_macos_junk() {
  local target_dir="$1"
  echo "[INFO] Removendo arquivos de metadata do macOS no cartao..."

  if [ "$DRY_RUN" = "1" ]; then
    run_or_echo find "$target_dir" -name '._*' -type f -delete
    run_or_echo find "$target_dir" -name '.DS_Store' -type f -delete
    run_or_echo rm -rf \
      "${target_dir}/.fseventsd" \
      "${target_dir}/.Spotlight-V100" \
      "${target_dir}/.Trashes" \
      "${target_dir}/.Trash" \
      "${target_dir}/.TemporaryItems" \
      "${target_dir}/.DocumentRevisions-V100" \
      "${target_dir}/.AppleDouble" \
      "${target_dir}/.apdisk"
    echo "[OK] Limpeza de metadata macOS concluida."
    return 0
  fi

  # Best-effort: nunca falhar o fluxo por permissao em dirs geridos pelo macOS.
  find "$target_dir" \
    \( -name '.fseventsd' -o -name '.Spotlight-V100' -o -name '.Trashes' -o -name '.Trash' -o -name '.TemporaryItems' -o -name '.DocumentRevisions-V100' -o -name '.AppleDouble' \) -prune \
    -o -name '._*' -type f -delete \
    -o -name '.DS_Store' -type f -delete \
    >/dev/null 2>&1 || true

  rm -rf \
    "${target_dir}/.fseventsd" \
    "${target_dir}/.Spotlight-V100" \
    "${target_dir}/.Trashes" \
    "${target_dir}/.Trash" \
    "${target_dir}/.TemporaryItems" \
    "${target_dir}/.DocumentRevisions-V100" \
    "${target_dir}/.AppleDouble" \
    "${target_dir}/.apdisk" \
    >/dev/null 2>&1 || true

  echo "[OK] Limpeza de metadata macOS concluida."
}

generate_dry_run_package() {
  local package_script="${PROJECT_ROOT}/scripts/make-sdcard-package.sh"
  if [ ! -x "$package_script" ]; then
    echo "[WARN] DRY_RUN package: script ausente ou nao executavel: ${package_script}"
    return 0
  fi

  local copy_games_flag="0"
  if [ "$copy_games_enabled" = "1" ]; then
    copy_games_flag="1"
  fi

  local package_timestamp=""
  local package_zip="${PACKAGE_ZIP:-}"
  if [ -z "$package_zip" ]; then
    package_timestamp="$(date +%Y%m%d%H%M)"
    package_zip="${PROJECT_ROOT}/artifacts/sdcard-package-${package_timestamp}.zip"
  fi

  echo "[INFO] DRY_RUN=1: gerando pacote SD em artifacts (simulacao de resultado final)..."
  PACKAGE_KERNEL_IMG="$KERNEL_IMG" \
  PACKAGE_CONFIG_TXT="$CONFIG_EFFECTIVE_SRC" \
  PACKAGE_CMDLINE_TXT="$CMDLINE_TXT" \
  PACKAGE_INITRAMFS_IMG="$INITRAMFS_IMG" \
  PACKAGE_BOOT_STRATEGY="$MSXBARE_BOOT_STRATEGY" \
  PACKAGE_EMBED_INITRAMFS="$MSXBARE_EMBED_INITRAMFS" \
  PACKAGE_SETTINGS_CFG="$SETTINGS_CFG" \
  PACKAGE_KERNEL_NAME="$SD_KERNEL_NAME" \
  PACKAGE_SETTINGS_NAME="$SD_SETTINGS_NAME" \
  PACKAGE_MSX_DIR_NAME="$SD_MSX_DIR_NAME" \
  PACKAGE_FIRMWARE_DIR="$FIRMWARE_DIR" \
  PACKAGE_COPY_GAMES_TO_ROOT="$copy_games_flag" \
  PACKAGE_GAMES_SRC_DIR="$GAMES_SRC_DIR" \
  PACKAGE_TIMESTAMP="$package_timestamp" \
  PACKAGE_ZIP="$package_zip" \
  "$package_script"

  echo "[OK] DRY_RUN package gerado: ${package_zip}"
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

ensure_config_tmp() {
  if [ -z "$CONFIG_TMP" ]; then
    CONFIG_TMP="$(mktemp)"
    cp "$CONFIG_TXT" "$CONFIG_TMP"
    CONFIG_EFFECTIVE_SRC="$CONFIG_TMP"
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
      echo "[INFO] VIDEO_MODE_PRESET=auto: mantendo EDID automatico"
      ;;
    1080|1080p)
      set_or_append_config_key "$file" "hdmi_group" "1"
      set_or_append_config_key "$file" "hdmi_mode" "16"
      set_or_append_config_key "$file" "framebuffer_width" "1920"
      set_or_append_config_key "$file" "framebuffer_height" "1080"
      echo "[INFO] VIDEO_MODE_PRESET=${preset}: forçando 1920x1080 (CEA 1080p60)"
      ;;
    720|720p|16:9)
      set_or_append_config_key "$file" "hdmi_group" "1"
      set_or_append_config_key "$file" "hdmi_mode" "4"
      set_or_append_config_key "$file" "framebuffer_width" "1280"
      set_or_append_config_key "$file" "framebuffer_height" "720"
      echo "[INFO] VIDEO_MODE_PRESET=${preset}: forçando 1280x720 (CEA 720p60)"
      ;;
    768|1024x768|4:3)
      set_or_append_config_key "$file" "hdmi_group" "2"
      set_or_append_config_key "$file" "hdmi_mode" "16"
      set_or_append_config_key "$file" "framebuffer_width" "1024"
      set_or_append_config_key "$file" "framebuffer_height" "768"
      echo "[INFO] VIDEO_MODE_PRESET=${preset}: forçando 1024x768 (DMT)"
      ;;
    *)
      echo "[ERRO] VIDEO_MODE_PRESET invalido: ${preset}"
      echo "[ERRO] Use: auto | 1080 | 720 | 768 | 16:9 | 4:3"
      exit 1
      ;;
  esac
}

ensure_settings_cfg() {
  if [ -f "$SETTINGS_CFG" ]; then
    return 0
  fi

  echo "[INFO] Arquivo de configuracao nao encontrado; gerando default: ${SETTINGS_CFG}"
  mkdir -p "$(dirname "$SETTINGS_CFG")"
  cat > "$SETTINGS_CFG" <<'EOF'
backend_id=msx.fmsx
proportion=16:9
scale=3
language=1
scanline=0
gfx9000=0
refresh=60
disk_rom=1
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

select_with_fzf() {
  local prompt="$1"
  local header="$2"
  shift 2
  local items=("$@")
  local selected=""
  local status=0

  if [ "${#items[@]}" -eq 0 ]; then
    return 1
  fi

  if [ "$NON_INTERACTIVE" = "1" ]; then
    printf '%s' "${items[0]}"
    return 0
  fi

  set +e
  selected="$(printf '%s\n' "${items[@]}" | FZF_DEFAULT_OPTS= fzf --height=15 --reverse --border --prompt="${prompt}" --header="${header}" --bind 'enter:accept')"
  status=$?
  set -e

  if [ "$status" -ne 0 ] || [ -z "$selected" ]; then
    return 1
  fi

  printf '%s' "$selected"
}

safe_eject_disk() {
  local disk="$1"

  if [ "$DRY_RUN" = "1" ]; then
    run_or_echo sync
    run_or_echo sleep 1
    if sdcard_is_macos; then
      run_or_echo diskutil unmountDisk "$disk" --force
      run_or_echo diskutil eject "$disk"
    else
      run_or_echo sdcard_unmount_disk "$disk"
      if command -v udisksctl >/dev/null 2>&1; then
        run_or_echo udisksctl power-off -b "$disk"
      fi
    fi
    return 0
  fi

  sdcard_safe_eject_disk "$disk"
}

KERNEL_IMG="$(resolve_default_kernel_img)"
echo "[INFO] KERNEL_IMG efetivo: ${KERNEL_IMG}"
if [ ! -f "$KERNEL_IMG" ]; then
  echo "[ERRO] Kernel obrigatorio nao encontrado: ${KERNEL_IMG}"
  echo "[ERRO] Rode 'make' ou informe KERNEL_IMG=/caminho/kernel8.img ou /caminho/msx.img; ele sera gravado como ${SD_KERNEL_NAME} no SD."
  exit 1
fi

skip_physical_disk=0
target_disk=""
selected_sd_mount=""
sd_operation_mode="format"
if [ "$DRY_RUN" = "1" ] && [ "$OFFLINE_DRY_PACKAGE" = "1" ]; then
  skip_physical_disk=1
  target_disk="DRY_RUN_OFFLINE"
  TARGET_VOLUME="${PROJECT_ROOT}/artifacts/.dryrun-sdroot"
  mkdir -p "$TARGET_VOLUME"
  echo "[INFO] OFFLINE_DRY_PACKAGE=1: pulando deteccao/formatacao/ejecao de disco fisico."
else
  if sdcard_is_macos; then
    disk_paths="$(diskutil list external physical | awk '/^\/dev\/disk[0-9]+/{print $1}')"
  else
    root_source="$(findmnt -n -o SOURCE / 2>/dev/null || true)"
    root_disk=""
    if [ -n "$root_source" ]; then
      root_parent="$(lsblk -nro PKNAME "$root_source" 2>/dev/null | head -n1)"
      if [ -n "$root_parent" ]; then
        root_disk="/dev/${root_parent}"
      fi
    fi

    disk_paths="$(
      lsblk -bdnpo NAME,SIZE,TRAN,RM,HOTPLUG,TYPE 2>/dev/null | \
      awk -v max="$MAX_BYTES" -v root="$root_disk" '
        $6=="disk" && $1!=root && $2>0 && $2<=max {
          is_candidate = ($3=="usb" || $4=="1" || $5=="1" || $1 ~ /\/dev\/mmcblk/);
          if (is_candidate) print $1;
        }'
    )"
  fi
  if [ -z "${disk_paths}" ]; then
    echo "[ERRO] Nenhum disco externo fisico encontrado."
    exit 1
  fi

  strict_candidates=()
  usb_candidates=()
  fallback_candidates=()

  while IFS= read -r disk; do
    [ -z "$disk" ] && continue

    if sdcard_is_macos; then
      info_file="$(mktemp)"
      diskutil info -plist "$disk" > "$info_file"

      size_bytes="$(plist_get TotalSize "$info_file")"
      protocol="$(plist_get Protocol "$info_file")"
      if [ -z "$protocol" ]; then
        protocol="$(plist_get BusProtocol "$info_file")"
      fi
      media_name="$(plist_get MediaName "$info_file")"
      model_name="$(plist_get DeviceModel "$info_file")"
      internal_flag="$(plist_get Internal "$info_file")"

      rm -f "$info_file"
    else
      disk_line="$(lsblk -bdnpo NAME,SIZE,TRAN,RM,HOTPLUG,MODEL "$disk" 2>/dev/null | head -n1)"
      size_bytes="$(printf '%s\n' "$disk_line" | awk '{print $2}')"
      protocol="$(printf '%s\n' "$disk_line" | awk '{print $3}')"
      rm_flag="$(printf '%s\n' "$disk_line" | awk '{print $4}')"
      hotplug_flag="$(printf '%s\n' "$disk_line" | awk '{print $5}')"
      media_name="$(printf '%s\n' "$disk_line" | cut -d' ' -f6-)"
      model_name="$media_name"
      internal_flag="false"
      if [ "${rm_flag:-0}" != "1" ] && [ "${hotplug_flag:-0}" != "1" ] && [ "${protocol:-}" != "usb" ] && [[ "$disk" != /dev/mmcblk* ]]; then
        internal_flag="true"
      fi
    fi

    [ -z "$size_bytes" ] && size_bytes=0
    [ "$size_bytes" -le 0 ] && continue
    [ "$size_bytes" -gt "$MAX_BYTES" ] && continue
    [ "$internal_flag" = "true" ] && continue
    [ "$disk" = "/dev/disk0" ] && continue

    description="$(printf "%s %s" "$media_name" "$model_name" | tr '[:upper:]' '[:lower:]')"
    sd_like="nao"
    if printf "%s" "$description" | grep -Eqi '(microsd|micro sd|sdxc|sdhc|sd card|sdcard|card reader|flash card)'; then
      sd_like="sim"
    fi

    size_h="$(bytes_to_human "$size_bytes")"
    line="${disk}  ${size_h}  ${protocol:-UNKNOWN}  SD:${sd_like}  ${media_name:-Unknown}"

    fallback_candidates+=("$line")
    if [ "${protocol:-}" = "USB" ]; then
      usb_candidates+=("$line")
      if [ "$sd_like" = "sim" ]; then
        strict_candidates+=("$line")
      fi
    fi
  done <<< "$disk_paths"

  candidates=()
  selection_reason=""
  if [ "${#strict_candidates[@]}" -gt 0 ]; then
    candidates=("${strict_candidates[@]}")
    selection_reason="Mostrando apenas discos USB com indicios de SD/MicroSD (<=128GB)."
  elif [ "${#usb_candidates[@]}" -gt 0 ]; then
    candidates=("${usb_candidates[@]}")
    selection_reason="Nenhum SD/MicroSD identificado. Mostrando discos USB (<=128GB)."
  elif [ "${#fallback_candidates[@]}" -gt 0 ]; then
    candidates=("${fallback_candidates[@]}")
    selection_reason="Nao foi possivel identificar USB. Mostrando discos externos fisicos (<=128GB)."
  else
    echo "[ERRO] Nenhum disco elegivel encontrado."
    exit 1
  fi

  echo "$selection_reason"
  echo
  echo "Selecione o disco do microSD:"

  if [ "$NON_INTERACTIVE" = "1" ]; then
    selected_line="${candidates[0]}"
    echo "[INFO] NON_INTERACTIVE=1: selecionado automaticamente: ${selected_line}"
  else
    selected_line="$(select_with_fzf "Disk > " "Use setas e Enter para selecionar" "${candidates[@]}")" || {
      echo "[ABORTADO] Selecao cancelada."
      exit 1
    }
  fi

  target_disk="$(printf '%s' "$selected_line" | awk '{print $1}')"
  if [ -z "$target_disk" ]; then
    echo "[ERRO] Falha ao identificar disco selecionado."
    exit 1
  fi

  selected_sd_mount="$(sdcard_discover_mounted_volume_for_disk "$target_disk" || true)"
  if [ -z "$selected_sd_mount" ] && [ "$DRY_RUN" != "1" ]; then
    sdcard_mount_disk_if_needed "$target_disk"
    selected_sd_mount="$(sdcard_discover_mounted_volume_for_disk "$target_disk" || true)"
  fi

  if [ -n "$selected_sd_mount" ] && has_minimum_rpi_boot_payload "$selected_sd_mount"; then
    echo "[INFO] Estrutura minima de boot detectada em ${selected_sd_mount}."
    sd_operation_mode="$(select_sd_operation_mode "update")" || {
      echo "[ABORTADO] Selecao de acao cancelada."
      exit 1
    }
    echo "[INFO] Acao selecionada: ${sd_operation_mode}"
  fi
fi

if [ "$sd_operation_mode" = "update" ]; then
  echo "[INFO] Executando atualizacao incremental no SD selecionado..."
  SD_DEVICE="$target_disk" \
  TARGET_VOLUME="${selected_sd_mount:-}" \
  KERNEL_IMG="$KERNEL_IMG" \
  CONFIG_TXT="$CONFIG_TXT" \
  CMDLINE_TXT="$CMDLINE_TXT" \
  INITRAMFS_IMG="$INITRAMFS_IMG" \
  INITRAMFS_SRC_DIR="$INITRAMFS_SRC_DIR" \
  SETTINGS_CFG="$SETTINGS_CFG" \
  SD_KERNEL_NAME="$SD_KERNEL_NAME" \
  SD_SETTINGS_NAME="$SD_SETTINGS_NAME" \
  SD_MSX_DIR_NAME="$SD_MSX_DIR_NAME" \
  FIRMWARE_DIR="$FIRMWARE_DIR" \
  GAMES_SRC_DIR="$GAMES_SRC_DIR" \
  COPY_GAMES_TO_ROOT="${COPY_GAMES_TO_ROOT:-0}" \
  DEBUG="$DEBUG" \
  VIDEO_MODE_PRESET="$VIDEO_MODE_PRESET" \
  MSXBARE_BOOT_STRATEGY="$MSXBARE_BOOT_STRATEGY" \
  MSXBARE_EMBED_INITRAMFS="$MSXBARE_EMBED_INITRAMFS" \
  EJECT_AT_END=0 \
  "${PROJECT_ROOT}/scripts/update-sd-incremental.sh"
  echo "[OK] Atualizacao incremental concluida."
  exit 0
fi

copy_games_enabled=0
if [ -n "$COPY_GAMES_TO_ROOT" ]; then
  if is_yes "$COPY_GAMES_TO_ROOT"; then
    copy_games_enabled=1
  fi
  echo "[INFO] COPY_GAMES_TO_ROOT predefinido: ${copy_games_enabled}"
elif [ "$NON_INTERACTIVE" = "1" ]; then
  copy_games_enabled=0
  echo "[INFO] NON_INTERACTIVE=1: COPY_GAMES_TO_ROOT default = nao"
else
  copy_games_choice="$(select_with_fzf "Games > " \
    "Copiar roms/games/* para ${SD_MSX_DIR_NAME}/ no cartao? (default: NAO)" \
    "NAO (padrao)" "SIM")" || copy_games_choice="NAO (padrao)"
  if [ "$copy_games_choice" = "SIM" ]; then
    copy_games_enabled=1
  fi
  echo "[INFO] Copia de jogos (fzf): ${copy_games_choice}"
fi

if [ "$skip_physical_disk" = "1" ]; then
  echo "[INFO] Confirmacao CAPTCHA ignorada (modo offline dry-run)."
elif [ "$AUTO_CONFIRM" = "1" ] && [ "$DRY_RUN" = "1" ]; then
  echo "[INFO] CAPTCHA ignorado (AUTO_CONFIRM=1 com DRY_RUN=1)."
else
  confirm_token="$(LC_ALL=C dd if=/dev/urandom bs=1 count=128 2>/dev/null | LC_ALL=C tr -dc 'A-Z2-9' | cut -c1-6)"
  echo
  echo "Confirmacao de seguranca:"
  echo "Digite o codigo exatamente como abaixo para formatar ${target_disk}:"
  echo "CAPTCHA: ${confirm_token}"
  printf "> "
  read -r typed_token

  if [ "$typed_token" != "$confirm_token" ]; then
    echo "[ABORTADO] CAPTCHA incorreto."
    exit 1
  fi
fi

if [ "$skip_physical_disk" = "1" ]; then
  echo
  echo "[INFO] Modo offline dry-run: nenhuma operacao de montagem/formatacao sera executada."
else
  echo
  echo "[INFO] Desmontando ${target_disk}..."
  if [ "$DRY_RUN" = "1" ]; then
    if sdcard_is_macos; then
      run_or_echo diskutil unmountDisk "$target_disk"
    else
      run_or_echo sdcard_unmount_disk "$target_disk"
    fi
  else
    sdcard_unmount_disk "$target_disk"
  fi

  echo "[INFO] Formatando ${target_disk} como FAT32 (MBR)..."
  if [ "$DRY_RUN" = "1" ]; then
    if sdcard_is_macos; then
      run_or_echo diskutil eraseDisk FAT32 "$VOLUME_NAME" MBRFormat "$target_disk"
    else
      echo "[DRY-RUN] sudo parted -s $target_disk mklabel msdos"
      echo "[DRY-RUN] sudo parted -s -a optimal $target_disk mkpart primary fat32 1MiB 100%"
      echo "[DRY-RUN] sudo mkfs.vfat -F 32 -n $VOLUME_NAME <primeira-particao-de-$target_disk>"
    fi
  else
    sdcard_format_disk "$target_disk" "$VOLUME_NAME"
    TARGET_VOLUME="$(sdcard_discover_mounted_volume_for_disk "$target_disk" || true)"
  fi

  if [ "$DRY_RUN" != "1" ] && [ ! -d "$TARGET_VOLUME" ]; then
    echo "[ERRO] Volume ${TARGET_VOLUME} nao foi montado apos formatacao."
    exit 1
  fi
fi

echo "[INFO] Boot strategy ativa: ${MSXBARE_BOOT_STRATEGY}"

if is_yes "$MSXBARE_EMBED_INITRAMFS"; then
  echo "[INFO] Boot strategy Standalone: initramfs embutido; nao gerando msx.cpio para o SD."
elif [ -n "$INITRAMFS_IMG" ] && [ -d "$INITRAMFS_SRC_DIR" ]; then
  if is_ignored_sd_payload_path "$INITRAMFS_SRC_DIR"; then
    echo "[INFO] Ignorando INITRAMFS_SRC_DIR em payload bloqueado: ${INITRAMFS_SRC_DIR}"
  elif [ -x "${PROJECT_ROOT}/scripts/make-initramfs.sh" ]; then
    echo "[INFO] Boot strategy Multicore: gerando initramfs (msx.cpio) a partir de ${INITRAMFS_SRC_DIR}..."
    if [ "$DRY_RUN" = "1" ] && [ "$OFFLINE_DRY_PACKAGE" != "1" ]; then
      echo "[DRY-RUN] ${PROJECT_ROOT}/scripts/make-initramfs.sh ${INITRAMFS_SRC_DIR} ${INITRAMFS_IMG}"
    else
      "${PROJECT_ROOT}/scripts/make-initramfs.sh" "$INITRAMFS_SRC_DIR" "$INITRAMFS_IMG"
    fi
  else
    echo "[WARN] Script de initramfs nao encontrado/executavel: ${PROJECT_ROOT}/scripts/make-initramfs.sh"
  fi
elif [ -n "$INITRAMFS_IMG" ]; then
  echo "[INFO] Diretório de ROMs para initramfs nao encontrado: ${INITRAMFS_SRC_DIR} (pulando geracao automatica)"
fi

for blocked in "${IGNORED_SD_PAYLOAD_DIRS[@]}"; do
  if [ -d "$blocked" ]; then
    echo "[INFO] Conteudo local ignorado por politica: ${blocked}"
  fi
done

ensure_settings_cfg
ensure_runtime_root_dirs "$TARGET_VOLUME"

if [ -f "$KERNEL_IMG" ]; then
  run_or_echo cp "$KERNEL_IMG" "${TARGET_VOLUME}/${SD_KERNEL_NAME}"
  echo "[OK] Copiado: ${SD_KERNEL_NAME}"
  if [ "$DRY_RUN" != "1" ] && [ ! -f "${TARGET_VOLUME}/${SD_KERNEL_NAME}" ]; then
    echo "[ERRO] Falha ao validar copia de ${SD_KERNEL_NAME} em ${TARGET_VOLUME}."
    exit 1
  fi
else
  echo "[ERRO] Kernel obrigatorio nao encontrado: ${KERNEL_IMG}"
  echo "[ERRO] Rode 'make' ou informe KERNEL_IMG=/caminho/kernel8.img ou /caminho/msx.img; ele sera gravado como ${SD_KERNEL_NAME} no SD."
  exit 1
fi

if [ -f "$CONFIG_TXT" ]; then
  config_tmp=""
  config_src="$CONFIG_TXT"
  CONFIG_EFFECTIVE_SRC="$config_src"
  ensure_config_tmp
  config_tmp="$CONFIG_TMP"
  config_src="$config_tmp"
  if is_yes "$MSXBARE_EMBED_INITRAMFS"; then
    replace_kernel_block "$config_src" "$SD_KERNEL_NAME" ""
    echo "[INFO] Boot strategy Standalone: removendo linha initramfs do config.txt efetivo"
  else
    replace_kernel_block "$config_src" "$SD_KERNEL_NAME" "msx.cpio"
    echo "[INFO] Boot strategy Multicore: adicionando 'initramfs msx.cpio followkernel'"
  fi
  if [ "$DEBUG" = "1" ]; then
    if grep -Eq '^[[:space:]]*disable_splash=' "$config_tmp"; then
      sed -E 's/^[[:space:]]*disable_splash=.*/disable_splash=1/' "$config_tmp" > "${config_tmp}.new"
      mv "${config_tmp}.new" "$config_tmp"
    else
      printf '\ndisable_splash=1\n' >> "$config_tmp"
    fi
    config_src="$config_tmp"
    echo "[INFO] DEBUG=1: forçando disable_splash=1 em config.txt"
  fi
  if [ "$VIDEO_MODE_PRESET" != "auto" ]; then
    apply_video_mode_preset "$config_src" "$VIDEO_MODE_PRESET"
  fi
  run_or_echo cp "$config_src" "${TARGET_VOLUME}/config.txt"
  CONFIG_EFFECTIVE_SRC="$config_src"
  echo "[OK] Copiado: config.txt"
else
  echo "[WARN] Nao encontrado: ${CONFIG_TXT}"
fi

if [ -f "$CMDLINE_TXT" ]; then
  run_or_echo cp "$CMDLINE_TXT" "${TARGET_VOLUME}/cmdline.txt"
  echo "[OK] Copiado: cmdline.txt"
  if [ "$DRY_RUN" != "1" ] && [ ! -f "${TARGET_VOLUME}/cmdline.txt" ]; then
    echo "[ERRO] Falha ao validar copia de cmdline.txt em ${TARGET_VOLUME}."
    exit 1
  fi
else
  echo "[INFO] cmdline.txt nao encontrado: ${CMDLINE_TXT} (opcional)"
fi

if is_yes "$MSXBARE_EMBED_INITRAMFS"; then
  echo "[SKIP] msx.cpio (Boot strategy Standalone)"
elif [ -f "$INITRAMFS_IMG" ]; then
  run_or_echo cp "$INITRAMFS_IMG" "${TARGET_VOLUME}/msx.cpio"
  echo "[OK] Copiado: msx.cpio"
else
  echo "[WARN] Nao encontrado: ${INITRAMFS_IMG}"
fi

if [ -f "$SETTINGS_CFG" ]; then
  run_or_echo cp "$SETTINGS_CFG" "${TARGET_VOLUME}/${SD_SETTINGS_NAME}"
  echo "[OK] Copiado: ${SD_SETTINGS_NAME}"
else
  echo "[WARN] Nao encontrado: ${SETTINGS_CFG}"
fi

if [ -n "$FIRMWARE_DIR" ]; then
  required_fw_files="bootcode.bin start.elf fixup.dat bcm2710-rpi-3-b.dtb"
  for fw in $required_fw_files; do
    if [ -f "${FIRMWARE_DIR}/${fw}" ]; then
      run_or_echo cp "${FIRMWARE_DIR}/${fw}" "${TARGET_VOLUME}/${fw}"
      echo "[OK] Copiado firmware: ${fw}"
    else
      echo "[WARN] Firmware ausente: ${FIRMWARE_DIR}/${fw}"
    fi
  done
else
  echo "[INFO] FIRMWARE_DIR nao definido. Se necessario, copie os firmwares do Raspberry Pi manualmente."
fi

if [ "$copy_games_enabled" = "1" ]; then
  copy_games_payload_to_root "$GAMES_SRC_DIR" "$TARGET_VOLUME"
else
  echo "[INFO] Copia completa de jogos para ${SD_MSX_DIR_NAME}/: desativada."
  copy_cheats_payload_to_root "$GAMES_SRC_DIR" "$TARGET_VOLUME"
fi

if [ "$DRY_RUN" = "1" ]; then
  generate_dry_run_package
fi

cleanup_macos_junk "$TARGET_VOLUME"

echo "[INFO] Sincronizando escrita final no cartao..."
run_or_echo sync
if [ "$DRY_RUN" != "1" ]; then
  sleep 1
fi

if [ "$skip_physical_disk" = "0" ]; then
  safe_eject_disk "$target_disk"
fi
echo
if [ "$DRY_RUN" = "1" ]; then
  if [ "$skip_physical_disk" = "1" ]; then
    echo "[OK] Validacao em dry-run offline concluida (sem disco fisico)."
  else
    echo "[OK] Validacao em dry-run concluida (sem persistir alteracoes no disco): ${target_disk}"
  fi
else
  echo "[OK] MicroSD preparado e ejetado: ${target_disk}"
fi
