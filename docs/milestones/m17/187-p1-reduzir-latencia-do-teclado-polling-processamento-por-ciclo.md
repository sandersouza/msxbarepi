# [P1][BUG] Fila de captura USB-HID fora do ciclo do Z80 para preservar transições press/release

Issue remota: #187
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/187

## Descrição

## Problema
O pipeline atual ainda perde ou distorce transições de `press/release` porque a captura USB-HID e o consumo efetivo do core ocorrem em clocks diferentes.

Importante: quando falamos em `PRESS UP/DOWN`, estamos nos referindo a transições de `key down` / `key up` de qualquer tecla ou botão relevante, e **não** especificamente às teclas direcionais `UP` e `DOWN`.

## Impacto atual
- `press` não detectado em parte dos ciclos
- `release` perdido ou atrasado
- tecla aparentando falhar ou entrar em repetição contínua
- impacto severo em gameplay e na fluidez geral da emulação

## Evidência técnica local
- `src/tools/usb_hid_keyboard.*` já possui fila HID entre callback RAW e loop principal.
- `src/fmsx_host_stubs.c` ainda converte isso em estado estabilizado, não em histórico temporal de transições.
- `src/fmsx_local/MSX.c` consome joystick no cadence do `ScanLine==192`, enquanto teclado também acaba dependente do ritmo do core e do estado publicado.

## Objetivo
- Preservar transições `press/release` independentemente da fase entre captura USB e consumo do Z80.
- Desacoplar explicitamente captura e consumo.
- Consolidar a solução em uma tool reutilizável/importável, preparada para uso futuro como base de framework de migração de emuladores.

## Escopo técnico
- [x] Criar uma tool de fila/cache de input em `src/tools/input/`.
- [x] Separar explicitamente `capture clock` e `consume clock`.
- [ ] Armazenar transições/snapshots com semântica temporal suficiente para o core não perder `press` nem `release`.
- [x] Integrar a primeira versão ao pipeline de teclado.
- [ ] Prever joystick no contrato público da tool, mesmo que a primeira validação obrigatória fique focada em teclado.
- [ ] Evitar novas correções espalhadas em `kernel.cpp`, `fmsx_host_stubs.c` e caminhos ad hoc do backend.

## Direção de implementação
Criar um componente novo em `src/tools/input/`, por exemplo `usb_hid_input_queue.*` ou nome equivalente focado em fila/eventos de input.

A tool deve ter contrato explícito para:
- `init/reset`
- `push_keyboard_report(...)`
- reserva de interface para `push_joystick_report(...)`
- `drain_next_event(...)` e/ou `drain_to_snapshot(...)`
- telemetria: `queued`, `dropped`, `high_watermark`, overflow

Política recomendada:
- callback RAW só captura e enfileira
- loop principal / scanline-framebuffer faz manutenção leve da fila e snapshots derivados
- core/Z80 consome no ponto correto sem perder transições

A fila precisa modelar transição, e não apenas estado final consolidado.
O filtro de estabilização não pode apagar `release` legítimo nem transformar `press/release` curtos em estado preso.

## Critérios de aceite
- [ ] Transições `press/release` rápidas não podem sumir.
- [ ] Não pode haver tecla "presa" por `release` perdido.
- [ ] Não pode haver repetição contínua falsa causada por amostragem fora de fase.
- [ ] Menu/F12/hotkeys seguem estáveis.
- [ ] A solução vira tool importável, sem ficar acoplada ao `kernel.cpp`.
- [ ] Overflow da fila tem política explícita e telemetria mínima observável.
- [ ] Documentação local da milestone e handoff atualizados.

