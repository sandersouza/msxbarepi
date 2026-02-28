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

KERNEL_IMG="${KERNEL_IMG:-}"
CONFIG_TXT="${CONFIG_TXT:-${PROJECT_ROOT}/sdcard/config.txt}"
CMDLINE_TXT="${CMDLINE_TXT:-${PROJECT_ROOT}/sdcard/cmdline.txt}"
INITRAMFS_IMG="${INITRAMFS_IMG:-${PROJECT_ROOT}/sdcard/msx.cpio}"
INITRAMFS_SRC_DIR="${INITRAMFS_SRC_DIR:-${PROJECT_ROOT}/roms/msx1}"
FIRMWARE_DIR="${FIRMWARE_DIR:-${PROJECT_ROOT}/rpi-firmware}"
SETTINGS_CFG="${SETTINGS_CFG:-${PROJECT_ROOT}/sdcard/MSXBARE.CFG}"

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

ensure_settings_cfg() {
  if [ -f "$SETTINGS_CFG" ]; then
    return 0
  fi

  echo "[INFO] Arquivo de configuracao nao encontrado; gerando default: ${SETTINGS_CFG}"
  mkdir -p "$(dirname "$SETTINGS_CFG")"
  cat > "$SETTINGS_CFG" <<'EOF'
overscan=0
widescreen=0
scanline=0
refresh=60
z80_turbo=0
rensha=0
scc_cart=1
debugger=1
audio_mute=0
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

kernel_img_from_user=0
if [ -n "$KERNEL_IMG" ]; then
  kernel_img_from_user=1
fi

if [ "$kernel_img_from_user" -eq 0 ]; then
  artifact_candidates=()
  while IFS= read -r img; do
    [ -z "$img" ] && continue
    artifact_candidates+=("$img")
  done < <(find "${PROJECT_ROOT}/artifacts" -maxdepth 1 -type f -name '*.img' 2>/dev/null | sort)

  if [ "${#artifact_candidates[@]}" -gt 0 ]; then
    echo
    echo "Selecione o kernel (.img) em artifacts/:"
    selected_kernel="$(select_with_fzf "Kernel > " "Use setas e Enter para selecionar o kernel" "${artifact_candidates[@]}")" || {
      echo "[ABORTADO] Selecao de kernel cancelada."
      exit 1
    }
    KERNEL_IMG="$selected_kernel"
    echo "[INFO] Kernel selecionado: ${KERNEL_IMG}"
    echo
  else
    KERNEL_IMG="${PROJECT_ROOT}/build/kernel8.img"
    echo
    echo "[INFO] Nenhum kernel em artifacts/. Usando padrao: ${KERNEL_IMG}"
    echo
  fi
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
  if [ -x "${PROJECT_ROOT}/scripts/make-initramfs.sh" ]; then
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
  run_or_echo cp "$CONFIG_TXT" "${TARGET_VOLUME}/config.txt"
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

safe_eject_disk "$target_disk"
echo
if [ "$DRY_RUN" = "1" ]; then
  echo "[OK] Validacao em dry-run concluida (sem persistir alteracoes no disco): ${target_disk}"
else
  echo "[OK] MicroSD preparado e ejetado: ${target_disk}"
fi
