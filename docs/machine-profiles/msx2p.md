# Perfil MSX2+

## Hardware base

- VDP: `V9958`
- Vídeo padrão: `NTSC 60Hz`
- Áudio base: `PSG AY-3-8910`
- Extensões opcionais: `FM-PAC`, `SCC`
- Família: `MSX2 family`

## ROMs default esperadas

- `MSX2P.ROM`
- `MSX2PEXT.ROM` (ou aliases compatíveis)
- `KANJIBASIC.ROM` (quando disponível no set escolhido)
- `DISK.ROM` (respeitando o mapeamento do perfil)

## Workflow de boot

1. Runtime aplica perfil `MSX2+` (`machine=2`).
2. BIOS + SUBROM + componentes opcionais do set (ex.: KANJI/MSX-JE) entram no mapa.
3. Política de `disk_rom` é aplicada sem alterar os outros perfis.
4. Diagnóstico de boot deve usar `TM3/TM4` para validar mapeamentos críticos.

## Defaults de runtime (catálogo)

- Boot mode: `NORM`
- Disk ROM: `ON`
- Refresh: `60`
- RAM mapper: `256 KB`
- MegaRAM: `OFF`
- Z80 turbo: `DES`
- FM music: `ON`
- SCC cart: `ON`
