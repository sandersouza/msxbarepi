#!/usr/bin/env python3
"""Build reproducible MSX FAT12 720KB debug disk images for V9958 tests."""

from __future__ import annotations

import argparse
import math
import subprocess
import tempfile
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, List, Tuple


BYTES_PER_SECTOR = 512
TOTAL_SECTORS = 1440
SECTORS_PER_CLUSTER = 2
RESERVED_SECTORS = 1
FAT_COUNT = 2
ROOT_ENTRIES = 112
SECTORS_PER_FAT = 3
SECTORS_PER_TRACK = 9
HEADS = 2
MEDIA_DESCRIPTOR = 0xF9
ROOT_DIR_SECTORS = (ROOT_ENTRIES * 32 + BYTES_PER_SECTOR - 1) // BYTES_PER_SECTOR
DATA_START_SECTOR = RESERVED_SECTORS + FAT_COUNT * SECTORS_PER_FAT + ROOT_DIR_SECTORS
CLUSTER_SIZE = BYTES_PER_SECTOR * SECTORS_PER_CLUSTER
IMAGE_SIZE = BYTES_PER_SECTOR * TOTAL_SECTORS
FIXED_DOS_DATE = ((2026 - 1980) << 9) | (3 << 5) | 30
FIXED_DOS_TIME = (12 << 11) | (0 << 5) | 0


@dataclass(frozen=True)
class DiskSpec:
    image_name: str
    volume_label: str
    autoexec_target: str
    program_name: str
    program_text: str
    readme_text: str
    autoexec_text: str | None = None
    extra_files: Dict[str, bytes] | None = None
    extra_source_texts: Dict[str, str] | None = None


def to_8_3(name: str) -> bytes:
    upper = name.upper()
    if "." in upper:
        stem, ext = upper.split(".", 1)
    else:
        stem, ext = upper, ""
    if not stem or len(stem) > 8 or len(ext) > 3:
        raise ValueError(f"Invalid 8.3 filename: {name}")
    allowed = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_$~!#%&-{}()@'^"
    for ch in stem + ext:
        if ch not in allowed:
            raise ValueError(f"Unsupported FAT character {ch!r} in {name}")
    return stem.ljust(8).encode("ascii") + ext.ljust(3).encode("ascii")


def make_boot_sector(volume_label: str) -> bytes:
    label = volume_label.upper()[:11].ljust(11)
    boot = bytearray(BYTES_PER_SECTOR)
    boot[0:3] = b"\xEB\x3C\x90"
    boot[3:11] = b"MSXBARE "
    boot[11:13] = BYTES_PER_SECTOR.to_bytes(2, "little")
    boot[13] = SECTORS_PER_CLUSTER
    boot[14:16] = RESERVED_SECTORS.to_bytes(2, "little")
    boot[16] = FAT_COUNT
    boot[17:19] = ROOT_ENTRIES.to_bytes(2, "little")
    boot[19:21] = TOTAL_SECTORS.to_bytes(2, "little")
    boot[21] = MEDIA_DESCRIPTOR
    boot[22:24] = SECTORS_PER_FAT.to_bytes(2, "little")
    boot[24:26] = SECTORS_PER_TRACK.to_bytes(2, "little")
    boot[26:28] = HEADS.to_bytes(2, "little")
    boot[28:32] = (0).to_bytes(4, "little")
    boot[32:36] = (0).to_bytes(4, "little")
    boot[36] = 0
    boot[37] = 0
    boot[38] = 0x29
    boot[39:43] = (0x20260330).to_bytes(4, "little")
    boot[43:54] = label.encode("ascii")
    boot[54:62] = b"FAT12   "
    boot[510:512] = b"\x55\xAA"
    return bytes(boot)


def pack_fat12(entries: List[int]) -> bytes:
    packed = bytearray()
    i = 0
    while i < len(entries):
        first = entries[i] & 0xFFF
        second = entries[i + 1] & 0xFFF if i + 1 < len(entries) else 0
        packed.append(first & 0xFF)
        packed.append(((first >> 8) & 0x0F) | ((second & 0x0F) << 4))
        packed.append((second >> 4) & 0xFF)
        i += 2
    return bytes(packed)


