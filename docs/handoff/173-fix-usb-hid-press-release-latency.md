# Handoff Persistente da Branch 173-fix-usb-hid-press-release-latency

Ultima atualizacao: 11/03/2026 (ciclo 22:52 BRT)

## Objetivo da branch

Corrigir instabilidade de teclado USB-HID reportada em hardware:
- perda de `PRESS`/`RELEASE`,
- latência aleatória no acionamento.

Issue remota associada: `#173` (milestone m17).

## Diagnóstico inicial

- O callback RAW de teclado estava executando lógica completa de input (`UpdateJoystickFromRaw()`), enquanto o loop principal também executava o mesmo pipeline por frame.
- Isso abre condição de corrida entre contexto assíncrono do USB e loop principal, com efeito de jitter e possíveis estados inconsistentes.

## Alterações aplicadas

- `src/kernel.h`
  - adicionados campos para snapshot pendente de teclado:
    - `m_PendingKeyboardSeq`
    - `m_PendingKeyboardModifiers`
    - `m_PendingKeyboardRawKeys[6]`
    - `m_PendingKeyboardReport`
- `src/kernel.cpp`
  - callback `KeyStatusRawHandler()` ficou leve: apenas captura snapshot RAW (seqlock-style).
  - processamento completo de input permanece no loop principal.
  - no loop principal, quando há snapshot pendente, consome reporte de forma lockless e chama `UpdateJoystickFromRaw()` em contexto determinístico.
  - reset de estado pendente também no `KeyboardRemovedHandler()`.

## Espelho da milestone

- Criado: `docs/milestones/m17/173-bug-teclado-usb-hid-press-release-latencia.md`
- Atualizado: `docs/milestones/m17/CHALLENGES.md` com status `Parcial`

## Build desta iteração

- Comando: `make -j4 DEBUG=1`
- Resultado: `OK`
- Artefatos:
  - `artifacts/kernel8-issue173.img`
  - `artifacts/kernel8-default.img`
- BUILD_HASH: `a40b62e-85a9d5723c6acd1527db142f6247df39420eac33`
- INT_BUILD: `A083`

## Próximos passos

1. Teste em hardware (MSX1/MSX2/MSX2+) focando press/release contínuo e atalhos de menu.
2. Se estável, abrir PR para `fix-acurating-timing-vdp9958`.
3. Merge, sync, retorno para branch base e fechamento da issue `#173`.

---

Ultima atualizacao: 11/03/2026 (ciclo 23:06 BRT)

## Ajuste adicional após teste em hardware

Sintoma reportado após a primeira correção:
- ainda havia teclas "presas" (repeat constante) até novo evento de teclado.

Causa identificada:
- corrida no handoff de eventos entre callback USB e loop principal;
- `m_PendingKeyboardReport` podia ser limpo no loop exatamente quando um novo evento chegava, perdendo transições (`release`).

Correção aplicada:
- removido o flag booleano `m_PendingKeyboardReport`;
- consumo de evento passou a ser guiado por sequência (`m_PendingKeyboardSeq` -> `m_ProcessedKeyboardSeq`);
- callback continua mínimo (snapshot raw), loop principal consome snapshot estável e marca `m_ProcessedKeyboardSeq = seq_b`;
- no `KeyboardRemovedHandler()`, `m_ProcessedKeyboardSeq` é alinhado ao `m_PendingKeyboardSeq`.

Arquivos:
- `src/kernel.h`
- `src/kernel.cpp`

Commit:
- `1fcd8c9` - Fix keyboard event loss by switching pending HID handoff to seq tracking

Build desta iteração:
- Comando: `make -j4 DEBUG=1`
- Artefatos:
  - `artifacts/kernel8-issue173.img`
  - `artifacts/kernel8-default.img`
- BUILD_HASH: `1fcd8c9-ebef7d0215d56363f8aa13b746dbd409ed1108a3`
- INT_BUILD: `64AF`

---

