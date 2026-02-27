#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

if [ "$PWD" != "/Users/sandersouza/Developer/msxbarepi-circle" ]; then
  echo "[WARN] PWD atual: $PWD" >&2
  echo "[WARN] Recomenda-se usar /Users/sandersouza/Developer/msxbarepi-circle" >&2
fi

NON_INTERACTIVE="${NON_INTERACTIVE:-0}"

choose() {
  local prompt="$1"
  local allow_back="$2"
  shift 2
  local options=("$@")

  if [ "$NON_INTERACTIVE" = "1" ]; then
    echo "${options[0]}"
    return 0
  fi

  if command -v fzf >/dev/null 2>&1; then
    local selected=""
    set +e
    local header="Setas + Enter"
    if [ "$allow_back" = "1" ]; then
      header="Setas + Enter | ESC = voltar"
    fi
    selected="$(printf '%s\n' "${options[@]}" | fzf --height=12 --reverse --border --prompt "${prompt} > " --header "$header")"
    local status=$?
    set -e
    if [ "$status" -eq 0 ] && [ -n "$selected" ]; then
      echo "$selected"
      return 0
    fi
    if [ "$status" -eq 130 ] && [ "$allow_back" = "1" ]; then
      return 2
    fi
    return 1
  fi

  local i=1
  echo >&2
  echo "$prompt" >&2
  for opt in "${options[@]}"; do
    echo "  [$i] $opt" >&2
    i=$((i+1))
  done
  if [ "$allow_back" = "1" ]; then
    echo "  [0] Voltar" >&2
  fi

  local sel
  while true; do
    printf "> " >&2
    read -r sel
    if [ "$allow_back" = "1" ] && { [ "$sel" = "0" ] || [ "$sel" = "b" ] || [ "$sel" = "B" ]; }; then
      return 2
    fi
    if [[ "$sel" =~ ^[0-9]+$ ]] && [ "$sel" -ge 1 ] && [ "$sel" -le "${#options[@]}" ]; then
      echo "${options[$((sel-1))]}"
      return 0
    fi
    echo "Selecao invalida." >&2
  done
}

map_name_to_value() {
  case "$1" in
    AUTO) echo "255" ;;
    GEN8) echo "0" ;;
    GEN16) echo "1" ;;
    KONAMI5) echo "2" ;;
    KONAMI4) echo "3" ;;
    ASCII8) echo "4" ;;
    ASCII16) echo "5" ;;
    GMASTER2) echo "6" ;;
    FMPAC) echo "7" ;;
    GUESS) echo "8" ;;
    *) echo "255" ;;
  esac
}

carta_mapper="255"
cartb_mapper="255"
cart_guess="1"
mapper_kb_choice="OFF"
megaram_kb_choice="OFF"
cart_guess_choice="AUTO"
debug_choice="ON"
boot_mode_choice="NORMAL"
carta_kind="AUTO"
cartb_kind="AUTO"

if [ "$NON_INTERACTIVE" != "1" ]; then
  step=1
  while true; do
    case "$step" in
      1)
        set +e
        choice="$(choose "RAM Mapper (MSX RAM)" 0 "OFF" "256" "512" "1024")"
        status=$?
        set -e
        if [ "$status" -ne 0 ]; then
          echo "[ABORTADO] Configuracao cancelada."
          exit 1
        fi
        mapper_kb_choice="$choice"
        step=2
        ;;
      2)
        set +e
        choice="$(choose "MegaRAM SCC-I" 1 "OFF" "256" "512" "1024")"
        status=$?
        set -e
        if [ "$status" -eq 2 ]; then
          step=1
          continue
        elif [ "$status" -ne 0 ]; then
          echo "[ABORTADO] Configuracao cancelada."
          exit 1
        fi
        megaram_kb_choice="$choice"
        step=3
        ;;
      3)
        set +e
        choice="$(choose "Deteccao automatica mapper CARTA/CARTB" 1 "AUTO" "FORCAR MANUAL")"
        status=$?
        set -e
        if [ "$status" -eq 2 ]; then
          step=2
          continue
        elif [ "$status" -ne 0 ]; then
          echo "[ABORTADO] Configuracao cancelada."
          exit 1
        fi
        cart_guess_choice="$choice"
        if [ "$cart_guess_choice" = "FORCAR MANUAL" ]; then
          step=4
        else
          carta_kind="AUTO"
          cartb_kind="AUTO"
          step=6
        fi
        ;;
      4)
        set +e
        choice="$(choose "Mapper CARTA" 1 "AUTO" "GEN8" "GEN16" "KONAMI5" "KONAMI4" "ASCII8" "ASCII16" "GMASTER2" "FMPAC" "GUESS")"
        status=$?
        set -e
        if [ "$status" -eq 2 ]; then
          step=3
          continue
        elif [ "$status" -ne 0 ]; then
          echo "[ABORTADO] Configuracao cancelada."
          exit 1
        fi
        carta_kind="$choice"
        step=5
        ;;
      5)
        set +e
        choice="$(choose "Mapper CARTB" 1 "AUTO" "GEN8" "GEN16" "KONAMI5" "KONAMI4" "ASCII8" "ASCII16" "GMASTER2" "FMPAC" "GUESS")"
        status=$?
        set -e
        if [ "$status" -eq 2 ]; then
          step=4
          continue
        elif [ "$status" -ne 0 ]; then
          echo "[ABORTADO] Configuracao cancelada."
          exit 1
        fi
        cartb_kind="$choice"
        step=6
        ;;
      6)
        set +e
        choice="$(choose "Debug visual (overlay)" 1 "ON" "OFF")"
        status=$?
        set -e
        if [ "$status" -eq 2 ]; then
          if [ "$cart_guess_choice" = "FORCAR MANUAL" ]; then
            step=5
          else
            step=3
          fi
          continue
        elif [ "$status" -ne 0 ]; then
          echo "[ABORTADO] Configuracao cancelada."
          exit 1
        fi
        debug_choice="$choice"
        step=7
        ;;
      7)
        set +e
        choice="$(choose "Modo de boot" 1 "NORMAL" "FAST BOOT" "GAME BOOT")"
        status=$?
        set -e
        if [ "$status" -eq 2 ]; then
          step=6
          continue
        elif [ "$status" -ne 0 ]; then
          echo "[ABORTADO] Configuracao cancelada."
          exit 1
        fi
        boot_mode_choice="$choice"
        break
        ;;
    esac
  done
