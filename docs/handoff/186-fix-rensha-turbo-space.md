# Handoff - Branch 186-fix-rensha-turbo-space

Data: 2026-03-13
Base: `176-fix-msx2p-boot-screen-slow` (atualizada com merge da #187)
Issue: #186 (Rensha Turbo / auto-fire SPACE)

## Problema
- Rensha Turbo havia parado de funcionar.
- O gating de autofire estava condicionado a `FIREA` pressionado, apesar do recurso ser de `SPACE`.
- O parâmetro `rensha_fire_on` era calculado mas não aplicado no envio do teclado ao runtime.

## Correção aplicada
Arquivo alterado:
- `src/kernel.cpp`

Pontos:
1. No loop de frame, rensha passa a depender apenas de:
   - `m_RenshaMode > 0`
   - `m_RenshaSpaceHeld == true`

2. Em `PushKeyboardStateToRuntime(rensha_fire_on)`:
   - quando `rensha_fire_on == false`, remove `HID SPACE (0x2C)` do report raw antes de enviar ao backend.
   - quando `true`, mantém SPACE normal.

Resultado prático:
- autofire da barra de espaço voltou a funcionar.

## Build de validação
- Artefato: `artifacts/kernel8-issue186.img`
- BUILD_HASH: `34601ff-3506e8f668c49a9b676e5f1894cd34239e0f7daf`
- INT_BUILD: `FD35`

## Comando SD
```bash
KERNEL_IMG=artifacts/kernel8-issue186.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

## Status
- Testado em hardware pelo usuário: "rensha corrigido".
