#!/usr/bin/env bash
set -euo pipefail

CROSS="${CROSS:-aarch64-none-elf-}"

for tool in gcc ld objcopy; do
  cmd="${CROSS}${tool}"
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "[ERRO] Tool ausente: $cmd"
    exit 1
  fi
  echo "[OK] $cmd"
done
