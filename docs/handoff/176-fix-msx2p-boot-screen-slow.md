# Handoff - branch `176-fix-msx2p-boot-screen-slow`

## Contexto atual
- Branch de trabalho criada a partir de `fix-acurating-timing-vdp9958` para tratar exclusivamente o bug de boot screen lento no MSX2+.
- Issue remota aberta: [#176](https://github.com/sandersouza/msxbarepi/issues/176).
- Espelho local atualizado em `docs/milestones/m17/176-boot-screen-msx2plus-extremamente-lento-logo-scroll-paginas-alternadas.md`.

## Sintoma de hardware
- No boot logo do MSX2+, a animação progride muito lentamente.
- Capturas com diferença de ~1000 frames mostram deslocamento mínimo.
- `R26` alterna durante a animação, sugerindo page flip/scroll entre páginas.

## Estado técnico de referência
- Última build validada pelo usuário antes da branch dedicada:
  - `BUILD_HASH:8e25964-654f5142ae8ec086052142cd6b0c2e40a4536a88`
  - `INT_BUILD:604D`
- 60Hz no MSXDIAG foi restaurado nos três modelos (MSX1/MSX2/MSX2+).

## Próximos passos imediatos
1. Instrumentar pontos de telemetria do boot logo MSX2+ (R26/R2/R25, page flip, eventos de comando VDP).
2. Identificar gargalo de cadência no pipeline de boot (timing de status polling vs update/frame-step).
3. Aplicar ajuste mínimo focado em MSX2+ e validar sem regressão de 60Hz no MSXDIAG.

## Iteracao atual (12/03/2026 01:00 BRT)
- Fluxo da issue iniciado:
  - issue remota criada: `#176`.
  - branch vinculada criada via `gh issue develop`: `176-fix-msx2p-boot-screen-slow`.
  - espelho local da issue/milestone atualizado.
- Primeiro ajuste tecnico nesta branch:
  - calibracao extra de leitura `0x99` (status VDP) limitada a MSX1.
  - para MSX2/2+, mantido apenas custo base de I/O, evitando penalizar boot logo.
  - arquivo alterado: `src/fmsx_local/MSX.c`.
- Build local validado:
  - `make clean && make DEBUG=1` (OK)
  - artefatos: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- BUILD_HASH: `8e25964-80b65d962704c268aeac9037a6782206ce694e3d`
- INT_BUILD: `6D3B`
