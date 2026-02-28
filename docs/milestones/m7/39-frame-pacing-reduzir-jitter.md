# Issue #39 - Melhorar frame pacing global e reduzir jitter

- URL: https://github.com/sandersouza/msxbarepi/issues/39
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:performance`, `area:video`, `area:audio`, `area:timing`, `beta:v0.1`
- Status no projeto: `In progress`
- Última sincronização local: 2026-02-27

## Progresso
- 2026-02-28: iteração 1 aplicada (build OK).
  - pacing com espera adaptativa curta (`usSleep`) antes do deadline do próximo frame
  - coleta de erro de pacing (`avg/max` em microssegundos) para validação visual no overlay (`JY2 ... JP`)
- 2026-02-28: iteração 2 aplicada (build OK).
  - espera híbrida de pacing (`usSleep` grosseiro + `SimpleusDelay` fino)
  - objetivo: reduzir oversleep do scheduler e estabilizar erro de deadline por frame
