#!/usr/bin/env bash
set -euo pipefail

if [ "${EUID:-$(id -u)}" -eq 0 ]; then
  echo "[ERRO] Este script nao pode ser executado como root."
  exit 1
fi

if ! command -v diskutil >/dev/null 2>&1; then
  echo "[ERRO] 'diskutil' nao encontrado (macOS obrigatorio)."
  exit 1
fi

if ! command -v fzf >/dev/null 2>&1; then
  echo "[ERRO] 'fzf' nao encontrado."
  echo "Instale com: brew install fzf"
  exit 1
fi

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VOLUME_NAME="${VOLUME_NAME:-RPIBOOT}"
TARGET_VOLUME="/Volumes/${VOLUME_NAME}"
MAX_BYTES=$((128 * 1024 * 1024 * 1024))
DRY_RUN="${DRY_RUN:-0}"
NON_INTERACTIVE="${NON_INTERACTIVE:-0}"
AUTO_CONFIRM="${AUTO_CONFIRM:-0}"
DEBUG_BUILD="${DEBUG_BUILD:-0}"
VIDEO_MODE_PRESET="${VIDEO_MODE_PRESET:-auto}"
COPY_GAMES_TO_ROOT="${COPY_GAMES_TO_ROOT:-}"

KERNEL_IMG="${KERNEL_IMG:-${PROJECT_ROOT}/artifacts/kernel8-default.img}"
CONFIG_TXT="${CONFIG_TXT:-${PROJECT_ROOT}/sdcard/config.txt}"
CMDLINE_TXT="${CMDLINE_TXT:-${PROJECT_ROOT}/sdcard/cmdline.txt}"
INITRAMFS_IMG="${INITRAMFS_IMG:-${PROJECT_ROOT}/sdcard/msx.cpio}"
INITRAMFS_SRC_DIR="${INITRAMFS_SRC_DIR:-${PROJECT_ROOT}/roms/initramfs}"
GAMES_SRC_DIR="${GAMES_SRC_DIR:-${PROJECT_ROOT}/roms/games}"
FIRMWARE_DIR="${FIRMWARE_DIR:-${PROJECT_ROOT}/rpi-firmware/}"
SETTINGS_CFG="${SETTINGS_CFG:-${PROJECT_ROOT}/sdcard/MSXBARE.CFG}"
IGNORED_SD_PAYLOAD_DIRS=("${PROJECT_ROOT}/sdcard/roms" "${PROJECT_ROOT}/sdcard/disks")

# Evita gravacao de AppleDouble/extended attributes em volumes FAT.
export COPYFILE_DISABLE=1

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

  echo "[INFO] Copiando conteudo de ${src_dir} para raiz do cartao..."
  if command -v rsync >/dev/null 2>&1; then
    run_or_echo rsync -a \
      --exclude '.*' \
      --exclude '._*' \
      "$src_dir"/ "$target_dir"/
  else
    while IFS= read -r item; do
      run_or_echo cp -R "$item" "$target_dir/"
    done < <(find "$src_dir" -mindepth 1 -maxdepth 1 ! -name '.*')
  fi
  echo "[OK] Jogos copiados para raiz do cartao."
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
audio_mute=0
audio_gain=100
cart_a_path=EMPTY
cart_b_path=EMPTY
disk_a_path=EMPTY
disk_b_path=EMPTY
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
    run_or_echo diskutil unmountDisk "$disk"
    run_or_echo diskutil eject "$disk"
    return 0
  fi

  sync
  sleep 1

  # Spotlight/mdsync pode segurar o volume logo apos a copia.
  diskutil unmountDisk "$disk" >/dev/null 2>&1 || true
  sleep 1

  if diskutil eject "$disk" >/dev/null 2>&1; then
    return 0
  fi

  sleep 2
  diskutil unmountDisk "$disk" >/dev/null 2>&1 || true
  diskutil eject "$disk" >/dev/null
}

disk_paths="$(diskutil list external physical | awk '/^\/dev\/disk[0-9]+/{print $1}')"
if [ -z "${disk_paths}" ]; then
  echo "[ERRO] Nenhum disco externo fisico encontrado."
  exit 1
fi

strict_candidates=()
usb_candidates=()
fallback_candidates=()

while IFS= read -r disk; do
  [ -z "$disk" ] && continue

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

echo "[INFO] KERNEL_IMG padrao: ${KERNEL_IMG}"

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
    "Copiar roms/games/* para a raiz do cartao? (default: NAO)" \
    "NAO (padrao)" "SIM")" || copy_games_choice="NAO (padrao)"
  if [ "$copy_games_choice" = "SIM" ]; then
    copy_games_enabled=1
  fi
  echo "[INFO] Copia de jogos (fzf): ${copy_games_choice}"
fi

if [ "$AUTO_CONFIRM" = "1" ] && [ "$DRY_RUN" = "1" ]; then
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

