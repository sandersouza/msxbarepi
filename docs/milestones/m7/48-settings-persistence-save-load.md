# Issue #48 - Persistência real de Settings (Gravar/Ler no boot)

- URL: https://github.com/sandersouza/msxbarepi/issues/48
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: CLOSED (2026-02-28)
- Prioridade: P2
- Labels: `priority:P2`, `area:boot`, `beta:v0.1`
- Última sincronização local: 2026-02-28

## Progresso
- 2026-02-28: issue estabilizada e encerrada com escopo reduzido.
  - objetivo de estabilização atingido: ação `Gravar` não congela mais o emulador
  - persistência real ficou desativada por segurança (`SV:95`) até backend robusto
  - continuidade da persistência FAT32 em issue dedicada: #50
