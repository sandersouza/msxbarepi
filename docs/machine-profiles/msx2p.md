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
- `MSXDOS2.ROM` (opcional, mas necessária para boot em MSX-DOS 2 em vez de Disk BASIC 1.0)

## Workflow de boot

1. Runtime aplica perfil `MSX2+` (`machine=2`).
2. BIOS + SUBROM + componentes opcionais do set (ex.: KANJI/MSX-JE) entram no mapa.
3. Política de `disk_rom` é aplicada sem alterar os outros perfis.
4. Se `MSXDOS2.ROM` estiver disponível, o runtime arma o cartucho DOS2 no primeiro slot de sistema realmente livre, compatível com o mapa interno do perfil.
5. Com `DRIVEA.DSK` presente desde o initramfs inicial, o boot pode entrar direto no MSX-DOS 2.
6. Diagnóstico de boot deve usar `TM3/TM4` para validar mapeamentos críticos.

Observação do perfil `HB-F1XDJ`:
- `RAM mapper` ocupa `3-0`
- `DISK.ROM` ocupa `3-2`
- por isso o bootstrap de `MSXDOS2.ROM` não pode assumir fixamente `3-0`, ao contrário do layout genérico do `fMSX`

## Defaults de runtime (catálogo)

- Boot mode: `NORM`
- Disk ROM: `ON`
- Refresh: `60`
- RAM mapper: `256 KB`
- MegaRAM: `OFF`
- Z80 turbo: `DES`
- FM music: `ON`
- SCC cart: `ON`