def make_dir_entry(name: str, attr: int, start_cluster: int, size: int) -> bytes:
    entry = bytearray(32)
    entry[0:11] = to_8_3(name)
    entry[11] = attr
    entry[14:16] = FIXED_DOS_TIME.to_bytes(2, "little")
    entry[16:18] = FIXED_DOS_DATE.to_bytes(2, "little")
    entry[18:20] = FIXED_DOS_DATE.to_bytes(2, "little")
    entry[22:24] = FIXED_DOS_TIME.to_bytes(2, "little")
    entry[24:26] = FIXED_DOS_DATE.to_bytes(2, "little")
    entry[26:28] = start_cluster.to_bytes(2, "little")
    entry[28:32] = size.to_bytes(4, "little")
    return bytes(entry)


def make_volume_label_entry(label: str) -> bytes:
    padded = label.upper()[:11].ljust(11)
    entry = bytearray(32)
    entry[0:11] = padded.encode("ascii")
    entry[11] = 0x08
    entry[14:16] = FIXED_DOS_TIME.to_bytes(2, "little")
    entry[16:18] = FIXED_DOS_DATE.to_bytes(2, "little")
    entry[22:24] = FIXED_DOS_TIME.to_bytes(2, "little")
    entry[24:26] = FIXED_DOS_DATE.to_bytes(2, "little")
    return bytes(entry)


def normalize_text(text: str) -> bytes:
    normalized = "\r\n".join(text.replace("\r\n", "\n").split("\n"))
    if not normalized.endswith("\r\n"):
        normalized += "\r\n"
    return normalized.encode("ascii")


def build_msx_bin(asm_text: str, start_addr: int, exec_addr: int | None = None) -> bytes:
    exec_addr = start_addr if exec_addr is None else exec_addr
    with tempfile.TemporaryDirectory() as temp_dir:
        temp_path = Path(temp_dir)
        asm_path = temp_path / "runner.asm"
        raw_path = temp_path / "runner.raw"
        asm_path.write_text(asm_text if asm_text.endswith("\n") else asm_text + "\n", encoding="ascii")
        subprocess.run(
            ["sjasmplus", "--nologo", "--dirbol", f"--raw={raw_path}", str(asm_path)],
            check=True,
            capture_output=True,
            text=True,
        )
        raw = raw_path.read_bytes()
    if not raw:
        raise ValueError("Assembled runner is empty")
    end_addr = start_addr + len(raw) - 1
    return bytes(
        [
            0xFE,
            start_addr & 0xFF,
            (start_addr >> 8) & 0xFF,
            end_addr & 0xFF,
            (end_addr >> 8) & 0xFF,
            exec_addr & 0xFF,
            (exec_addr >> 8) & 0xFF,
        ]
    ) + raw


def build_disk_image(volume_label: str, files: Dict[str, bytes]) -> bytes:
    file_items: List[Tuple[str, bytes]] = list(files.items())
    total_clusters = (TOTAL_SECTORS - DATA_START_SECTOR) // SECTORS_PER_CLUSTER
    fat_entries = [0x000] * (total_clusters + 2)
    fat_entries[0] = 0xFF0 | MEDIA_DESCRIPTOR
    fat_entries[1] = 0xFFF

    layout: List[Tuple[str, bytes, int]] = []
    next_cluster = 2
    for name, content in file_items:
        cluster_count = max(1, math.ceil(len(content) / CLUSTER_SIZE))
        start_cluster = next_cluster
        for index in range(cluster_count):
            cluster = next_cluster + index
            fat_entries[cluster] = cluster + 1 if index + 1 < cluster_count else 0xFFF
        layout.append((name, content, start_cluster))
        next_cluster += cluster_count

    if next_cluster > len(fat_entries):
        raise ValueError("Disk image overflow: too many files for 720KB FAT12 floppy")

    image = bytearray(IMAGE_SIZE)
    image[0:BYTES_PER_SECTOR] = make_boot_sector(volume_label)

    fat = pack_fat12(fat_entries)
    if len(fat) > SECTORS_PER_FAT * BYTES_PER_SECTOR:
        raise ValueError("FAT12 table exceeds reserved FAT area")
    fat = fat.ljust(SECTORS_PER_FAT * BYTES_PER_SECTOR, b"\x00")

    for fat_index in range(FAT_COUNT):
        start = (RESERVED_SECTORS + fat_index * SECTORS_PER_FAT) * BYTES_PER_SECTOR
        image[start : start + len(fat)] = fat

    root_dir_start = (RESERVED_SECTORS + FAT_COUNT * SECTORS_PER_FAT) * BYTES_PER_SECTOR
    root_entries: List[bytes] = [make_volume_label_entry(volume_label)]
    for name, content, start_cluster in layout:
        root_entries.append(make_dir_entry(name, 0x20, start_cluster, len(content)))
    root_dir = b"".join(root_entries).ljust(ROOT_DIR_SECTORS * BYTES_PER_SECTOR, b"\x00")
    image[root_dir_start : root_dir_start + len(root_dir)] = root_dir

    data_start = DATA_START_SECTOR * BYTES_PER_SECTOR
    for _name, content, start_cluster in layout:
        cluster_offset = (start_cluster - 2) * CLUSTER_SIZE
        start = data_start + cluster_offset
        image[start : start + len(content)] = content

    return bytes(image)


