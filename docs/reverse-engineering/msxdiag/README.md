# MSXDIAG ROM Reverse Engineering (50/60Hz)

Source ROM analyzed: `roms/games/roms/MSXDIAG.ROM` (32KB)

## Artifacts

- Full disassembly: `docs/reverse-engineering/msxdiag/MSXDIAG.disasm.asm`
- Symbol dump: `docs/reverse-engineering/msxdiag/MSXDIAG.symbols.txt`

Generated with:

```bash
z80dasm -a -l -t -g 0x4000 -o docs/reverse-engineering/msxdiag/MSXDIAG.disasm.asm roms/games/roms/MSXDIAG.ROM
z80dasm -a -l -s docs/reverse-engineering/msxdiag/MSXDIAG.symbols.txt -g 0x4000 -o /tmp/msxdiag.asm roms/games/roms/MSXDIAG.ROM
```

## 50/60Hz Detection Path

Key routine addresses (in ROM, origin `0x4000`):

- `sub_44c1h` to `l4567h`: VDP status polling based measurement
  - Uses VDP status port via BIOS pointers at `0006h/0007h`.
  - Tight loop: `in a,(c)` until sign bit changes (`jp p,...`).
  - Stores result in RAM variable `EC76h`:
    - `EC76h = 0` -> 60Hz path
    - `EC76h = 1` -> 50Hz path
- `l5573h`..`l5581h`: maps `EC76h` to displayed frequency text source (`50` or `60`)
- `l565c`..`l5668`: reads `0002Bh` (BIOS flag) and compares against measured `EC76h` for consistency warning.

## Practical Impact on Emulator

MSXDIAG's frequency result is sensitive to VDP status-read timing in tight polling loops.
If `in (0x99)` is modeled too fast/too slow for this loop, MSXDIAG can report 50Hz even when runtime policy is NTSC 60Hz.

Therefore, emulator-side calibration for VDP status polling delay must apply to MSX1/MSX2/MSX2+ consistently.
