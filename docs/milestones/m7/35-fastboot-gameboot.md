# Issue #35 - Consolidar e otimizar perfis fastboot e gameboot

- URL: https://github.com/sandersouza/msxbarepi/issues/35
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:performance`, `area:boot`, `area:scripts`, `beta:v0.1`
- Última sincronização local: 2026-02-28

## Andamento local

- [x] auditar flags e caminhos de cada perfil
- [x] otimizar fastboot para menor tempo de entrada em jogo
- [x] otimizar gameboot para fluxo de uso direto
- [x] validar comandos de build/preparo SD
- [x] documentar matriz de perfil x tempo x limitações

## Notas de implementação (local)

- Novos presets reprodutíveis no `Makefile`: `m2-fmsx-normal`, `m2-fmsx-fastboot`, `m2-fmsx-gameboot`.
- `scripts/build-m2-config.sh` agora assume `FAST BOOT` como padrão em modo não interativo.
- Runtime ganhou knobs explícitos de warmup/burst por perfil:
  - `COMBO_FMSX_BOOT_BURST_STEPS_FAST=5`
  - `COMBO_FMSX_BOOT_BURST_STEPS_GAME=10`
  - `COMBO_FMSX_BOOT_WARMUP_FRAMES_FAST=720`
  - `COMBO_FMSX_BOOT_WARMUP_FRAMES_GAME=2400`
