# Issue #252 - [P1] Remover hotkeys diretas e reduzir overhead do kernel/runtime

- URL: https://github.com/sandersouza/msxbarepi/issues/252
- Milestone: issue avulsa (sem milestone)
- Estado remoto: OPEN
- Labels: `priority:P1`, `type:performance`, `area:debug`, `area:video`
- Projeto: `MSX BarePI` (`Status: In progress`)
- Branch vinculada: `252-remover-hotkeys-diretas-otimizar-kernel`

## Contexto

A issue `#251` consolidou a trilha `V9990/GFX9000` em `main` como checkpoint, mas deixou rotas diretas de debug no teclado que ficaram fora do fluxo operacional escolhido para a proxima fase.

O objetivo desta issue e reduzir caminho quente de input, tamanho do kernel e risco de regressao por atalhos diretos, sem remover a Debug Layer completa, o menu de pausa, o file browser ou as APIs internas de diagnostico.

## Objetivo

Remover os atalhos diretos `F6`, `F7`, `F8`, `F9`, `F10`, `+` e `-`, mantendo apenas:

- `F11` para alternar Debug Layer (`MAX -> MIN -> OFF`)
- `F12` para pause/menu
- `START` do gamepad como alias de pause/menu
- navegacao normal do menu por setas, `Enter`, `Esc`, `PageUp`, `PageDown`, `Delete` e letras

## Fora de escopo

- Remover menu, file browser ou infraestrutura da Debug Layer.
- Remover APIs backend de mute, ganho FM ou views de debug do `V9990`.
- Reestruturar UX do menu de pausa.
- Fechar a issue `#251` ou remover a branch `251-suporte-cartucho-vdp-v9990`.

## DoR

- [x] `main` local publicada antes da criacao da branch da issue.
- [x] Issue remota avulsa criada sem milestone.
- [x] Branch vinculada criada a partir de `main`.
- [x] Escopo limitado a hotkeys diretas, edge tracking, docs e validacao de tamanho/performance.

## DoD

- [ ] `F6`, `F7`, `F8`, `F9`, `F10`, `+` e `-` nao executam acoes especiais.
- [ ] `F11` continua alternando a Debug Layer.
- [ ] `F12` continua abrindo/fechando o menu de pausa.
- [ ] `START` do gamepad continua abrindo/fechando o menu de pausa.
- [ ] Navegacao do menu permanece funcional.
- [ ] Debug Layer completa continua compilada e disponivel em `DEBUG=1`.
- [ ] `scripts/check-third-party-pristine.sh` passa.
- [ ] `git diff --check` passa.
- [ ] `make -j4 DEBUG=1` passa.
- [ ] `make -j4 DEBUG=0` passa.
- [ ] Tamanho antes/depois de `artifacts/kernel8-default.img` registrado.

## Implementacao

- `src/tools/input/keyboard_input.*` removeu a decodificacao dos hotkeys diretos removidos.
- `src/kernel.*` removeu o estado de edge tracking e as acoes diretas de mute, ganho FM e views `V9990` por hotkey.
- As APIs internas de diagnostico e menu permanecem preservadas.
- `docs/debug-layer.md` foi atualizado para documentar somente os atalhos operacionais mantidos.
- O build passou a embutir `msx.cpio` no kernel por default (`MSXBARE_EMBED_INITRAMFS=1`), mantendo `MSXBARE_EMBED_INITRAMFS=0` para fallback externo.
- `config.txt` default foi reduzido para perfil de firmware/board, sem linha `initramfs`.
- O kernel adicionou BootConfig raw espelhado antes da particao FAT do SD, carregado antes do backend para evitar montagem FatFs no caminho quente quando o snapshot existe.
- O save pelo menu F12 passa a persistir o arquivo `msxbarepi.cfg` e o snapshot raw.
- `DEBUG=1` registra UART `BOOT_TIME` com start/backend, origem/tamanho do initramfs, tempo de raw config e tempo de FatFs deferido.
- Causa do nao boot com initramfs embutido:
  - o arquivo `kernel8.img` estava abaixo de `KERNEL_MAX_SIZE=0x400000`
  - o footprint real do ELF nao estava: `_end=0x004BCA75`
  - `MEM_KERNEL_END` ainda era `0x00480000`
  - o Circle parava em `sysinit()` antes de qualquer UART
