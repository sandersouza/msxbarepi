# Handoff - branch `235-validar-corpus-dinamico-v9958-stock`

Ultima atualizacao: 01/04/2026

## Objetivo desta memoria

Registrar o estado documental e tecnico da branch dedicada a fechar a trilha do `V9958 stock`, com foco em:

- comparativo canonico contra `blueMSX` e `V9958-Super`
- engenharia reversa do boot logo do `MSX2+`
- backlog implementavel para a proxima rodada funcional

## O que foi entregue nesta rodada

- criado o diretorio canonico `docs/reverse-engineering/msx2plus/`
- criada a matriz `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
- criado o subdossie `docs/reverse-engineering/msx2plus/vdp9958-stock/`
- criado o subdossie `docs/reverse-engineering/msx2plus/boot-logo/`
- criado `docs/reverse-engineering/issues/issue-82/README.md`
- criado `docs/reverse-engineering/issues/issue-82/dynamic-capture-recipes.md`
- `CONTEXT.md` realinhado para apontar para este handoff

## Principais achados tecnicos consolidados

### V9958 stock

- o core local ja converge bem em:
  - selecao de registradores por `0x99`
  - leitura de `S#7`
  - escrita em `R#44`
  - decode funcional basico de comandos
- o maior gap restante esta em:
  - sync temporal de status read
  - command engine ainda por quantum fixo
  - renderer `SCREEN 6/7` simplificado frente ao `blueMSX`

### Boot logo do MSX2+

- `z80dasm` agora esta disponivel e foi usado para validar o callflow da `MSX2PEXT.ROM`
- ficou confirmado que:
  - `0x2BE4/0x2BEF` fazem polling de `S#2`
  - `0x32CD` le `S#7`
  - `0x32E7` arma `R#17` para escrita indireta
  - `0x2E3E`, `0x2EBF`, `0x3040` e `0x3299` fazem lotes de `R#32..R#45` por `0x9B` e disparam `R#46`
- a causa raiz do logo continua no `V9958`, nao em "falta de ROM"

## Estado do ROM set

- `MSX2P.ROM`, `MSX2PEXT.ROM`, `KANJIBASIC.ROM` e `KANJI.ROM` batem com os hashes do `HB-F1XDJ` do `openMSX`
- `MSXJE` continua ausente em `roms/initramfs/`, embora o runtime local tente carrega-lo se o arquivo existir
- decisao desta rodada:
  - nao tratar a ausencia de `MSXJE` como explicacao principal do bug do logo

## Fontes usadas

- core local:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/V9938.c`
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/Wide.h`
- referencias:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
  - `third_party/V9958-Super/src/vdp/*.sv`
  - `third_party/openMSX/share/machines/Sony_HB-F1XDJ.xml`
- disassembly temporario:
  - `/tmp/MSX2PEXT.asm`
  - `/tmp/MSX2P.asm`
  - `/tmp/KANJIBASIC.asm`

## Comandos principais desta rodada

```bash
z80dasm -a -t -l -g 0x0000 -o /tmp/MSX2PEXT.asm roms/initramfs/MSX2PEXT.ROM
z80dasm -a -t -l -g 0x0000 -o /tmp/MSX2P.asm roms/initramfs/MSX2P.ROM
z80dasm -a -t -l -g 0x0000 -o /tmp/KANJIBASIC.asm roms/initramfs/KANJIBASIC.ROM
```

## Build e testes desta rodada

- nao houve alteracao funcional em `src/`
- nao houve build novo de kernel nesta leva
- validacao desta rodada foi documental:
  - existencia de caminhos
  - hashes de ROM
  - cruzamento de offsets via `z80dasm`

## Proximos passos recomendados

1. atacar `status read + command engine` antes de qualquer experimento novo com ROM
2. reescrever `SCREEN 6/7` para fluxo page-aware
3. repetir:
   - boot logo `MSX2+`
   - `STS006`
   - `REG004`
   - `Knightmare Gold`
   - `Gradius2E/Nemesis2E`

## Risco principal

Se a proxima rodada mexer so em `R#25/R#26/R#27` ou so em `R#2 bit5`, sem tratar temporalidade e renderer juntos, o mais provavel e apenas deslocar o sintoma do logo para outra fase da animacao.
