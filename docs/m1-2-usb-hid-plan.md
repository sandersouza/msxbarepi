# M1.2 - USB Host + HID (Plano de Integracao)

Objetivo: habilitar input real no `msxbare` via teclado USB (HID boot keyboard primeiro), com mapeamento para teclado/joystick do MSX.

## Estado atual

- Video e audio basicos estao funcionais no RPi 3B (`P2` e `HDMI`).
- `fMSX` ainda roda com input neutro (`Joystick() = 0`, sem teclado real).
- Foi criada a base de modulos:
  - `src/usb_host.c` (scaffold host USB)
  - `src/usb_hid.c` (scaffold HID)
  - `src/msx_input.c` (camada agregadora de input para o core)
- `msx_input_poll()` ja esta integrado ao loop por frame no frontend (`PutImage()`).
- Bring-up minimo do controlador DWC (polling) foi iniciado em `usb_host.c`:
  - leitura de `vendor_id` / `hw_cfg2`
  - `core soft reset` (sequencia inspirada no Circle)
  - configuracao host clock (`HCFG`) e power-on do root port
  - polling de status do root port (connect/enable/speed), sem enumeracao ainda

## Referencias consultadas (Circle)

Uso conceitual / sequenciamento / arquitetura (nao copiar codigo diretamente):

- Host USB / DWC:
  - `third_party/circle/include/circle/usb/dwhci.h`
  - `third_party/circle/include/circle/usb/dwhciregister.h`
  - `third_party/circle/lib/usb/dwhcidevice.cpp`
  - `third_party/circle/lib/usb/dwhcirootport.cpp`
  - `third_party/circle/lib/usb/dwhciregister.cpp`
  - `third_party/circle/lib/usb/usbsubsystem.cpp`
- Enumeracao / stack USB:
  - `third_party/circle/include/circle/usb/usbdevice.h`
  - `third_party/circle/include/circle/usb/usbendpoint.h`
  - `third_party/circle/include/circle/usb/usbrequest.h`
  - `third_party/circle/include/circle/usb/usbconfigparser.h`
- HID / teclado:
  - `third_party/circle/include/circle/usb/usbhid.h`
  - `third_party/circle/include/circle/usb/usbhiddevice.h`
  - `third_party/circle/include/circle/usb/usbkeyboard.h`
  - `third_party/circle/lib/usb/usbhiddevice.cpp`
  - `third_party/circle/lib/usb/usbkeyboard.cpp`

## Arquitetura alvo no msxbare

1. `usb_host.c`
   - inicializa controlador host USB (RPi 3B)
   - executa polling/servico de transfers
   - expoe status basico (device/hid present)

2. `usb_hid.c`
   - consome reports HID (boot keyboard primeiro)
   - parser de modifiers + 6-key rollover (boot protocol)
   - fila de reports/eventos minima

3. `msx_input.c`
   - traduz HID -> matriz de teclado MSX / joystick MSX
   - exposto para callbacks do fMSX (`Joystick()`, e depois matriz `KeyState`)

4. `fmsx_frontend.c`
   - chama `msx_input_poll()` por frame (ja integrado)

## Etapas tecnicas (proximas)

1. Bring-up minimo do host USB (DWC) no Pi 3B:
   - [x] reset/control registers basicos + root port power + status polling
   - [ ] root port reset pulse e detect estavel de speed
   - [ ] transfer de controle (GET_DESCRIPTOR)

2. Enumeracao minima de dispositivo HID teclado:
   - device descriptor
   - configuration/interface/endpoint
   - set address / set configuration
   - selecionar boot protocol (teclado)

3. Polling de endpoint interrupt IN:
   - ler report HID boot keyboard (8 bytes)
   - detectar pressed/released

4. Mapeamento HID -> MSX:
   - letras/numeros/espaco/enter/backspace
   - cursores
   - modifiers (Shift/Ctrl)
   - joystick minimo (setas + espaco/ctrl como fire, se necessario)

5. Validacao em hardware:
   - digitar no BASIC
   - testar controles minimos em 1 jogo

## Criterio de aceite desta trilha (primeiro corte)

- Um teclado USB HID (boot protocol) enumera no RPi 3B
- E possivel digitar no BASIC via HDMI
- `audio-hdmi` e `audio-test` continuam sem regressao
