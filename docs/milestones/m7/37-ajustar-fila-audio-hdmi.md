# Issue #37 - Ajustar fila de áudio HDMI (latência e estabilidade)

- URL: https://github.com/sandersouza/msxbarepi/issues/37
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:performance`, `area:audio`, `beta:v0.1`
- Última sincronização local: 2026-02-28

## Progresso
- 2026-02-28: sweep de otimização de fila HDMI aplicado (build OK).
  - `RefillAudioQueue()` com `target fill` para reduzir jitter de latência
  - recuperação agressiva em `low-water` após hiccups (reduz risco de underflow em sequência)
  - underflow parcial de batch agora preenche com silêncio explícito (sem hold de última amostra)
  - caminho de pausa otimizado com `memset` para zerar batch