## Testes obrigatórios
- [ ] BASIC: toques rápidos repetidos na mesma tecla, verificando `press` e `release` sem perdas.
- [ ] Gameplay: segurar, soltar e alternar comandos rapidamente sem falhas nem repetição fantasma.
- [ ] Menu/F12: `ESC`, `ENTER`, navegação e hotkeys sem regressão.
- [ ] Stress: bursts de reports HID com fila cheia precisam falhar de forma previsível, com contadores de drop observáveis.
- [ ] Regressão: callback RAW continua mínimo; `UpdateLEDs()` continua apenas no contexto correto do loop principal.

## Atualização 2026-03-22

### Corte implementado nesta rodada
- Tool nova `src/tools/input/usb_hid_input_queue.*` com ring buffer fixo e dois consumidores independentes:
  - `UI`: menu, hotkeys e joystick virtual
  - `Runtime`: backend/emulador
- `CUsbHidKeyboard` migrou para essa tool e ganhou `ConsumeForRuntime()`.
- `kernel.cpp` passou a manter dois snapshots separados:
  - `m_LastKeyboard*` para a UI
  - `m_RuntimeKeyboard*` para o backend
- `PushKeyboardStateToRuntime()` agora consome do cursor `Runtime`, em vez de reutilizar o último snapshot já drenado pela UI.

### Limite atual conhecido
- O pipeline ainda entrega no máximo um report novo por frame ao backend.
- Isso já evita o colapso imediato causado pela UI, mas ainda precisa de validação em hardware para confirmar se elimina perdas em `press/release` curtos sob carga.

### Validação local desta rodada
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603221300-e35b064`: OK
- Artefato: `artifacts/kernel8-issue187.img`
- `BUILD_HASH`: `e35b064-2e6de2aef96f1bef75f3ea7db09f53d6feb0ac06`
- Revalidação após commit: `make -j4 DEBUG=1 BUILD_BID=202603221330-a969d52` OK
- `BUILD_HASH` atual da branch: `a969d52-383d0995fd90075e3ebe4d186f145dad9c09885f`

### Próximo passo
- Validar em hardware.
- Se ainda houver perda de transição, mover a próxima iteração para consumo temporal mais fino no backend, em vez de apenas um snapshot por frame.

## Atualização 2026-03-22 - iteração 2

### Corte implementado nesta rodada
- `kernel.cpp` agora drena todos os reports pendentes do cursor `Runtime` e os empilha no backend em ordem.
- `fmsx_runtime_set_keyboard_raw()` passou a enfileirar reports raw em vez de aplicar o `KeyState[]` imediatamente.
- O fMSX agora drena essa fila ao longo dos scanlines com `fmsx_runtime_keyboard_drain_step()`.
- `fmsx_runtime_init/menu_reset/load_state/shutdown` passaram a resetar explicitamente o pipeline de teclado do runtime.

### Limite atual conhecido
- A separação temporal agora existe também no runtime, mas ainda não houve validação em hardware.
- Se ainda houver perda de `press/release`, o próximo alvo fica concentrado na política de estabilização do `KeyState[]`, e não mais no buffer/ordenação dos reports.

### Validação local desta rodada
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603221405-3572e72`: OK
- Artefato: `artifacts/kernel8-issue187.img`
- `BUILD_HASH`: `3572e72-13a3a053bcbb762f4b0941e6df0045720034cf46`

## Referências obrigatórias
- `src/tools/usb_hid_keyboard.cpp`
- `src/fmsx_host_stubs.c`
- `src/fmsx_local/MSX.c`
- `third_party/circle/sample/08-usbkeyboard/kernel.cpp`
- `third_party/circle/doc/usb-plug-and-play.txt`

## Observações de escopo
- A issue reaproveitada continua sendo a `#187`; não será criada outra.
- `PRESS UP/DOWN` deve ser tratado nesta issue como transições `press/release`, e não como setas direcionais.
- Joystick entra no contrato da tool agora, mas a validação obrigatória da primeira entrega segue focada em teclado.
- A solução deve respeitar as restrições atuais do projeto: baremetal, sem dependência de OS e sem abstração excessiva no caminho sensível de hardware.
