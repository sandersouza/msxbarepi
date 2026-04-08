# Handoff Persistente da Branch 70-suporte-joysticks-usb-mapeamento-atari-msx

Ultima atualizacao: 08/04/2026 (23:20 -03)

## Objetivo da branch

Atacar a issue [#70](https://github.com/sandersouza/msxbarepi/issues/70):

- ampliar o suporte a joysticks USB
- mapear para o padrao Atari/MSX de forma consistente
- tratar perfis HID comuns
- prever deadzone e calibracao basica quando fizer sentido

## Estado atual

- branch criada a partir de `main` ja com o merge da umbrella `#82`
- issue remota `#70` fechada apos merge do PR `#246`
- joystick USB ja funcional em hardware
- submenu local `JOYPAD MAPPING` implementado no `F12`
- navegacao do menu pausado por joystick USB implementada
- `Scale` saiu de `Settings` e foi movido para `Debug`
- estado atual declarado estavel pelo usuario
- PR `#246` mergeado em `main`
- branch remota removida

## Corte local atual

- novo wrapper local: `src/tools/usb_hid_gamepad.*`
- integracao no loop principal do kernel:
  - attach de `upad1` via `CDeviceNameService`
  - status live por `RegisterStatusHandler()`
  - remocao por `RegisterRemovedHandler()`
- bridge Atari/MSX reaproveitado sem mudar contrato do backend:
  - `RIGHT = bit0`
  - `LEFT = bit1`
  - `DOWN = bit2`
  - `UP = bit3`
  - `FIRE A = bit4`
  - `FIRE B = bit5`
- combinacao do joystick USB com o bridge atual do teclado feita no kernel antes de `emulator_backend_input_push_joystick()`
- menu `Settings` ganhou `JOYPAD MAPPING` abaixo de `Rensha`
- `Settings` deixou de exibir `Scale`
- `Debug` agora exibe `Scale` junto de `Debugger [MAX/MIN/OFF]`
- com `Debug = OFF`, o viewport ignora a escala manual e usa sempre o maximo permitido pela resolucao atual:
  - `720p/768p = 3x`
  - `1080p = 4x`
- com `Debug = MIN/MAX`, `Scale` volta a ser manual e controla o viewport
- em `720p`, `Scale = 3x` voltou a ser permitido tambem no modo manual; quando a altura excede a tela, o presenter faz crop vertical central em vez de esmagar o frame
- o snapshot de fundo do menu pausado agora segue o mesmo contrato do blit principal em `720p/3x`: preserva a altura logica `768x729` e aplica apenas crop vertical central na area visivel, evitando a pequena mudanca de escala ao abrir o menu
- `JOYPAD MAPPING` nao entra mais por qualquer direcao do joystick; a entrada volta a depender apenas do seletor (`button 0` / `ENTER`)
- ao capturar um novo controle dentro de `JOYPAD MAPPING`, o slot atual ja e promovido para o mapa efetivo antes de avancar ao proximo
- `Save to disk` agora persiste os `joy_map_*` a partir do mapa atual do menu, sem depender do estado interno do device em runtime
- `START` do gamepad conhecido agora atua como atalho global de pausa, equivalente ao `F12`
- `Scanlines` foi simplificado para `OFF/ON`; o antigo modo `CRT` e toda a logica associada de blit/screenshot foram removidos, mantendo apenas o caminho LCD
- no menu pausado:
  - `button 0`/`A` = seletor
  - `button 1`/`B` = `ESC`
  - direcional/hat/analogico esquerdo = setas
- o item do menu aparece como `Joypad mapping [->]`, com a seta alinhada a direita
- novo submenu:
  - `Joystick UP`
  - `Joystick DOWN`
  - `Joystick LEFT`
  - `Joystick RIGHT`
  - `Button 1`
  - `Button 2`
  - `ESC to return`
- o submenu entra em captura continua ao abrir:
  - o item destacado espera um novo comando do joystick
  - ao capturar, salva o codigo no slot atual
  - desce automaticamente para o proximo item
  - o fluxo e ciclico e so sai por `ESC`
- com `JOYPAD MAPPING` destacado em `Settings`, o primeiro comando do joystick ja entra no submenu e grava o primeiro slot no mesmo gesto, sem precisar de `ENTER`
- o loop pausado do menu agora continua sendo processado mesmo sem nova borda de teclado, para que a captura do joystick nao dependa de `ENTER` nem de outra tecla auxiliar
- codigos duplicados nao sao permitidos: ao remapear um controle ja usado, o slot antigo e limpo
- `ESC` aplica o mapa editado ao runtime e volta para `Settings`
- persistencia em `msxbarepi.cfg`:
  - `joy_map_up`
  - `joy_map_down`
  - `joy_map_left`
  - `joy_map_right`
  - `joy_map_button1`
  - `joy_map_button2`

## Semantica implementada nesta rodada

- alvo principal: um joystick USB em `upad1`
- pads com mapeamento conhecido do Circle:
  - direcional por `GamePadButtonUp/Down/Left/Right`
  - stick analogico esquerdo com deadzone basica
  - `A/Cross -> FIRE A`
  - `B/Circle` ou `X/Square -> FIRE B`
- fallback generico para HID sem mapping conhecido:
  - `hat[0]` quando existir
  - senao `axes[0]/axes[1]` com deadzone
  - `button0 -> FIRE A`
  - `button1 -> FIRE B`
- pares opostos (`left+right`, `up+down`) sao normalizados para zero

## Referencias tecnicas usadas

- Circle:
  - `third_party/circle/include/circle/usb/usbgamepad.h`
  - `third_party/circle/sample/27-usbgamepad/kernel.cpp`
  - `third_party/circle/sample/37-showgamepad/kernel.cpp`
- bridge do backend local:
  - `src/emulator_backend.c`
  - `src/fmsx_host_stubs.c`

## Build local validada

- `BUILD_BID=202604082350-main-scanline-lcd-only`
- `BUILD_ID=A196`
- `BUILD_HASH=ab0cc84-ed04f526b5f324996def535ed9f492b12e95262f`
- artefato: `artifacts/kernel8-default.img`

## Referencias iniciais

- issue local da milestone:
  - [docs/milestones/m9/70-suporte-joysticks-usb-mapeamento-atari-msx.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m9/70-suporte-joysticks-usb-mapeamento-atari-msx.md)
- historico util de input/bridge:
  - [docs/handoff/187-reduzir-latencia-teclado.md](/Users/sandersouza/Developer/msxbarepi/docs/handoff/187-reduzir-latencia-teclado.md)
  - [docs/handoff/173-fix-usb-hid-press-release-latency.md](/Users/sandersouza/Developer/msxbarepi/docs/handoff/173-fix-usb-hid-press-release-latency.md)
- referencias de milestone relacionadas:
  - [docs/milestones/m9/71-prototipo-joystick-atari-msx-gpio.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m9/71-prototipo-joystick-atari-msx-gpio.md)

## Hipotese inicial de trabalho

- existe historico de bridge legado `teclado -> joystick`, mas a `#70` pede suporte ampliado a joystick USB real
- o caminho principal deve passar pelo pipeline atual de USB-HID/input ja usado pelo teclado
- a implementacao deve manter aderencia ao padrao Atari/MSX observado pelo core do emulador, sem reintroduzir regressao no teclado/hotkeys

## Fechamento desta rodada

1. Suporte funcional de joystick USB confirmado em hardware.
2. Navegacao do menu por joystick confirmada.
3. `JOYPAD MAPPING` com captura continua e persistencia em `.cfg` confirmado.
4. Ajuste de viewport em `720p/3x` confirmado sem mudanca de escala ao abrir o menu.
5. PR `#246` mergeado em `main` e issue `#70` fechada.
6. Proxima rodada fica para setup/mapeamento avancado de botoes e perfis por pad.
