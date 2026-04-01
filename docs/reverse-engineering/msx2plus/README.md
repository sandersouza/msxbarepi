# MSX2+ Reverse Engineering Dossier

Pacote canonico para a auditoria do `V9958 stock` e para a engenharia reversa do boot logo do `MSX2+`.

## Escopo desta leva

- consolidar o comparativo do core local contra `blueMSX` e `third_party/V9958-Super`
- registrar o papel de `MSX2P.ROM`, `MSX2PEXT.ROM`, `KANJIBASIC.ROM`, `KANJI.ROM` e `MSXJE`
- descrever o callflow real do boot logo do `MSX2+` a partir de offsets verificados com `z80dasm`
- transformar gaps tecnicos em backlog implementavel

## Fontes principais

- Core local:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/V9938.c`
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/Wide.h`
- Referencia de emulacao:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
- Referencia HDL:
  - `third_party/V9958-Super/src/vdp/vdp_register.sv`
  - `third_party/V9958-Super/src/vdp/vdp_command.sv`
  - `third_party/V9958-Super/src/vdp/vdp_graphic4567.v`
  - `third_party/V9958-Super/docs/revisions.md`
- Topologia de maquina:
  - `third_party/openMSX/share/machines/Sony_HB-F1XDJ.xml`
  - `third_party/bluemsx/blueMSX/Make/blueMSXlite/linux-sdl/Machines/MSX2+ - Sony HB-F1XDJ/config.ini`

## Disassembly temporario

Os dumps completos gerados por `z80dasm` nao sao versionados nesta rodada. O corpus curado abaixo foi produzido a partir de comandos como:

```bash
z80dasm -a -t -l -g 0x0000 -o /tmp/MSX2PEXT.asm roms/initramfs/MSX2PEXT.ROM
z80dasm -a -t -l -g 0x0000 -o /tmp/MSX2P.asm roms/initramfs/MSX2P.ROM
z80dasm -a -t -l -g 0x0000 -o /tmp/KANJIBASIC.asm roms/initramfs/KANJIBASIC.ROM
```

## Estrutura

- `v9958-stock-compare-matrix.md`
  - matriz canonica de semantica, registradores, status e completude
- `vdp9958-stock/`
  - gap report, mapa de uso do `MSX.c` e backlog implementavel
- `boot-logo/`
  - papel das ROMs, callflow do logo e estrategia de correcao

## Decisao desta rodada

- manter o foco em `V9958 stock`
- nao versionar dumps `.asm` completos
- usar o `ROM set` local que bate com o `HB-F1XDJ` do `openMSX` como referencia canonica
- tratar `MSXJE` como item de topologia de referencia, mas nao como causa primaria do bug do logo
