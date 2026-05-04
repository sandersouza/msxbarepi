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
2. BIOS + SUBROM + componentes opcionais do set entram no mapa Panasonic `FS-A1WSX`.
3. Política de `disk_rom` é aplicada sem alterar os outros perfis.
4. Se `MSXDOS2.ROM` estiver disponível, o runtime arma o cartucho DOS2 no primeiro slot de sistema realmente livre, compatível com o mapa interno do perfil.
5. Com `DRIVEA.DSK` presente desde o initramfs inicial, o boot pode entrar direto no MSX-DOS 2.
6. Diagnóstico de boot deve usar `TM3/TM4` para validar mapeamentos críticos.

## Layout de slots

Referência: `third_party/bluemsx/.../Machines/MSX2+ - Panasonic FS-A1WSX/config.ini`.

- `SLOT0`: expandido
  - `0-0`: BIOS+BASIC
  - `0-2`: ROM de música FM Panasonic quando disponível; slot helper interno quando livre
  - `0-3`: vazio no perfil `FS-A1WSX`
- `SLOT1`: Cartucho A em `1-0`
- `SLOT2`: Cartucho B em `2-0`
- `SLOT3`: expandido
  - `3-0`: RAM principal/RAM mapper
  - `3-1`: SubROM + Kanji BASIC
  - `3-2`: `DISK.ROM`
  - `3-3`: firmware Panasonic quando disponível; slot helper interno quando livre

O bootstrap de `MSXDOS2.ROM` não pode assumir fixamente `3-0`, porque `3-0` é RAM nesse layout.
Os helpers internos (`0-2`, `0-3`, `3-3`) sao usados apenas se estiverem
vazios, para que `MSXDOS2.ROM`, `PAINTER.ROM` e `FMPAC.ROM` nao sobrescrevam
ROMs ja carregadas.

## Defaults de runtime (catálogo)

- Boot mode: `NORM`
- Disk ROM: `ON`
- Refresh: `60`
- RAM mapper: `256 KB`
- MegaRAM: `OFF`
- Z80 turbo: `DES`
- FM music: `ON`
- SCC cart: `ON`
