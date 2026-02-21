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

KERNEL_IMG="${KERNEL_IMG:-${PROJECT_ROOT}/build/kernel8.img}"
CONFIG_TXT="${CONFIG_TXT:-${PROJECT_ROOT}/sdcard/config.txt}"
FIRMWARE_DIR="${FIRMWARE_DIR:-}"

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
  fzf_status=0
  echo "[INFO] NON_INTERACTIVE=1: selecionado automaticamente: ${selected_line}"
else
  # Executa o fzf de forma robusta:
  # - set +e evita abortar silenciosamente por causa do `set -e`
  # - limpa FZF_DEFAULT_OPTS para evitar bindings globais que possam bloquear Enter
  set +e
  selected_line="$(printf '%s\n' "${candidates[@]}" | FZF_DEFAULT_OPTS= fzf --height=15 --reverse --border --prompt="Disk > " --header="Use setas e Enter para selecionar" --bind 'enter:accept')"
  fzf_status=$?
  set -e
fi

if [ "$fzf_status" -ne 0 ]; then
  echo "[ABORTADO] Selecao cancelada (fzf exit code: ${fzf_status})."
  exit 1
fi

if [ -z "$selected_line" ]; then
  echo "[ABORTADO] Nenhum disco selecionado (linha vazia)."
  exit 1
fi

target_disk="$(printf '%s' "$selected_line" | awk '{print $1}')"
if [ -z "$target_disk" ]; then
  echo "[ERRO] Falha ao identificar disco selecionado."
  exit 1
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

if [ -f "$KERNEL_IMG" ]; then
  run_or_echo cp "$KERNEL_IMG" "${TARGET_VOLUME}/kernel8.img"
  echo "[OK] Copiado: kernel8.img"
else
  echo "[WARN] Nao encontrado: ${KERNEL_IMG}"
fi

if [ -f "$CONFIG_TXT" ]; then
  run_or_echo cp "$CONFIG_TXT" "${TARGET_VOLUME}/config.txt"
  echo "[OK] Copiado: config.txt"
else
  echo "[WARN] Nao encontrado: ${CONFIG_TXT}"
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

if [ "$DRY_RUN" = "1" ]; then
  run_or_echo sync
  run_or_echo diskutil eject "$target_disk"
else
  run_or_echo sync
  run_or_echo diskutil eject "$target_disk" >/dev/null
fi
echo
if [ "$DRY_RUN" = "1" ]; then
  echo "[OK] Validacao em dry-run concluida (sem persistir alteracoes no disco): ${target_disk}"
else
  echo "[OK] MicroSD preparado e ejetado: ${target_disk}"
fi
