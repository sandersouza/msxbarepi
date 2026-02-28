# Issue #41 - Adicionar opção 50/60Hz no Settings com sincronismo A/V

- URL: https://github.com/sandersouza/msxbarepi/issues/41
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:performance`, `area:video`, `area:audio`, `area:timing`, `beta:v0.1`
- Última sincronização local: 2026-02-28

## Progresso
- 2026-02-28: implementação inicial concluída (build OK) para seleção de refresh em runtime.
  - novo item no Settings: `Refresh [50Hz/60Hz]`
  - controles: `Enter` e setas `esq/dir` alternam valor imediatamente
  - pacing do kernel ajustável por Hz (`16667us`/`20000us`)
  - sincronismo de áudio por frame no fMSX ajustado por Hz (`rate/hz`)
- 2026-02-28: validação em hardware aprovada.
  - 50Hz: ~50fps com áudio estável
  - 60Hz: ~59.9fps com áudio estável
  - comportamento confirmado com combinações de overscan/widescreen/scanlines
