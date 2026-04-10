# CONTEXT

Ponto de entrada rapido para contexto operacional do projeto.

- Contexto completo e historico de handoff da branch atual: [docs/handoff/249-backend-framework-modular-por-familia-msx.md](docs/handoff/249-backend-framework-modular-por-familia-msx.md)
- Guardrail ativo: nem `git commit` local nem `git push` devem acontecer durante cortes experimentais; ambos so voltam quando o usuario declarar explicitamente que a issue ativa ficou estavel.
- Branch ativa da rodada: `249-backend-framework-modular-por-familia-msx`
- Issue ativa: `#249 [P0] Estruturar framework de backend modular por família em src/backend (primeira família: msx)`
- Atualizacao 2026-04-10 (14:27 -03):
  - a branch correta da issue foi criada e vinculada via `gh issue develop`
  - branch atual: `249-backend-framework-modular-por-familia-msx`
  - issue `#249` agora esta no projeto `MSX BarePI` com `Status: In progress`
  - o worktree atual ja contem a reorganizacao fisica do backend MSX para dentro de `src/backend/msx/`
  - o `src/` raiz ficou sem arquivos `fmsx_*`, `bluemsx_*`, `emulator_backend.*`, `gamemaster_catalog.*` e `machine_profile_catalog.*`
  - `src/kernel.*`, `src/tools/menu/*` e `src/tools/file_browser/combo_file_browser.cpp` agora dependem da adaptacao neutra `src/backend/runtime/runtime.h`
  - sistemas genericos do kernel/UI nao incluem mais `backend/msx/*` diretamente
  - os headers reais de logger/serial (`<circle/logger.h>` e `<circle/serial.h>`) so entram com `DEBUG=1`
  - o renderer do overlay e os caminhos de UART de debug ficaram condicionados a `DEBUG=1`
  - o atalho `F10` e o item `UART Log` foram removidos do kernel/menu
