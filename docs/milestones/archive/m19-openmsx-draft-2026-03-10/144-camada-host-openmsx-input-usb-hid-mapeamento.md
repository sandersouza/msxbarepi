# Issue #144 - Camada host openMSX: input (USB-HID, mapeamento teclado/joystick)

- URL: https://github.com/sandersouza/msxbarepi/issues/144
- Milestone: Release: Migração fMSX -> openMSX (m19)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:input`, `area:usb-hid`, `area:emulation`

## Objetivo
Conectar input atual do kernel ao backend openMSX preservando mapeamentos MSX existentes.

## Checklist
- [ ] Mapear eventos de teclado para matriz MSX
- [ ] Mapear joystick FIREA/FIREB e rensha
- [ ] Manter comportamento de hotkeys globais
- [ ] Cobrir casos de auto-repeat e combos
