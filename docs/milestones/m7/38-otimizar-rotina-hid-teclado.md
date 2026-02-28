# Issue #38 - Otimizar rotina HID de leitura/conversão de teclado

- URL: https://github.com/sandersouza/msxbarepi/issues/38
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:performance`, `area:input`, `beta:v0.1`
- Última sincronização local: 2026-02-28

## Progresso local

- [x] Auditoria do caminho HID -> menu -> runtime: sem gargalo crítico identificado
- [x] Otimização segura aplicada: deduplicação de report HID em `UpdateJoystickFromRaw()` (early-return para payload idêntico), reduzindo trabalho redundante em bursts repetidos de teclado USB
