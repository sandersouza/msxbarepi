# Issue #143 - Camada host openMSX: áudio HDMI + sincronização A/V

- URL: https://github.com/sandersouza/msxbarepi/issues/143
- Milestone: Release: Migração fMSX -> openMSX (m19)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:audio`, `area:timing`, `area:emulation`

## Objetivo
Integrar saída de áudio do openMSX ao pipeline HDMI atual mantendo sincronismo com vídeo.

## Checklist
- [ ] Integrar geração de áudio ao mixer/fila HDMI
- [ ] Ajustar clocking para 50/60Hz
- [ ] Evitar underflow/estalos
- [ ] Validar latência e continuidade
