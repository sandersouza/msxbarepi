#!/usr/bin/env python3

from __future__ import annotations

import argparse
import shutil
import subprocess
import sys
import tempfile
from dataclasses import dataclass
from pathlib import Path


SCRIPT_DIR = Path(__file__).resolve().parent
PROJECT_ROOT = SCRIPT_DIR.parent
BUILD_MSX_DISK = SCRIPT_DIR / "build-msx-disk.py"
DEFAULT_OUTPUT_DIR = PROJECT_ROOT / "sdcard" / "disks" / "DEBUG"
DEFAULT_SOURCE_COPY_DIR = DEFAULT_OUTPUT_DIR / "src" / "V9990"


@dataclass(frozen=True)
class DiskSpec:
    stem: str
    label: str
    files: dict[str, str]


def ggdbg_files() -> dict[str, str]:
    return {
        "AUTOEXEC.BAS": """10 KEY OFF:SCREEN 0:WIDTH 40:COLOR 15,4,4:CLS
20 PRINT "GGDBG V9990"
30 PRINT
40 PRINT "USE ESTE DISCO COMO APOIO"
50 PRINT "PARA O DEBUG DO GHOST'N GOBLINS"
60 PRINT
70 PRINT "CHECKPOINTS UART:"
80 PRINT " G9R SEL / G9U / G9B / G9D / G9M"
90 PRINT
100 PRINT "FLUXO:"
110 PRINT " 1. BOOT DO JOGO"
120 PRINT " 2. APERTE SPACE"
130 PRINT " 3. PAUSE NO PRIMEIRO FRAME"
140 PRINT " 4. COLETE UART + F9/F10"
150 PRINT
160 PRINT "RAM CHAVE:"
170 PRINT " C719 C1C1 C1C3 C1C5 C1C7"
180 PRINT " C088 C087 C947"
190 PRINT
200 END
""",
        "README.TXT": """GGDBG.DSK

Disco auxiliar para a trilha de depuracao do V9990 em Ghost'n Goblins.

Objetivo:
- documentar o fluxo de captura;
- manter os checkpoints de UART e os artefatos do caso;
- servir como container reproduzivel para futuras repros BASIC/ASM.

Checkpoints UART esperados:
- G9R sel
- G9U start/chunk/done
- G9B blk
- G9D ref
- G9M mode
""",
        "HOOKS.TXT": """Ghost'n Goblins hooks conhecidos

KEYSCAN  : 4A62h
PHASE SEL: 4902h-495Eh
UPLOAD   : 4EFCh-4F51h
DISPLAY  : 5080h-50B0h

RAM
C719h state
C1C1h/C1C3h resource pair A
C1C5h/C1C7h resource pair B
C088h/C087h/C947h flags
""",
    }


def v9990chk_files() -> dict[str, str]:
    return {
        "AUTOEXEC.BAS": """10 KEY OFF:SCREEN 0:WIDTH 40:COLOR 15,4,4:CLS
20 PRINT "V9990CHK"
30 PRINT
40 PRINT "SUITE DE CONFORMIDADE DO V9990"
50 PRINT "ESTE DISCO E UM ESQUELETO"
60 PRINT "PARA OS CASOS REPRODUZIVEIS"
70 PRINT
80 PRINT "ESCOPO:"
90 PRINT " BX / P1 / P2 / CMD / STATUS"
100 PRINT " RASTER / IRQ / PORT 60H"
110 PRINT
120 END
""",
        "README.TXT": """V9990CHK.DSK

Suite de conformidade do V9990.

Escopo planejado:
- Bx: CLRM/CSM/viewport/decode
- P1/P2: name table, patterns, planes, backdrop, sprites
- command engine: LMMC/LMCM/CMMC/LMMM/CMMM/BMXL/BMLX/BMLL/SRCH
- port 60h CPU VRAM
- writes raster mid-line/mid-frame
- STATUS/HR/VR/EO/IRQ

Cada caso deve futuramente terminar em loop de PASS/FAIL em PC conhecido.
""",
        "PLAN.TXT": """Casos previstos

01 BX_BASE
02 BX_BYUV
03 P1_FETCH
04 P1_SPRITE_ORDER
05 P2_FETCH
06 CMD_LMMC
07 CMD_LMMM
08 CMD_BMXL
09 STATUS_IRQ
10 RASTER_SPLIT
""",
    }


DISKS = (
    DiskSpec("GGDBG", "GGDBG", ggdbg_files()),
    DiskSpec("V9990CHK", "V9990CHK", v9990chk_files()),
)


def write_tree(root: Path, files: dict[str, str]) -> None:
    for rel, content in files.items():
        dst = root / rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        dst.write_text(content, encoding="ascii")


def build_disk(source_dir: Path, output_file: Path, label: str) -> None:
    subprocess.run(
        [
            sys.executable,
            str(BUILD_MSX_DISK),
            str(source_dir),
            str(output_file),
            "--label",
            label,
            "--force",
        ],
        check=True,
    )


def main() -> int:
    parser = argparse.ArgumentParser(description="Gera discos .DSK de debug do V9990")
    parser.add_argument("--output-dir", type=Path, default=DEFAULT_OUTPUT_DIR)
    parser.add_argument("--source-copy-dir", type=Path, default=DEFAULT_SOURCE_COPY_DIR)
    args = parser.parse_args()

    args.output_dir.mkdir(parents=True, exist_ok=True)
    args.source_copy_dir.mkdir(parents=True, exist_ok=True)

    with tempfile.TemporaryDirectory(prefix="v9990-disks-") as tmp_dir:
        tmp_root = Path(tmp_dir)

        for spec in DISKS:
            stage_dir = tmp_root / spec.stem
            write_tree(stage_dir, spec.files)

            host_copy_dir = args.source_copy_dir / spec.stem
            if host_copy_dir.exists():
                shutil.rmtree(host_copy_dir)
            shutil.copytree(stage_dir, host_copy_dir)

            build_disk(stage_dir, args.output_dir / f"{spec.stem}.DSK", spec.label)

    print(f"[OK] Discos V9990 gerados em {args.output_dir}")
    print(f"[OK] Fontes host copiadas para {args.source_copy_dir}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
