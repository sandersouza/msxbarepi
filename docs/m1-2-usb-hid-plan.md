# M1.2 USB/HID Bring-up (RPi 3B)

Status atual (baremetal standalone `usb-host-debug`):
- DWC USB host detectado (`vendor/hwcfg2` OK)
- modo host ativo (`host_mode=1`)
- root port energizado/conectado/habilitado (`pwr=1 conn=1 en=1`)
- `speed=0` no DWC = High-Speed (esperado para o hub USB interno do RPi 3B)

Referências usadas (conceituais):
- `third_party/circle/include/circle/usb/dwhci.h`
- `third_party/circle/lib/usb/dwhcidevice.cpp`
- `third_party/circle/lib/usb/dwhcirootport.cpp`

Próximo passo:
- executar sonda de controle em EP0 (`GET_DESCRIPTOR` de 8 bytes no address 0) para confirmar enumeração do hub interno antes da camada HID.

Observação:
- No RPi 3B o root port vê primeiro o hub interno (LAN9514/SMSC), não o teclado diretamente.


Próximo passo (pivot pragmático usando Circle):
- [x] Spike Circle USB/HID validado em hardware (sample `08-usbkeyboard`): hub interno LAN9514 enumerado e teclado HID funcional (digitação confirmada).
- [x] Compilar e validar `third_party/circle/sample/08-usbkeyboard` (RPI3/AArch64) como spike standalone (`artifacts/kernel8-circle-usbkeyboard-debug.img`) para confirmar a pilha USB/HID do Circle no hardware.
- [~] Bridge compartilhada criada fora de `third_party/circle` (`include/msx_hid_bridge.h`, `src/msx_hid_bridge.c`) e backend `INPUT_BACKEND=circle` agora consome essa bridge; falta integrar runtime Circle ao `msxbare`.

Referências adicionais (Circle):
- `third_party/circle/sample/08-usbkeyboard/kernel.cpp`
- `third_party/circle/include/circle/usb/usbhcidevice.h`
- `third_party/circle/include/circle/usb/usbkeyboard.h`

- [x] Spike standalone `apps/circle-usb-msxinput-debug` validado em hardware: pilha USB/HID do Circle + bridge compartilhada (`msx_hid_bridge`) recebendo raw HID e mapeando joystick bits MSX.

- [~] `msx_input` preparado para integração: API `msx_input_submit_hid_boot_report()` + mapeamento HID->`KeyState[]`/`JST_*` + backend `INPUT_BACKEND=circle` consumidor da bridge compartilhada (runtime Circle ainda pendente).

- [~] Preset experimental `audio-hdmi-circle-input` agora gera artefato (`artifacts/kernel8-audio-hdmi-circle-input.img`) com runtime Circle input linkado ao `msxbare`; falta validacao em hardware do fluxo completo (boot + teclado HID no binario principal).
- [x] Preset provisório `audio-hdmi-no-circle` gerado (`artifacts/kernel8-audio-hdmi-no-circle.img`) para manter baseline de vídeo+áudio HDMI sem runtime Circle enquanto o freeze no ctor USB do Circle (`S:52`) é investigado.
