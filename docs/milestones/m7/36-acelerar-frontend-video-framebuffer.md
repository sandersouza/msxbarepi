# Issue #36 - Acelerar frontend de vídeo e framebuffer (blit/flush/pacing)

- URL: https://github.com/sandersouza/msxbarepi/issues/36
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:performance`, `area:video`, `area:timing`, `beta:v0.1`
- Última sincronização local: 2026-02-27

## Progresso
- 2026-02-27: otimização #1 aplicada no hot path de blit.
  - removida branch por pixel no loop interno (seleção por linha: copy/LCD/CRT)
  - dim CRT 85% otimizado via lookup tables RGB565 por canal
  - build de validação OK (`m2-fmsx-bootstrap` com guard-third-party)
