# Handoff Persistente da Branch 252-remover-hotkeys-diretas-otimizar-kernel

Ultima atualizacao: 20/04/2026

## Objetivo da branch

Remover atalhos diretos de debug que nao sao mais operacionais (`F6-F10`, `+`, `-`) para reduzir overhead de input e tamanho do kernel, mantendo `F11`, `F12`, START do gamepad, menu de pausa, file browser e Debug Layer completa.

## Estado atual

- Issue remota: `#252 [P1] Remover hotkeys diretas e reduzir overhead do kernel/runtime`
- Branch vinculada: `252-remover-hotkeys-diretas-otimizar-kernel`
- Base: `main` publicado em `origin/main` antes da criacao da branch.
- A issue `#251` segue aberta/pausada; nao fechar nem remover a branch dela.

## Mudancas aplicadas

- `src/tools/input/keyboard_input.*` deixou de decodificar `F6`, `F7`, `F8`, `F9`, `F10`, `+` e `-`.
- `src/kernel.*` removeu edge tracking e acoes diretas associadas a esses atalhos.
- `F11` continua como entrada do overlay (`f1_pressed` no struct atual).
- `F12` e START do gamepad continuam como pause/menu.
- A navegacao do menu por setas, `Enter`, `Esc`, `PageUp`, `PageDown`, `Delete` e letras permanece preservada.
- As APIs internas de mute, ganho FM e views de debug do `V9990` nao foram removidas.
- `docs/debug-layer.md` foi atualizado para refletir o novo conjunto de atalhos operacionais.
- `DEBUG=0` recebeu guards de compilacao para traces do `V9990` que antes referenciavam simbolos de `DEBUG=1`.
- Initramfs embutido passou a ser o default do build (`MSXBARE_EMBED_INITRAMFS=1`), gerando `build/initramfs/msx-embedded.cpio` antes do link e dispensando `msx.cpio`/`initramfs ... followkernel` no SD.
- `MSXBARE_EMBED_INITRAMFS=0` permanece como fallback externo, mantendo `sdcard/msx.cpio` e a linha `initramfs` no `config.txt`.
- O boot passou a tentar `BootConfig` raw em slots espelhados antes da particao FAT para aplicar settings antes do backend sem montar FatFs.
- O FatFs fica deferido quando o raw BootConfig e valido; no primeiro boot sem raw, o caminho legado monta FAT antes do backend e semeia o raw.
- `F12`/save de settings persiste tanto `SD:/msxbarepi.cfg` quanto o raw BootConfig.
- Em `DEBUG=1`, a UART emite `BOOT_TIME start_to_backend_start_ms`, `start_to_backend_ready_ms`, `initramfs_source`, `initramfs_bytes`, `raw_cfg_ms` e `fat_deferred_ms`.
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
  - `artifacts/kernel8-default.img`: `770744` bytes
  - SHA1: `6802f1e43e5dd16d319cf68cc4db02bd6f48363f`
- Baseline `DEBUG=0` antes do corte:
  - `BUILD_BID: 202604191854-1717e80`
  - `TXTDBG BUILD: 0DF2`
  - `artifacts/kernel8-default.img`: `737816` bytes
- Candidato pos-corte `DEBUG=1`:
  - `BUILD_BID: 202604191904-1717e80`
  - `TXTDBG BUILD: 1C5A`
  - `artifacts/kernel8-default.img`: `768696` bytes
  - SHA1: `f9218f06ce3df238470818826f36590687d26b70`
  - reducao contra baseline `DEBUG=1`: `2048` bytes
- Artefato `DEBUG=1` final para hardware, gerado com `MSXBARE_FEAT_GFX9000=1` explicito para manter comparabilidade com o baseline:
  - `BUILD_BID: 202604191928-1717e80`
  - `TXTDBG BUILD: 0192`
  - `artifacts/kernel8-issue252.img`: `768696` bytes
  - SHA1: `c930417953fc7ee097468cea1929273c5b528618`
- Candidato pos-corte `DEBUG=0`:
  - `BUILD_BID: 202604191905-1717e80`
  - `TXTDBG BUILD: ED4D`
  - `artifacts/kernel8-default.img`: `735768` bytes
  - SHA1: `5c8d8166f5107dfce525cb2c647ada0f3099df34`
  - reducao contra baseline `DEBUG=0`: `2048` bytes
- Artefato `DEBUG=1` com initramfs embutido e Circle recompilado forçadamente em `KERNEL_MAX_SIZE=0x400000` (falha esperada pelo `_end` acima do limite):
  - `BUILD_BID: 202604201732-1717e80`
  - `TXTDBG BUILD: E6C9`
  - `artifacts/kernel8-issue252.img`: `1129336` bytes
  - `build/initramfs/msx-embedded.cpio`: `354304` bytes
  - SHA1 kernel: `301a7751d7964637c4c133bceefcb289e5ab1173`
  - SHA1 initramfs: `2e5b3359cf860ddb6d150135969c90f51cba6890`

## Validacao

- `scripts/check-third-party-pristine.sh`: OK
- `git diff --check`: OK
- `make -j4 DEBUG=1`: OK
- `make -j4 DEBUG=0`: OK
- `make circle`: OK, rebuild forçado com `AS='aarch64-elf-gcc -DKERNEL_MAX_SIZE=0x400000'`
- `make -j4 DEBUG=1`: OK apos rebuild forçado do Circle

## Proximos passos

- Registrar tamanho pos-corte na issue remota.
- Aguardar teste em hardware para confirmar:
  - boot ate `BT14`
  - `F11` alternando overlay
  - `F12` e START abrindo/fechando menu
  - `F6-F10/+/-` sem acoes especiais
- Se o boot ainda parar antes da UART, conferir se o `config.txt` efetivo do SD nao manteve `initramfs msx.cpio followkernel` sem o arquivo `msx.cpio` presente.
