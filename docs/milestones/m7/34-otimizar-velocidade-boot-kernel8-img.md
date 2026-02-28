# Issue #34 - Otimizar velocidade de boot do kernel8.img

- URL: https://github.com/sandersouza/msxbarepi/issues/34
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:performance`, `area:boot`, `beta:v0.1`
- Última sincronização local: 2026-02-28

## Progresso local

- [x] Defer da inicialização USB/HID para reduzir tempo até primeiro frame (`COMBO_DEFER_USB_INIT_FRAMES`, default `90`)
- [x] Propagação do knob para `Makefile` raiz e `circle_combo/Makefile`
- [x] Atualização da documentação de knobs/perfis no `README.md` (semântica atual de `GAME BOOT`)
- [x] Otimização de tamanho/link (`COMBO_SIZE_OPT=1`: `-Os`, `-ffunction-sections/-fdata-sections`, `--gc-sections`)
- [x] Boot mínimo no StartMSX (`COMBO_FMSX_BOOT_MINIMAL_STARTUP=1`) para pular probes opcionais de ROM/cartucho no bootstrap
