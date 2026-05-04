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
- `MSXDOS2.ROM` (opcional, mas necessária para boot em MSX-DOS 2 em vez de Disk BASIC 1.0)

## Workflow de boot

1. Runtime aplica perfil `MSX2` (`machine=1`).
2. BIOS principal + SUBROM são carregadas no mapa Panasonic `FS-A1F`.
3. `DISK.ROM` é mapeada quando `disk_rom=1`.
4. Se `MSXDOS2.ROM` estiver disponível, o runtime arma o cartucho DOS2 no boot.
5. Com `DRIVEA.DSK` presente desde o initramfs inicial, o boot pode entrar direto no MSX-DOS 2.
6. `TM3` deve refletir estado de disco em `D:e/l`.

## Layout de slots

Referência: `third_party/bluemsx/.../Machines/MSX2 - Panasonic FS-A1F/config.ini`.

- `SLOT0`: BIOS+BASIC em `0-0`
  - `0-2`/`0-3`: slots helper internos quando livres
- `SLOT1`: Cartucho A em `1-0`
- `SLOT2`: Cartucho B em `2-0`
- `SLOT3`: expandido
  - `3-0`: RAM principal/RAM mapper
  - `3-1`: SubROM
  - `3-2`: `DISK.ROM`
  - `3-3`: ROM interna Panasonic/cockpit quando disponível; slot helper interno quando livre

Os helpers internos sao candidatos para ROMs opcionais (`MSXDOS2.ROM`,
`PAINTER.ROM`, `FMPAC.ROM`) somente quando as paginas do subslot estao vazias;
o runtime nao substitui ROM ja carregada para ativar uma extensao.

## Defaults de runtime (catálogo)

- Boot mode: `NORM`
- Disk ROM: `ON`
- Refresh: `60`
- RAM mapper: `256 KB`
- MegaRAM: `OFF`
- Z80 turbo: `DES`
- FM music: `ON`
- SCC cart: `ON`