else
  mapper_kb_choice="OFF"
  megaram_kb_choice="OFF"
  cart_guess_choice="AUTO"
  debug_choice="ON"
  boot_mode_choice="NORMAL"
  carta_kind="AUTO"
  cartb_kind="AUTO"
fi

if [ "$cart_guess_choice" = "FORCAR MANUAL" ]; then
  cart_guess="0"
  carta_mapper="$(map_name_to_value "$carta_kind")"
  cartb_mapper="$(map_name_to_value "$cartb_kind")"
fi

rammapper_kb="64"
if [ "$mapper_kb_choice" != "OFF" ]; then
  rammapper_kb="$mapper_kb_choice"
fi

megaram_kb="256"
megaram_enable="1"
if [ "$megaram_kb_choice" = "OFF" ]; then
  megaram_enable="0"
else
  megaram_kb="$megaram_kb_choice"
fi

overlay_default="1"
overlay_compiled="1"
if [ "$debug_choice" = "OFF" ]; then
  overlay_default="0"
  overlay_compiled="0"
fi

boot_quiet="0"
boot_profile="0"
combo_carta_only="0"
if [ "$boot_mode_choice" = "FAST BOOT" ]; then
  boot_quiet="1"
  boot_profile="1"
elif [ "$boot_mode_choice" = "GAME BOOT" ]; then
  boot_quiet="1"
  boot_profile="2"
  combo_carta_only="1"
fi

cmd=(
  make m2-fmsx-bootstrap
  COMBO_SUPPRESS_WARNINGS=1
  COMBO_INITRAMFS_MOUNT=1
  COMBO_REQUIRE_CPIO_BIOS=0
  COMBO_EMBED_INITRAMFS=0
  COMBO_EMBEDDED_BIOS_PATH=../roms/cbios/cbios_main_msx1_br.rom
  COMBO_CARTA_ONLY="$combo_carta_only"
  COMBO_FMSX_AUDIO=1
  COMBO_FMSX_MSX1_TEXT80=1
  COMBO_FMSX_RAMMAPPER_KB="$rammapper_kb"
  COMBO_FMSX_MEGARAM_KB="$megaram_kb"
  COMBO_FMSX_MEGARAM_ENABLED="$megaram_enable"
  COMBO_FMSX_CART_GUESS="$cart_guess"
  COMBO_FMSX_CARTA_MAPPER="$carta_mapper"
  COMBO_FMSX_CARTB_MAPPER="$cartb_mapper"
  COMBO_FMSX_BOOT_PROFILE="$boot_profile"
  COMBO_ENABLE_DEBUG_OVERLAY="$overlay_compiled"
  COMBO_DEBUG_OVERLAY_DEFAULT="$overlay_default"
  COMBO_BOOT_QUIET="$boot_quiet"
)

echo
echo "Configuracao selecionada:"
echo "  RAM Mapper KB: $mapper_kb_choice (build=$rammapper_kb)"
echo "  MegaRAM KB: $megaram_kb_choice (build=$megaram_kb, enabled=$megaram_enable)"
echo "  CART guess: $cart_guess_choice"
echo "  CARTA mapper: $carta_mapper"
echo "  CARTB mapper: $cartb_mapper"
echo "  Modo de boot: $boot_mode_choice (profile=$boot_profile)"
echo "  CARTA only (forcado): $combo_carta_only"
echo "  Debug overlay: $debug_choice (compiled=$overlay_compiled)"
echo "  Boot limpo: $boot_quiet"
echo

echo "Comando:"
printf '  %q' "${cmd[@]}"
echo

echo
echo "Executando build..."
"${cmd[@]}"

echo
echo "Build finalizado: artifacts/kernel8-m2-fmsx-bootstrap.img"
