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
