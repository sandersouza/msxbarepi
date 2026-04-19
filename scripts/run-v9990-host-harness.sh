#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_DIR="${ROOT_DIR}/build/host"
OUT_BIN="${BUILD_DIR}/v9990_phase_harness"
CC_BIN="${CC:-cc}"
FRAMES="${1:-10}"

mkdir -p "${BUILD_DIR}"

"${CC_BIN}" \
  -std=c11 \
  -Wall -Wextra -Werror \
  -Wno-unused-function \
  -O0 -g3 \
  -fsanitize=address,undefined \
  -fno-omit-frame-pointer \
  -DAARCH=64 \
  -DMSXBARE_ENABLE_DEBUG_OVERLAY=1 \
  -DMSXBARE_V9990_PHASE_TRACE_UART=1 \
  -I"${ROOT_DIR}/third_party/circle/include" \
  -I"${ROOT_DIR}/third_party/fmsx/Z80" \
  -I"${ROOT_DIR}/third_party/fmsx/fMSX" \
  -I"${ROOT_DIR}/src/backend/msx/modules/fmsx" \
  "${ROOT_DIR}/tools/host/v9990_phase_harness.c" \
  "${ROOT_DIR}/src/backend/msx/modules/fmsx/fmsx_v9990.c" \
  -o "${OUT_BIN}"

"${OUT_BIN}" "${FRAMES}"
