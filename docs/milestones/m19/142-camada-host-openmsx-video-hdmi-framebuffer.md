# Issue #142 - Camada host openMSX: vídeo HDMI/framebuffer

- URL: https://github.com/sandersouza/msxbarepi/issues/142
- Milestone: Release: Migração fMSX -> openMSX (m19)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:video`, `area:emulation`

## Objetivo
Implementar a ponte de vídeo do openMSX para o framebuffer HDMI do projeto.

## Checklist
- [ ] Definir interface de frame/surface
- [ ] Converter/blitar para formato do framebuffer atual
- [ ] Preservar aspect/scale conforme settings ativos
- [ ] Validar estabilidade com overlay/menu
