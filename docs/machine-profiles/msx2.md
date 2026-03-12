# Perfil MSX2

## Hardware base

- VDP: `V9938`
- Vídeo padrão: `NTSC 60Hz`
- Áudio base: `PSG AY-3-8910`
- Extensões opcionais: `FM-PAC`, `SCC`
- Família: `MSX2 family`

## ROMs default esperadas

- `MSX2.ROM`
- `MSX2EXT.ROM` (ou aliases compatíveis)
- `DISK.ROM`

## Workflow de boot

1. Runtime aplica perfil `MSX2` (`machine=1`).
2. BIOS principal + SUBROM são carregadas no mapa do modelo.
3. `DISK.ROM` é mapeada quando `disk_rom=1`.
4. `TM3` deve refletir estado de disco em `D:e/l`.

## Defaults de runtime (catálogo)

- Boot mode: `NORM`
- Disk ROM: `ON`
- Refresh: `60`
- RAM mapper: `256 KB`
- MegaRAM: `OFF`
- Z80 turbo: `DES`
- FM music: `ON`
- SCC cart: `ON`
