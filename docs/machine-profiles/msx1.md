# Perfil MSX1

## Hardware base

- VDP: `TMS9918A`
- Vídeo padrão: `NTSC 60Hz`
- Áudio base: `PSG AY-3-8910`
- Família: `MSX1` (não MSX2 family)

## ROMs default esperadas

- `MSX.ROM`
- `DISK.ROM` (controlada pelo toggle `disk_rom`)
- `MSXDOS2.ROM` não é carregada em `MSX1`; continua restrita a MSX2/MSX2+.

## Layout de slots

- `SLOT0`: ROM (`BIOS + BASIC`)
- `SLOT1`: Cartucho A
- `SLOT2`: RAM principal `64 KB`
- `SLOT3`: Cartucho B ou `DISK.ROM`

Quando `disk_rom=1` e não há Cartucho B carregado, `DISK.ROM` ocupa o `SLOT3`.
Ao carregar Cartucho B, o runtime desabilita a Disk ROM para liberar o `SLOT3`; ao remover o Cartucho B, o reset restaura a Disk ROM se o toggle continuar `ON`.

## Workflow de boot

1. Runtime aplica perfil `MSX1` (`machine=0`).
2. `StartMSX()` usa BIOS do perfil, força política de vídeo em `60Hz` e sobe com 64 KB de RAM primária sem RAM mapper.
3. O slot 3 não é expandido no perfil MSX1; leituras/escritas nas portas `FC-FFh` de RAM mapper não expõem mapper.
4. Se `disk_rom=1` e não houver Cartucho B, `ResetMSX()` tenta mapear `DISK.ROM` em `3-0`.
5. Overlay `TM3` deve mostrar `D:1/1` quando habilitada e carregada.

## Defaults de runtime (catálogo)

- Boot mode: `NORM`
- Disk ROM: `ON`
- Refresh: `60`
- RAM: `64 KB` sem mapper
- MegaRAM: `OFF`
- Z80 turbo: `DES`
- FM music: `ON`
- SCC cart: `ON`
