# Issue #42 - Adicionar Turbo Z80 (DES/PAN/MAX) com sincronismo HDMI/VDP/áudio

- URL: https://github.com/sandersouza/msxbarepi/issues/42
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:performance`, `area:video`, `area:audio`, `area:timing`, `beta:v0.1`
- Última sincronização local: 2026-02-28

## Progresso
- 2026-02-28: implementação inicial concluída (build OK).
  - novo item no Settings: `Z80 Turbo [DES/PAN/MAX]`
  - controle padronizado por `Enter` e setas `esq/dir`
  - aplicação runtime no core local:
    - `DES` = 100% (~3.58MHz)
    - `PAN` = 150% (~5.37MHz)
    - `MAX` = 224% (~8.00MHz)
  - ajuste de ciclos de CPU integrado ao loop de scanline do fMSX local (`HPeriod`, `VPeriod`, `IPeriod`)
