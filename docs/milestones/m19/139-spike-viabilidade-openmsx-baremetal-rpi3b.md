# Issue #139 - Spike técnico: viabilidade do openMSX em ambiente baremetal (RPI3B)

- URL: https://github.com/sandersouza/msxbarepi/issues/139
- Milestone: Release: Migração fMSX -> openMSX (m19)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:emulation`, `area:boot`

## Objetivo
Mapear riscos técnicos e definir recorte viável para portar openMSX ao kernel baremetal atual.

## Checklist
- [ ] Levantar dependências obrigatórias do core openMSX
- [ ] Identificar acoplamentos com SO/SDL/libc
- [ ] Definir estratégia de build freestanding/no-OS
- [ ] Definir recorte mínimo de primeiro boot funcional
