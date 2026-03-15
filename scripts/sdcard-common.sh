#!/usr/bin/env bash

SDCARD_OS="$(uname -s 2>/dev/null | tr '[:upper:]' '[:lower:]')"

sdcard_is_macos() {
  [ "$SDCARD_OS" = "darwin" ]
}

sdcard_is_linux() {
  [ "$SDCARD_OS" = "linux" ]
}

sdcard_default_target_volume() {
  local volume_name="$1"

  if sdcard_is_macos; then
    printf '/Volumes/%s' "$volume_name"
  else
    printf '/media/%s/%s' "${USER:-$(id -un)}" "$volume_name"
  fi
}

sdcard_require_command() {
  local cmd="$1"
  local hint="${2:-}"

  if command -v "$cmd" >/dev/null 2>&1; then
    return 0
  fi

  echo "[ERRO] Comando obrigatorio ausente: ${cmd}"
  if [ -n "$hint" ]; then
    echo "[ERRO] ${hint}"
  fi
  exit 1
}

sdcard_require_interactive_selector() {
  if [ "${NON_INTERACTIVE:-0}" != "1" ]; then
    sdcard_require_command "fzf" "Instale 'fzf' pelo gerenciador de pacotes da sua distro ou via Homebrew."
  fi
}

sdcard_require_prepare_deps() {
  if sdcard_is_macos; then
    sdcard_require_command "diskutil" "'diskutil' faz parte do macOS."
    sdcard_require_command "plutil" "'plutil' faz parte do macOS."
  elif sdcard_is_linux; then
    sdcard_require_command "lsblk" "Instale util-linux."
  else
    echo "[ERRO] Sistema operacional nao suportado: ${SDCARD_OS}"
    exit 1
  fi
}

sdcard_require_linux_format_deps() {
  sdcard_require_command "parted" "Instale GNU parted."
  sdcard_require_command "mkfs.vfat" "Instale dosfstools."
}

sdcard_linux_list_disk_partitions() {
  local disk="$1"
  lsblk -lnpo NAME,TYPE "$disk" 2>/dev/null | awk '$2=="part"{print $1}'
}

sdcard_linux_first_partition() {
  local disk="$1"
  sdcard_linux_list_disk_partitions "$disk" | head -n1
}

sdcard_discover_mounted_volume_for_disk() {
  local disk="$1"
  local part=""
  local mount_point=""

  if sdcard_is_macos; then
    while IFS= read -r part; do
      [ -z "$part" ] && continue
      mount_point="$(diskutil info -plist "/dev/${part}" 2>/dev/null | /usr/bin/plutil -extract MountPoint raw -o - - 2>/dev/null || true)"
      if [ -n "$mount_point" ] && [ -d "$mount_point" ]; then
        printf '%s' "$mount_point"
        return 0
      fi
    done < <(diskutil list "$disk" 2>/dev/null | awk '/^[[:space:]]*[0-9]+:/{print $NF}' | sed '/^$/d')
  else
    while IFS= read -r part; do
      [ -z "$part" ] && continue
      mount_point="$(lsblk -npo MOUNTPOINT "$part" 2>/dev/null | head -n1 | tr -d '\n')"
      if [ -n "$mount_point" ] && [ -d "$mount_point" ]; then
        printf '%s' "$mount_point"
        return 0
      fi
    done < <(sdcard_linux_list_disk_partitions "$disk")
  fi

  return 1
}

sdcard_mount_disk_if_needed() {
  local disk="$1"
  local part=""

  if sdcard_is_macos; then
    diskutil mountDisk "$disk" >/dev/null 2>&1 || true
    sleep 1
    return 0
  fi

  if command -v udisksctl >/dev/null 2>&1; then
    while IFS= read -r part; do
      [ -z "$part" ] && continue
      udisksctl mount -b "$part" >/dev/null 2>&1 || true
    done < <(sdcard_linux_list_disk_partitions "$disk")
    sleep 1
    return 0
  fi

  echo "[WARN] 'udisksctl' nao encontrado; monte a particao manualmente e reexecute se necessario."
  return 0
}

sdcard_unmount_disk() {
  local disk="$1"
  local part=""

  if sdcard_is_macos; then
    diskutil unmountDisk "$disk" >/dev/null 2>&1 || true
    return 0
  fi

  if command -v udisksctl >/dev/null 2>&1; then
    while IFS= read -r part; do
      [ -z "$part" ] && continue
      udisksctl unmount -b "$part" >/dev/null 2>&1 || true
    done < <(sdcard_linux_list_disk_partitions "$disk")
  else
    while IFS= read -r part; do
      [ -z "$part" ] && continue
      mount_point="$(lsblk -npo MOUNTPOINT "$part" 2>/dev/null | head -n1 | tr -d '\n')"
      if [ -n "$mount_point" ]; then
        sudo umount "$part" >/dev/null 2>&1 || true
      fi
    done < <(sdcard_linux_list_disk_partitions "$disk")
  fi
}

sdcard_format_disk() {
  local disk="$1"
  local volume_name="$2"
  local part=""

  if sdcard_is_macos; then
    diskutil eraseDisk FAT32 "$volume_name" MBRFormat "$disk" >/dev/null
    return 0
  fi

  sdcard_require_linux_format_deps

  sudo parted -s "$disk" mklabel msdos
  sudo parted -s -a optimal "$disk" mkpart primary fat32 1MiB 100%
  if command -v partprobe >/dev/null 2>&1; then
    sudo partprobe "$disk" >/dev/null 2>&1 || true
  fi
  if command -v udevadm >/dev/null 2>&1; then
    sudo udevadm settle >/dev/null 2>&1 || true
  fi
  sleep 1

  part="$(sdcard_linux_first_partition "$disk")"
  if [ -z "$part" ]; then
    echo "[ERRO] Nao foi possivel detectar a particao criada em ${disk}."
    exit 1
  fi

  sudo mkfs.vfat -F 32 -n "$volume_name" "$part" >/dev/null
  sdcard_mount_disk_if_needed "$disk"
}

sdcard_safe_eject_disk() {
  local disk="$1"

  sync
  sleep 1

  if sdcard_is_macos; then
    diskutil unmountDisk "$disk" >/dev/null 2>&1 || true
    sleep 1
    if diskutil eject "$disk" >/dev/null 2>&1; then
      return 0
    fi
    sleep 2
    diskutil unmountDisk "$disk" >/dev/null 2>&1 || true
    diskutil eject "$disk" >/dev/null
    return 0
  fi

  sdcard_unmount_disk "$disk"
  if command -v udisksctl >/dev/null 2>&1; then
    udisksctl power-off -b "$disk" >/dev/null 2>&1 || true
  fi
}
