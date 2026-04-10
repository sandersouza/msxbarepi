# Handoff Persistente da Branch 249-backend-framework-modular-por-familia-msx

Ultima atualizacao: 10/04/2026 (14:27 -03)

## Objetivo da branch

Executar a issue `#249`, consolidando a arquitetura de backend modular por familia em `src/backend/`, com a primeira familia publica `msx`.

## Estado atual da branch

- A issue remota correta desta trilha e a `#249`.
- A branch foi criada e vinculada via `gh issue develop`:
  - branch: `249-backend-framework-modular-por-familia-msx`
  - issue: `#249`
- O item da issue no projeto `MSX BarePI` esta em `In progress`.

## Atualizacao desta iteracao

- A infraestrutura comum do framework ficou em:
  - `src/backend/core/module.h`
  - `src/backend/core/registry.h`
  - `src/backend/core/registry.c`
- A familia MSX publica ficou em:
  - `src/backend/msx/backend.h`
  - `src/backend/msx/backend.c`
  - `src/backend/msx/backend_internal.h`
- O runtime do backend `msx.fmsx` foi consolidado em:
  - `src/backend/msx/modules/fmsx/`
- O stub do segundo modulo da familia ficou em:
  - `src/backend/msx/modules/bluemsx/module.c`
- O kernel/UI generico agora consome uma adaptacao interna neutra em:
  - `src/backend/runtime/runtime.h`
- O legado antigo ficou isolado em:
  - `src/backend/msx/legacy/`
- Catalogos e perfis da familia MSX ficaram em:
  - `src/backend/msx/gamemaster_catalog.*`
  - `src/backend/msx/machine_profile_catalog.*`
  - `src/backend/msx/machine_profiles/`
- O `src/` raiz ficou limpo de arquivos ligados ao backend MSX.
- `src/kernel.*`, `src/tools/menu/*` e `src/tools/file_browser/combo_file_browser.cpp` nao incluem mais `backend/msx/*` diretamente.
- Sistemas genericos como F12/menu shell, debug overlay, UART log, viewport/mailbox e HID nao dependem mais diretamente do core MSX.
- Os headers reais `<circle/logger.h>` e `<circle/serial.h>` agora so entram quando `DEBUG=1`, por meio de `src/tools/debug/debug_runtime_gate.h`.
- O renderer do overlay (`src/tools/debug/combo_debug_overlay.cpp`) so entra no link final quando `DEBUG=1`.
- O atalho `F10` foi removido do kernel e o item `UART Log` saiu do menu de pause/debug.
- O caminho residual de telemetria UART ficou desarmado por padrao (`m_UartTelemetryEnabled = FALSE`) e sem controle exposto em UI/hotkey.

## Validacao local

- `make`: OK
- `make DEBUG=0`: OK
- `make DEBUG=1`: OK
- `make EMULATOR_BACKEND=fmsx`: OK
- `make BACKEND_FAMILY=msx BACKEND_DEFAULT=msx.fmsx`: OK
- `make backend-module`: OK
- `aarch64-elf-nm artifacts/backend/msx/msx.fmsx.mod.elf | rg 'msxbare_backend_module_v1|g_msx_backend_module_fmsx'`: OK
- `aarch64-elf-readelf -h artifacts/backend/msx/msx.fmsx.mod.elf`: OK (`ELF64`, `REL`, `AArch64`)

## Observacoes

- Nao houve `commit` nem `push`.
- O modulo continua gerado em `artifacts/backend/msx/msx.fmsx.mod.elf`.
- O proximo cleanup arquitetural relevante continua sendo reduzir os aliases MSX ainda presentes em `src/backend/runtime/runtime.h` e parar de vazar tipos `TFmsx*` no contrato publico de `src/backend/msx/backend.h`.
