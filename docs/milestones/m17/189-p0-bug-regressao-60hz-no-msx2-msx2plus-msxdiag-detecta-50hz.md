# [P0][BUG] Regressão 60Hz no MSX2/MSX2+ (MSXDIAG detecta 50Hz)

Issue remota: #189
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/189

## Descrição

## Problema
MSXDIAG voltou a detectar 50Hz em MSX2/MSX2+, enquanto o esperado e já estabilizado anteriormente era 60Hz.

## Objetivo
Corrigir definitivamente a detecção/comportamento de 60Hz no 9938/9958 sem regressões futuras.

## Escopo técnico
- Revisar pontos de calibração de timing/frequência introduzidos nas últimas integrações.
- Validar fluxo completo de configuração de VDP para MSX2 e MSX2+ (incluindo boot e runtime).
- Criar proteção anti-regressão (checklist/teste objetivo com MSXDIAG para MSX1/MSX2/MSX2+).

## Critérios de aceite
- [ ] MSXDIAG reporta 60Hz corretamente em MSX2 e MSX2+.
- [ ] MSX1 permanece com comportamento esperado já validado.
- [ ] Sem regressões no boot/scroll fino do VDP9958.
- [ ] Evidência antes/depois documentada em issue e handoff.

## Referências obrigatórias
- Consultar referências em third_party (incluindo blueMSX/blueberry quando aplicável).
- Consultar também referências de VHDL do V9958 antes de ajustes finos de timing.
