# CONTEXT

Ponto de entrada rapido para contexto operacional do projeto.

- Contexto completo e historico de handoff da branch atual: [docs/handoff/249-backend-framework-modular-por-familia-msx.md](docs/handoff/249-backend-framework-modular-por-familia-msx.md)
- Guardrail ativo: nem `git commit` local nem `git push` devem acontecer durante cortes experimentais; ambos so voltam quando o usuario declarar explicitamente que a issue ativa ficou estavel.
- Branch ativa da rodada: `249-backend-framework-modular-por-familia-msx`
- Issue ativa: `#249 [P0] Estruturar framework de backend modular por família em src/backend (primeira família: msx)`
- Atualizacao 2026-04-10 (15:56 -03):
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
  - o boot foi reordenado para fastboot: `screen` e audio antes do backend; `msxbarepi.cfg` ainda entra antes do `backend init`; `UART + Logger` e overlay so entram depois do backend; `USB HID` vem antes do restante diferido
  - `Initialize()` voltou a ser bootstrap minimo, sem serial e sem `SD/eMMC`
  - o restante do `initramfs` agora fica diferido para o loop principal, apos a fase de USB
  - `RefillAudioQueue()` passou a emitir silencio enquanto o backend ainda nao estiver pronto, permitindo iniciar o HDMI audio cedo no boot
  - a troca de `DEBUG OVERLAY` entre `MAX/MIN/OFF` agora faz wipe global imediato da tela para evitar vestigios residuais do modo anterior
  - o modo inicial do overlay no boot agora e sempre `OFF`; o valor persistido em `msxbarepi.cfg` so e assumido depois da carga do arquivo
  - builds validados nesta rodada:
    - `make DEBUG=1`
    - `make DEBUG=0`
