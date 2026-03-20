# Issue #197 - [P0] Adaptar pipeline de vídeo/VDP para modos gráficos do Master System

- URL: https://github.com/sandersouza/msxbarepi/issues/197
- Milestone: Release: Suporte Master System (m22)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:video`, `area:timing`, `area:emulation`

## Checklist
- [ ] Definir resolução/timing base do SMS no runtime
- [ ] Integrar render de background/tiles no framebuffer
- [ ] Integrar sprites e prioridades mínimas necessárias
- [ ] Validar scroll/palette em ROMs de referência

## Status da iteracao atual

- Issue criada para viabilizar o caminho de video jogavel do SMS no framebuffer HDMI.
- O recorte minimo considera timing/resolucao, background, sprites e scroll.
- Ajustes finos ou modos fora do conjunto alvo devem ficar para iteracoes posteriores.
