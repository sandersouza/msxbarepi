# Issue #68 - Firmware RP2040 + TinyUSB para teclado MSX

- URL: https://github.com/sandersouza/msxbarepi/issues/68
- Milestone: Hardware e Periféricos Físicos (m9)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:hardware`, `area:usb-hid`

## Entrega desta issue
- Documento técnico concluído em [docs/rp2040-tinyusb-msx-keyboard-firmware.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/rp2040-tinyusb-msx-keyboard-firmware.md)
- Arquitetura definida em 4 blocos: scanner de matriz, tradutor de keymap, HID USB e diagnóstico.
- Definição de protocolo HID MVP (boot keyboard 6KRO + modificadores).
- Estratégia de integração com o kernel atual sem driver custom no lado RPi.

## Próximo passo recomendado
- Executar #69 para implementar o contrato de integração no kernel e telemetria de bridge HID.