Ultima atualizacao: 11/03/2026 (ciclo 23:14 BRT)

## Refatoracao estrutural: bloco USB-HID desacoplado do kernel

Objetivo desta iteracao:
- reduzir acoplamento do `kernel.cpp`;
- migrar gerenciamento USB-HID/teclado para modulo importavel em subdiretorio dedicado.

Arquitetura aplicada:
- novo subdiretorio: `src/tools/`
- novo modulo: `src/tools/usb_hid_keyboard.h/.cpp`
  - attach/detach do teclado USB (`ukbd1`)
  - callback RAW minimalista
  - snapshot lockless por sequencia (seqlock-style)
  - consumo de evento no loop principal
  - sinalizacao de evento de remocao

Mudancas no kernel:
- `kernel.h/.cpp` agora usam `CUsbHidKeyboard` como dependencia/import;
- removidos do kernel os campos internos de callback/pending HID (`m_Pending*`, `m_ProcessedKeyboardSeq`, ponteiros de teclado/removal handle);
- removidos handlers estaticos de HID do kernel (`KeyStatusRawHandler`, `KeyboardRemovedHandler`);
- `kernel.cpp` ficou com papel de orquestracao:
  - chama `AttachIfAvailable()` apos `UpdatePlugAndPlay()`;
  - consome `ConsumeRemovedEvent()` para limpar estado de input/menu;
  - consome `ConsumeLatest()` para aplicar no pipeline existente (`UpdateJoystickFromRaw`).

Build desta iteracao:
- Comando: `make clean && make -j4 DEBUG=1`
- Artefatos:
  - `artifacts/kernel8-issue173.img`
  - `artifacts/kernel8-default.img`
- BUILD_HASH: `8ba837a-463e84253aa5e5ca3b486e5510fb42c8f58f8343`
- INT_BUILD: `1496`

Rebuild apos commit final da refatoracao:
- Comando: `make -j4 DEBUG=1`
- BUILD_HASH: `c6ffc1b-23c14080fc2ffbaa2bd376ef49bf56f7761f72f7`
- INT_BUILD: `37FD`

---

Ultima atualizacao: 11/03/2026 (ciclo 23:40 BRT)

## Estabilizacao apos diagnostico com MSXDIAG

Sintoma observado em hardware:
- no teste de teclado do MSXDIAG, algumas teclas exibiam comportamento de "duplo pressionar".

Analise:
- MSXDIAG trabalha com transicoes `PRESS/UP` por frame (matriz de teclado), sensivel a glitches de 1 frame.
- nosso pipeline podia propagar variacao transitoria de snapshot HID para `KeyState[]`, gerando sequencia espuria de transicao.

Correcoes aplicadas no nosso core (sem alterar MSXDIAG):
- `src/fmsx_host_stubs.c`
  - aplicado filtro de estabilidade de matriz (`desired` -> `candidate` -> `stable`) antes de publicar em `KeyState[]`.
  - objetivo: bloquear toggles espurios de 1 frame que aparecem como press/release duplo.
- `src/keyboard_input.cpp`
  - removido bridge de teclado para joystick (`bridge_bits` agora nao recebe mapeamento de teclas).
  - `ComboKeyboardJoyMask()` passa a retornar `0`.
- `src/kernel.cpp`
  - removido bloco de mascaramento de `SHIFT/Z/X/SPACE` no `PushKeyboardStateToRuntime()`.
  - teclado USB-HID fica exclusivamente como teclado (sem papel de joystick).

Build desta iteracao:
- Comando: `make -j4 DEBUG=1`
- BUILD_HASH: `ddb62eb-5590a79569880bd9b5300c3c5d5230a0ccc8c6a0`
- INT_BUILD: `2B43`

Build final apos commit de estabilizacao:
- Commit: `03471c9`
- Comando: `make -j4 DEBUG=1`
- BUILD_HASH: `03471c9-1e98a298844aefa0b76064f903ff364e7a98c208`
- INT_BUILD: `A64F`
