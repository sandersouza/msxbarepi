# [P1][BUG] GRADIUS2E: glitch na 1ª linha do placar (scroll fino V9958 R25/R26/R27)

Issue remota: #188
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/188

## Descrição

## Problema
Há um glitch de scroll fino no MSX2+ (VDP9958): a primeira linha do placar apresenta deslocamento indevido (ex.: região inferior com `[ enable ]`), indicando falha na lógica de R#25/R#26/R#27.

## Evidência
- Vídeo anexado pelo usuário: `Gravação de Tela 2026-03-13 às 15.19.55.mov`.
- Screenshot anexado na discussão.

## Objetivo
- Corrigir definitivamente o glitch de deslocamento da primeira linha em cenários de scroll fino no MSX2+.

## Escopo técnico
- Disassembly da ROM alvo: `ROMS/games/roms/GRADIUS2E.ROM` para entender rotina de scroll usada pelo jogo.
- Analisar e comparar nossa implementação de V9958 (R25/R26/R27, mask/edge behavior, linha/paridade) com referências.
- Corrigir no core sem soluções ad hoc.

## Critérios de aceite
- [ ] Glitch da primeira linha eliminado no caso reportado.
- [ ] Sem regressão nos demais testes de scroll fino já estabilizados.
- [ ] Evidência antes/depois documentada.

## Referências obrigatórias
- Consultar `third_party` (incluindo emuladores de referência) e **VHDL do V9958** antes da correção.
- Registrar na issue/handoff quais referências foram usadas e por quê.