def parse_root_directory(image: bytes) -> Dict[str, int]:
    root_dir_start = (RESERVED_SECTORS + FAT_COUNT * SECTORS_PER_FAT) * BYTES_PER_SECTOR
    root_dir_end = root_dir_start + ROOT_DIR_SECTORS * BYTES_PER_SECTOR
    result: Dict[str, int] = {}
    for offset in range(root_dir_start, root_dir_end, 32):
        entry = image[offset : offset + 32]
        if entry[0] == 0x00:
            break
        if entry[0] == 0xE5 or entry[11] == 0x08:
            continue
        name = entry[0:8].decode("ascii").rstrip()
        ext = entry[8:11].decode("ascii").rstrip()
        size = int.from_bytes(entry[28:32], "little")
        full_name = name if not ext else f"{name}.{ext}"
        result[full_name] = size
    return result


def write_disk(spec: DiskSpec, output_dir: Path, source_copy_dir: Path) -> Path:
    source_copy_dir.mkdir(parents=True, exist_ok=True)
    source_copy = source_copy_dir / spec.program_name
    source_copy.write_text(spec.program_text if spec.program_text.endswith("\n") else spec.program_text + "\n", encoding="ascii")
    for name, text in (spec.extra_source_texts or {}).items():
        extra_source = source_copy_dir / name
        extra_source.write_text(text if text.endswith("\n") else text + "\n", encoding="ascii")

    autoexec = spec.autoexec_text if spec.autoexec_text is not None else f'10 RUN"{spec.autoexec_target}"\n'
    files = {
        "AUTOEXEC.BAS": normalize_text(autoexec),
        spec.program_name: normalize_text(spec.program_text),
        "README.TXT": spec.readme_text.replace("\n", "\r\n").encode("ascii"),
    }
    files.update(spec.extra_files or {})
    image = build_disk_image(spec.volume_label, files)
    output_path = output_dir / spec.image_name
    output_path.write_bytes(image)

    parsed = parse_root_directory(image)
    expected = {name: len(content) for name, content in files.items()}
    if parsed != expected:
        raise ValueError(f"Root directory mismatch for {output_path}: {parsed!r} != {expected!r}")
    return output_path