- `CIRCLE_KERNEL_MAX_SIZE` foi elevado para `0x500000`, e o build agora valida `_end` contra `MEM_KERNEL_END`, nao apenas o tamanho do `.img`.

## Evidencia de tamanho

- Baseline `DEBUG=1` antes do corte:
  - `BUILD_BID: 202604191844-1717e80`
  - `TXTDBG BUILD: 1E54`
  - tamanho `artifacts/kernel8-default.img`: `770744` bytes
  - SHA1: `6802f1e43e5dd16d319cf68cc4db02bd6f48363f`
- Baseline `DEBUG=0` antes do corte:
  - `BUILD_BID: 202604191854-1717e80`
  - `TXTDBG BUILD: 0DF2`
  - tamanho `artifacts/kernel8-default.img`: `737816` bytes
- Candidato pos-corte `DEBUG=1`:
  - `BUILD_BID: 202604191904-1717e80`
  - `TXTDBG BUILD: 1C5A`
  - tamanho `artifacts/kernel8-default.img`: `768696` bytes
  - SHA1: `f9218f06ce3df238470818826f36590687d26b70`
  - reducao contra baseline `DEBUG=1`: `2048` bytes
- Artefato `DEBUG=1` final para hardware, gerado com `MSXBARE_FEAT_GFX9000=1` explicito para manter comparabilidade com o baseline:
  - `BUILD_BID: 202604191928-1717e80`
  - `TXTDBG BUILD: 0192`
  - tamanho `artifacts/kernel8-issue252.img`: `768696` bytes
  - SHA1: `c930417953fc7ee097468cea1929273c5b528618`
- Candidato pos-corte `DEBUG=0`:
  - `BUILD_BID: 202604191905-1717e80`
  - `TXTDBG BUILD: ED4D`
  - tamanho `artifacts/kernel8-default.img`: `735768` bytes
  - SHA1: `5c8d8166f5107dfce525cb2c647ada0f3099df34`
  - reducao contra baseline `DEBUG=0`: `2048` bytes
- Artefato `DEBUG=1` com initramfs embutido e Circle recompilado forçadamente em `KERNEL_MAX_SIZE=0x400000` (falha esperada pelo `_end` acima do limite):
  - `BUILD_BID: 202604201732-1717e80`
  - `TXTDBG BUILD: E6C9`
  - tamanho `artifacts/kernel8-issue252.img`: `1129336` bytes
  - `build/initramfs/msx-embedded.cpio`: `354304` bytes
  - SHA1 kernel: `301a7751d7964637c4c133bceefcb289e5ab1173`
  - SHA1 initramfs: `2e5b3359cf860ddb6d150135969c90f51cba6890`

## Validacao local

- [x] `scripts/check-third-party-pristine.sh` antes das alteracoes de build: OK
- [x] `make -j4 DEBUG=0` baseline apos corrigir guards de debug no V9990: OK
- [x] `scripts/check-third-party-pristine.sh`
- [x] `git diff --check`
- [x] `make -j4 DEBUG=1`
- [x] `make -j4 DEBUG=0`
- [x] `make circle` apos relato de nao boot, forçando rebuild do Circle com `KERNEL_MAX_SIZE=0x400000`
- [x] `make -j4 DEBUG=1` apos rebuild forçado do Circle

## Observacoes

- A correcao em `fmsx_runtime.c` e `fmsx_v9990.c` apenas ajusta guards de compilacao `DEBUG=0` para permitir a validacao solicitada nesta issue.
- Uma remocao mais agressiva de rotinas internas de debug/menu deve ser tratada em issue separada, caso a reducao de tamanho/performance desta etapa nao seja suficiente.
- Se a imagem nao chegar a emitir UART, o primeiro ponto a conferir no SD e o `config.txt` efetivo: no modo embedded, ele nao deve manter `initramfs msx.cpio followkernel` apontando para um `msx.cpio` ausente.
