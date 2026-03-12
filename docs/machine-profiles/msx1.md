# Perfil MSX1

## Hardware base

- VDP: `TMS9918A`
- Vídeo padrão: `NTSC 60Hz`
- Áudio base: `PSG AY-3-8910`
- Família: `MSX1` (não MSX2 family)

## ROMs default esperadas

- `MSX.ROM`
- `DISK.ROM` (controlada pelo toggle `disk_rom`)

## Workflow de boot

1. Runtime aplica perfil `MSX1` (`machine=0`).
2. `StartMSX()` usa BIOS do perfil e força política de vídeo em `60Hz`.
3. Se `disk_rom=1`, `ResetMSX()` tenta mapear `DISK.ROM` no subslot do modelo.
4. Overlay `TM3` deve mostrar `D:1/1` quando habilitada e carregada.

## Defaults de runtime (catálogo)

- Boot mode: `NORM`
- Disk ROM: `ON`
- Refresh: `60`
- RAM mapper: `256 KB`
- MegaRAM: `OFF`
- Z80 turbo: `DES`
- FM music: `ON`
- SCC cart: `ON`