def build_specs() -> List[DiskSpec]:
    sts006_runner_asm = """DEVICE NONE
ORG $D000

RESULTS  EQU $D100
PORTVDP  EQU $99

start:
    di
    push af
    push bc
    push de
    push hl

    xor a
    ld hl,RESULTS
    ld b,12
.clear:
    ld (hl),a
    inc hl
    djnz .clear

    call wait_idle
    call setup_search

    ld a,$60
    out (PORTVDP),a
    ld a,$AE
    out (PORTVDP),a

.poll:
    call read_s2
    ld (RESULTS+8),a
    bit 0,a
    jr z,.done

    ld hl,RESULTS+11
    set 0,(hl)

    ld hl,RESULTS+1
    inc (hl)
    jr nz,.count_ok
    inc hl
    inc (hl)
.count_ok:
    ld a,(RESULTS+11)
    bit 7,a
    jr nz,.sample_live

    call read_s8
    ld (RESULTS+4),a
    ld (RESULTS+6),a
    call read_s9
    ld (RESULTS+5),a
    ld (RESULTS+7),a
    ld a,(RESULTS+8)
    ld (RESULTS+3),a
    ld hl,RESULTS+11
    set 7,(hl)
    jr .poll

.sample_live:
    call read_s8
    ld b,a
    ld a,(RESULTS+4)
    cp b
    jr z,.keep_s8
    ld hl,RESULTS+11
    set 1,(hl)
.keep_s8:
    ld a,b
    ld (RESULTS+6),a

    call read_s9
    ld b,a
    ld a,(RESULTS+5)
    cp b
    jr z,.keep_s9
    ld hl,RESULTS+11
    set 2,(hl)
.keep_s9:
    ld a,b
    ld (RESULTS+7),a
    jr .poll

.done:
    call read_s8
    ld (RESULTS+9),a
    call read_s9
    ld (RESULTS+10),a
    ld a,$A5
    ld (RESULTS),a

    pop hl
    pop de
    pop bc
    pop af
    ei
    ret

wait_idle:
    call read_s2
    bit 0,a
    jr nz,wait_idle
    ret

setup_search:
    ld a,0
    ld b,32
    call write_reg
    ld a,0
    ld b,33
    call write_reg
    ld a,32
    ld b,34
    call write_reg
    ld a,0
    ld b,35
    call write_reg
    ld a,15
    ld b,44
    call write_reg
    ld a,0
    ld b,45
    call write_reg
    ret

write_reg:
    out (PORTVDP),a
    ld a,b
    or $80
    out (PORTVDP),a
    ret

read_s2:
    ld a,2
    out (PORTVDP),a
    ld a,$8F
    out (PORTVDP),a
    in a,(PORTVDP)
    ret

read_s8:
    ld a,8
    out (PORTVDP),a
    ld a,$8F
    out (PORTVDP),a
    in a,(PORTVDP)
    ret

read_s9:
    ld a,9
    out (PORTVDP),a
    ld a,$8F
    out (PORTVDP),a
    in a,(PORTVDP)
    ret
"""

    cmd004_runner_asm = """DEVICE NONE
ORG $D200

RESULTS  EQU $D500
PORTVDP  EQU $99
PORTVRAM EQU $98
CLRVALUE EQU $A5

start:
    di
    push af
    push bc
    push de
    push hl

    xor a
    ld hl,RESULTS
    ld b,10
.clear:
    ld (hl),a
    inc hl
    djnz .clear

    call wait_idle

	    xor a
	    ld b,25
	    call write_reg
	    call run_case_off

    call wait_idle

    ld a,$40
    ld b,25
    call write_reg
    call run_case_on

    xor a
    ld b,25
    call write_reg

    ld a,$A6
    ld (RESULTS),a

    pop hl
    pop de
    pop bc
    pop af
    ei
    ret

run_case_off:
	    call clear_vram0
	    call read_vram0
	    ld (RESULTS+5),a
	    call setup_hmmv
	    ld a,$C0
	    out (PORTVDP),a
	    ld a,$AE
	    out (PORTVDP),a
.poll_off:
	    call read_s2
	    ld (RESULTS+3),a
	    bit 0,a
	    jr z,.done_off
	    ld a,(RESULTS+9)
	    or $04
	    ld (RESULTS+9),a
	    jr .poll_off
.done_off:
	    call read_vram0
	    ld (RESULTS+1),a
	    or a
	    ret z
	    ld a,(RESULTS+9)
	    or $01
	    ld (RESULTS+9),a
	    ret

run_case_on:
	    call clear_vram0
	    call read_vram0
	    ld (RESULTS+6),a
	    call setup_hmmv
	    ld a,$C0
	    out (PORTVDP),a
	    ld a,$AE
	    out (PORTVDP),a
.poll_on:
	    call read_s2
	    ld (RESULTS+4),a
	    bit 0,a
	    jr z,.done_on
	    ld a,(RESULTS+9)
	    or $08
	    ld (RESULTS+9),a
	    jr .poll_on
.done_on:
	    call read_vram0
	    ld (RESULTS+2),a
	    or a
	    ret z
	    ld a,(RESULTS+9)
	    or $02
	    ld (RESULTS+9),a
	    ret

wait_idle:
	    call read_s2
	    bit 0,a
	    jr nz,wait_idle
	    ret

setup_hmmv:
	    ld a,0
    ld b,36
    call write_reg
    ld a,0
    ld b,37
    call write_reg
    ld a,0
    ld b,38
    call write_reg
    ld a,0
    ld b,39
	    call write_reg
	    ld a,$FF
	    ld b,40
	    call write_reg
	    ld a,$00
	    ld b,41
	    call write_reg
	    ld a,$01
	    ld b,42
	    call write_reg
	    ld a,$00
	    ld b,43
	    call write_reg
	    ld a,CLRVALUE
	    ld b,44
	    call write_reg
	    ld a,$00
	    ld b,45
	    call write_reg
	    ret

clear_vram0:
	    call set_reg14_zero
	    xor a
	    call set_vram_write0
	    out (PORTVRAM),a
	    ret

read_vram0:
	    call set_reg14_zero
	    call set_vram_read0
	    in a,(PORTVRAM)
	    ret

set_reg14_zero:
	    xor a
	    ld b,14
	    call write_reg
	    ret

set_vram_write0:
	    xor a
	    out (PORTVDP),a
	    ld a,$40
	    out (PORTVDP),a
	    ret

set_vram_read0:
	    xor a
	    out (PORTVDP),a
	    xor a
	    out (PORTVDP),a
	    ret

write_reg:
	    out (PORTVDP),a
	    ld a,b
	    or $80
    out (PORTVDP),a
    ret

read_s2:
    ld a,2
    out (PORTVDP),a
    ld a,$8F
    out (PORTVDP),a
    in a,(PORTVDP)
    ret
"""

    return [
        DiskSpec(
            image_name="V9958_STS006_SRCH.DSK",
            volume_label="STS006SRCH",
            autoexec_target="STS006.BAS",
            program_name="STS006.BAS",
            program_text="""5 DEFINT A-Z:CLEAR 200,&HD000
10 KEY OFF:SCREEN 0:WIDTH 40:COLOR 15,4,4:CLS
15 D=&HD100
30 PRINT "V9958 STS-006 / SRCH"
40 PRINT
50 PRINT "BIN RUNNER VIA BLOAD,R"
60 PRINT "LONG EQ SEARCH ON SCREEN 7."
70 PRINT "TARGET PIXEL IS X=511."
80 PRINT "REMOVES USR/BASIC FROM"
90 PRINT "THE CRITICAL 0x99 PATH."
100 PRINT "USE F11 IF YOU WANT OVERLAY."
110 PRINT
120 PRINT "PRESS ANY KEY TO START."
130 GOSUB 3000
140 GOSUB 3100
150 SCREEN 7:COLOR 15,7,7:CLS
160 GOSUB 4000
170 LINE (0,0)-(511,15),15,BF
190 PSET(511,32),15
200 BLOAD"STS006.BIN",R
210 SCREEN 0:WIDTH 40:COLOR 15,4,4:CLS
220 PRINT "V9958 STS-006 / SRCH"
230 PRINT
240 IF PEEK(D)<>165 THEN PRINT "RUNNER DID NOT RETURN.":END
250 LC=PEEK(D+1)+256*PEEK(D+2)
260 FS2=PEEK(D+3):FS8=PEEK(D+4):FS9=PEEK(D+5)
270 LS8=PEEK(D+6):LS9=PEEK(D+7)
280 S2=PEEK(D+8):S8=PEEK(D+9):S9=PEEK(D+10)
290 FL=PEEK(D+11)
300 X=S8+256*(S9 AND 1)
310 PRINT "OK AFTER BIN RUNNER."
320 PRINT "CE LOOPS=";LC;" FLAGS=";FL
330 PRINT "FIRST CE S2=";FS2;" S8=";FS8;" S9=";FS9
340 PRINT "LAST  CE S8=";LS8;" S9=";LS9
350 PRINT "FINAL    S2=";S2;" S8=";S8;" S9=";S9
360 PRINT "FINAL X=";X
370 PRINT "EXPECT X=511 IF SRCH HITS TARGET."
380 PRINT "F0=SAW CE F1=S8 CHG F2=S9 CHG"
390 END
3000 A$=INKEY$:IF A$<>"" THEN 3000
3010 RETURN
3100 A$=INKEY$:IF A$="" THEN 3100
3110 GOSUB 3000
3120 RETURN
4000 LINE (0,0)-(511,211),7,BF:RETURN
""",
            readme_text=(
                "V9958 STS-006 / SRCH\r\n"
                "AUTOEXEC stays passive; launch manually with RUN\"STS006.BAS\".\r\n"
                "Critical SRCH polling now runs from STS006.BIN via BLOAD,R.\r\n"
                "This removes BASIC/USR from the critical 0x99 status-read path.\r\n"
                "Current variant forces a long equality search: SCREEN 7, target pixel at X=511, ARG=0.\r\n"
                "This avoids the old ARG bit1='!=' case that stopped immediately at X=0.\r\n"
                "The BASIC side now only paints the test pattern; the runner waits CE=0, rewrites R32..R45, then starts SRCH.\r\n"
                "Results return in D100..D10B: signature, CE loops, first-CE S2/S8/S9, last-CE S8/S9, final S2/S8/S9, flags.\r\n"
                "Flags: bit0=saw CE, bit1=S8 changed while CE=1, bit2=S9 changed while CE=1.\r\n"
            ),
            autoexec_text=(
                '10 KEY OFF:SCREEN 0:WIDTH 40:COLOR 15,4,4:CLS\n'
                '20 PRINT "V9958 STS-006 / SRCH"\n'
                '30 PRINT\n'
                '40 PRINT "AUTOEXEC STAYS PASSIVE."\n'
                '50 PRINT "RUN STS006.BAS TO START."\n'
                '60 END\n'
            ),
            extra_files={"STS006.BIN": build_msx_bin(sts006_runner_asm, 0xD000)},
            extra_source_texts={"STS006_RUNNER.asm": sts006_runner_asm},
        ),
        DiskSpec(
            image_name="V9958_CMD004_R25.DSK",
            volume_label="CMD004R25",
            autoexec_target="CMD004.BAS",
            program_name="CMD004.BAS",
            program_text="""5 DEFINT A-Z
10 KEY OFF:SCREEN 0:WIDTH 40:COLOR 15,4,4:CLS
20 PRINT "V9958 CMD-004 / R25 BIT6"
30 PRINT
40 PRINT "PURE BASIC / VPOKE+VPEEK"
50 PRINT "COMPARES VRAM EFFECT OF"
60 PRINT "HMMV IN SCREEN 4."
70 PRINT "R25 BIT6 OFF THEN ON."
80 PRINT "USE F11 IF YOU WANT OVERLAY."
90 PRINT
100 PRINT "PRESS ANY KEY TO START."
110 GOSUB 3000
120 GOSUB 3100
130 SCREEN 4:COLOR 15,1,1:CLS
140 GOSUB 4000
150 GOSUB 4100
160 SCREEN 0:WIDTH 40:COLOR 15,4,4:CLS
170 PRINT "V9958 CMD-004 / R25 BIT6"
180 PRINT
190 PRINT "OFF CLR=";C0;" BYTE=";B0;" S2=";S0
200 PRINT " ON CLR=";C1;" BYTE=";B1;" S2=";S1
210 PRINT "FLAGS=";FG
220 PRINT "F0=OFF CHG F1=ON CHG"
230 PRINT "F2=OFF SAW CE F3=ON SAW CE"
240 PRINT "EXPECT CLR=0 OFF=0 ON=165."
250 END
3000 A$=INKEY$:IF A$<>"" THEN 3000
3010 RETURN
3100 A$=INKEY$:IF A$="" THEN 3100
3110 GOSUB 3000
3120 RETURN
4000 FG=0
4010 GOSUB 5000
4020 VPOKE 0,0:C0=VPEEK(0)
4030 GOSUB 6000
4040 GOSUB 7000:S0=S
4050 B0=VPEEK(0)
4060 IF B0<>0 THEN FG=FG OR 1
4070 IF (S0 AND 1)<>0 THEN FG=FG OR 4
4080 RETURN
4100 GOSUB 5100
4110 VPOKE 0,0:C1=VPEEK(0)
4120 GOSUB 6000
4130 GOSUB 7000:S1=S
4140 B1=VPEEK(0)
4150 IF B1<>0 THEN FG=FG OR 2
4160 IF (S1 AND 1)<>0 THEN FG=FG OR 8
4170 RETURN
5000 R=25:V=0:GOSUB 9000:RETURN
5100 R=25:V=64:GOSUB 9000:RETURN
6000 R=36:V=0:GOSUB 9000
6010 R=37:V=0:GOSUB 9000
6020 R=38:V=0:GOSUB 9000
6030 R=39:V=0:GOSUB 9000
6040 R=40:V=255:GOSUB 9000
6050 R=41:V=0:GOSUB 9000
6060 R=42:V=1:GOSUB 9000
6070 R=43:V=0:GOSUB 9000
6080 R=44:V=165:GOSUB 9000
6090 R=45:V=0:GOSUB 9000
6100 OUT &H99,&HC0:OUT &H99,&HAE
6110 GOSUB 7000
6120 IF (S AND 1)<>0 THEN 6110
6130 RETURN
7000 OUT &H99,2:OUT &H99,143:S=INP(&H99):RETURN
9000 OUT &H99,V:OUT &H99,128+R:RETURN
""",
            readme_text=(
                "V9958 CMD-004 / R25 BIT6\r\n"
                "AUTOEXEC stays passive; launch manually with RUN\"CMD004.BAS\".\r\n"
                "Current variant is pure BASIC and uses VPOKE/VPEEK to compare the VRAM side effect of the same HMMV command in SCREEN 4 with R25 bit6 off and then on.\r\n"
                "Goal: avoid ambiguity from the previous asm helper, whose direct VRAM probe was itself returning a contaminated baseline.\r\n"
                "The program clears VRAM byte 0, runs HMMV with R25 bit6 off, samples VPEEK(0), repeats with R25 bit6 on, and prints the two bytes plus final S2 values and flags.\r\n"
                "Expected result for a passing core: OFF byte stays 0, ON byte becomes 165 (A5h).\r\n"
            ),
            autoexec_text=(
                '10 KEY OFF:SCREEN 0:WIDTH 40:COLOR 15,4,4:CLS\n'
                '20 PRINT "V9958 CMD-004 / R25 BIT6"\n'
                '30 PRINT\n'
                '40 PRINT "AUTOEXEC STAYS PASSIVE."\n'
                '50 PRINT "RUN CMD004.BAS TO START."\n'
                '60 END\n'
            ),
            extra_files={"CMD004.BIN": build_msx_bin(cmd004_runner_asm, 0xD200)},
            extra_source_texts={"CMD004_RUNNER.asm": cmd004_runner_asm},
        ),
        DiskSpec(
            image_name="V9958_REG004_R17.DSK",
            volume_label="REG004R17",
            autoexec_target="REG004.BAS",
            program_name="REG004.BAS",
            program_text="""10 KEY OFF:SCREEN 0:WIDTH 40:COLOR 15,4,4:CLS
20 PRINT "V9958 REG-004 / R17 + 0x9B"
30 PRINT
40 PRINT "ENABLE F11 AND FRAME TM6D."
50 PRINT "PRESS ANY KEY TO START."
60 A$=INKEY$:IF A$="" THEN 60
70 R=17:V=46:GOSUB 1000
80 FOR I=0 TO 5
90 OUT &H9B,&HA0+I
100 NEXT
110 PRINT
120 PRINT "DONE. CHECK TM6D:"
130 PRINT "R17 MUST STOP AT 2Fh OR GO ABOVE."
140 END
1000 OUT &H99,V:OUT &H99,128+R:RETURN
""",
            readme_text=(
                "V9958 REG-004 / R17 + 0x9B\r\n"
                "Use F11 and frame TM6D.\r\n"
                "Goal: see whether R17 stops at 2Fh or continues above R#47.\r\n"
            ),
        ),
    ]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--output-dir",
        default="sdcard/disks/DEBUG",
        help="Directory where the .DSK images will be written",
    )
    parser.add_argument(
        "--source-copy-dir",
        default="sdcard/disks/DEBUG/src",
        help="Directory where host BASIC source copies will be written",
    )
    args = parser.parse_args()

    output_dir = Path(args.output_dir)
    source_copy_dir = Path(args.source_copy_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    generated: List[Path] = []
    for spec in build_specs():
        generated.append(write_disk(spec, output_dir, source_copy_dir))

    for path in generated:
        print(f"[OK] {path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