echo
echo "[INFO] Desmontando ${target_disk}..."
if [ "$DRY_RUN" = "1" ]; then
  run_or_echo diskutil unmountDisk "$target_disk"
else
  run_or_echo diskutil unmountDisk "$target_disk" >/dev/null
fi

echo "[INFO] Formatando ${target_disk} como FAT32 (MBR)..."
if [ "$DRY_RUN" = "1" ]; then
  run_or_echo diskutil eraseDisk FAT32 "$VOLUME_NAME" MBRFormat "$target_disk"
else
  run_or_echo diskutil eraseDisk FAT32 "$VOLUME_NAME" MBRFormat "$target_disk" >/dev/null
fi

if [ "$DRY_RUN" != "1" ] && [ ! -d "$TARGET_VOLUME" ]; then
  echo "[ERRO] Volume ${TARGET_VOLUME} nao foi montado apos formatacao."
  exit 1
fi

if [ -n "$INITRAMFS_IMG" ] && [ -d "$INITRAMFS_SRC_DIR" ]; then
  if is_ignored_sd_payload_path "$INITRAMFS_SRC_DIR"; then
    echo "[INFO] Ignorando INITRAMFS_SRC_DIR em payload bloqueado: ${INITRAMFS_SRC_DIR}"
  elif [ -x "${PROJECT_ROOT}/scripts/make-initramfs.sh" ]; then
    echo "[INFO] Gerando initramfs (msx.cpio) a partir de ${INITRAMFS_SRC_DIR}..."
    if [ "$DRY_RUN" = "1" ]; then
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

if [ -f "$KERNEL_IMG" ]; then
  run_or_echo cp "$KERNEL_IMG" "${TARGET_VOLUME}/kernel8.img"
  echo "[OK] Copiado: kernel8.img"
else
  echo "[WARN] Nao encontrado: ${KERNEL_IMG}"
fi

if [ -f "$CONFIG_TXT" ]; then
  if ! grep -Eq '^[[:space:]]*initramfs[[:space:]]+msx\.cpio([[:space:]]+|$)' "$CONFIG_TXT"; then
    echo "[ERRO] config.txt sem linha obrigatoria de initramfs (ex.: 'initramfs msx.cpio followkernel')."
    echo "[ERRO] Ajuste ${CONFIG_TXT} antes de preparar o SD."
    exit 1
  fi
  config_src="$CONFIG_TXT"
  config_tmp=""
  if [ "$DEBUG_BUILD" = "1" ]; then
    config_tmp="$(mktemp)"
    cp "$CONFIG_TXT" "$config_tmp"
    if grep -Eq '^[[:space:]]*disable_splash=' "$config_tmp"; then
      sed -E 's/^[[:space:]]*disable_splash=.*/disable_splash=0/' "$config_tmp" > "${config_tmp}.new"
      mv "${config_tmp}.new" "$config_tmp"
    else
      printf '\ndisable_splash=0\n' >> "$config_tmp"
    fi
    config_src="$config_tmp"
    echo "[INFO] DEBUG_BUILD=1: forçando disable_splash=0 em config.txt"
  fi
  if [ "$VIDEO_MODE_PRESET" != "auto" ]; then
    if [ -z "$config_tmp" ]; then
      config_tmp="$(mktemp)"
      cp "$CONFIG_TXT" "$config_tmp"
      config_src="$config_tmp"
    fi
    apply_video_mode_preset "$config_src" "$VIDEO_MODE_PRESET"
  fi
  run_or_echo cp "$config_src" "${TARGET_VOLUME}/config.txt"
  if [ -n "$config_tmp" ] && [ -f "$config_tmp" ]; then
    rm -f "$config_tmp"
  fi
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

if [ -f "$INITRAMFS_IMG" ]; then
  run_or_echo cp "$INITRAMFS_IMG" "${TARGET_VOLUME}/msx.cpio"
  echo "[OK] Copiado: msx.cpio"
else
  echo "[WARN] Nao encontrado: ${INITRAMFS_IMG}"
fi

if [ -f "$SETTINGS_CFG" ]; then
  run_or_echo cp "$SETTINGS_CFG" "${TARGET_VOLUME}/MSXBARE.CFG"
  echo "[OK] Copiado: MSXBARE.CFG"
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
  echo "[INFO] Copia de jogos para raiz: desativada."
fi

cleanup_macos_junk "$TARGET_VOLUME"

echo "[INFO] Sincronizando escrita final no cartao..."
run_or_echo sync
if [ "$DRY_RUN" != "1" ]; then
  sleep 1
fi

safe_eject_disk "$target_disk"
echo
if [ "$DRY_RUN" = "1" ]; then
  echo "[OK] Validacao em dry-run concluida (sem persistir alteracoes no disco): ${target_disk}"
else
  echo "[OK] MicroSD preparado e ejetado: ${target_disk}"
fi
