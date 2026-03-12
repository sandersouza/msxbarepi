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
