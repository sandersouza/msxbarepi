# Issue #76 - Boot MSX2 com BIOS chain e fallback

- URL: https://github.com/sandersouza/msxbarepi/issues/76
- Milestone: Release: Suporte MSX2 (m10)
- Estado remoto: CLOSED
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:boot`, `area:storage`, `area:emulation`

## Registro de BIOS validada (03/03/2026)

Para boot estável em MSX2 (60Hz/NTSC), manter este conjunto no `msx.cpio`:

- `MSX2.ROM` <- `roms/machines/panasonic/hb-f1xd_basic-bios2.rom`
- `MSX2EXT.ROM` <- `roms/machines/panasonic/hb-f1xd_msx2sub.rom`
- `DISK.ROM` <- `roms/fmsx/DISK.ROM`
- `KANJI.ROM` <- `roms/fmsx/KANJI.ROM`

MSX2+ mantido com set fMSX estável:

- `MSX2P.ROM` <- `roms/fmsx/MSX2P.ROM`
- `MSX2PEXT.ROM` <- `roms/fmsx/MSX2PEXT.ROM`

## Ajuste adicional (Settings/Audio)

- Adicionado item `FM Music` no menu `Settings` (acima de `SCC Cart`), com ciclo `ON/OFF` por `ENTER` e `LEFT/RIGHT`.
- Estado aplicado em runtime no fMSX (canais OPLL/YM2413) e persistido em `MSXBARE.CFG` com chave `fm_music=0|1`.

## Checkpoint de estabilidade de boot (04/03/2026)

- Sintoma: kernel travando no splash colorido quando buildado com `DEBUG=1 COMBO_ENABLE_DEBUG_OVERLAY=1`.
- Isolamento realizado:
  - Build sem debug runtime voltou a bootar normalmente.
  - Artefato de referência (boot OK): `artifacts/kernel8-issue76-nodebug.img`.
  - BTID de referência: `BTID:202603041456-07bf64e-42931515`.
- Conclusão parcial: regressão de boot está no caminho de debug modularizado (acoplável/desacoplável), não no core de áudio/fMSX.
- Diretriz temporária: manter build de validação de boot em `COMBO_ENABLE_DEBUG_OVERLAY=0` até estabilizar a correção do módulo de debug.
