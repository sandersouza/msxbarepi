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
- Quando o snapshot raw valido aponta ROM/DISK salva em `SD:/`, o boot agora monta FatFs antes do backend para que a midia seja carregada ja no primeiro `StartMSX()`, e nao apenas depois de um reset.
- O save pelo menu F12 passa a persistir o arquivo `msxbarepi.cfg` e o snapshot raw.
- `DEBUG=1` registra UART `BOOT_TIME` com start/backend, primeiro blit, USB ready/retry, BT14, origem/tamanho do initramfs, tempo de raw config e tempo de FatFs deferido.
- `MSXBARE_BOOT_SCREEN=0` continua removendo `KANJI.ROM` e `KANJIBASIC.ROM` do initramfs; `MSXBARE_BOOT_SCREEN=1` preserva `KANJIBASIC.ROM` e remove a fonte `KANJI.ROM` por padrao; `MSXBARE_KANJI_FONT=1` preserva ambos.
- Hotfix pos-corte: `Kanji ROM [ON/OFF]` agora considera a feature disponivel quando ha `KANJIBASIC/MSX-JE` no perfil `MSX2+`, mesmo sem a fonte `KANJI.ROM`; assim o pacote enxuto permite religar/desligar o mapeamento japones.
- O primeiro blit visivel passou a acontecer antes da inicializacao USB, reduzindo o tempo ate imagem util quando USB demora.
- O auto-enable de GFX9000 no boot roda antes de `ApplyRuntimeSettingsToBackend()` e sem resetar o backend antes do primeiro frame.
- `Boot Mode [GAME]` em perfil `MSX 2+` foi ajustado para fast-forward e gate de video ate o frame `240`.
- `make sdcard` usa o artefato existente, sem recompilar, seleciona automaticamente `artifacts/kernel8-issue<N>.img` em branch de issue e passa o kernel escolhido para o script de preparo.
- `make package` agora usa o mesmo fluxo de `make sdcard` via `prepare-sd.sh` em `OFFLINE_DRY_PACKAGE=1`, criando o ZIP sem tocar em disco fisico.
- O preparo de SD aborta quando `kernel8.img` obrigatorio nao existe, em vez de emitir apenas warning.
- Com `COPY_GAMES_TO_ROOT=0`, o preparo completo ainda cria `roms/` e `disks/` na raiz e copia `roms/games/cheats` para `cheats/`; no fluxo `UPDATE`, `cheats/` so e semeado quando ainda nao existe no destino.
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
- Artefato de controle `DEBUG=1` com initramfs externo:
  - `BUILD_BID: 202604201803-1717e80`
  - `TXTDBG BUILD: 4A75`
  - tamanho `artifacts/kernel8-issue252-external-control.img`: `775032` bytes
  - `sdcard/msx.cpio`: `354304` bytes
  - SHA1 kernel: `6dd687270c15305187e40c4d61046aa2fe4a611b`
- Artefato `DEBUG=1` final para reteste, com initramfs embutido e `KERNEL_MAX_SIZE=0x500000`:
  - `BUILD_BID: 202604201811-1717e80`
  - `TXTDBG BUILD: E9CC`
  - tamanho `artifacts/kernel8-issue252.img`: `1129336` bytes
  - `build/initramfs/msx-embedded.cpio`: `354304` bytes
  - footprint `_end=0x004BCA75`, abaixo de `MEM_KERNEL_END=0x00580000`
  - SHA1 kernel: `9be19ab20b6cacf4952ff51006d8465bb5fcf169`
  - SHA1 initramfs: `fe13ddeccfa33b0be29d0cb1e6ae599cad87fdc3`
- Artefato `DEBUG=1` final para reteste, com `MSXBARE_BOOT_SCREEN=1` e `GAME/MSX2+` ate frame `240`:
  - `BUILD_BID: 202604201907-1717e80`
  - `TXTDBG BUILD: C425`
  - tamanho `artifacts/kernel8-issue252.img`: `1391480` bytes
  - `build/initramfs/msx-embedded.cpio`: `616448` bytes
  - footprint `_end=0x004FCA75`, abaixo de `MEM_KERNEL_END=0x00580000`
  - SHA1 kernel: `84eac97c5e77e7b9865efb2433a7e34a16714164`
  - SHA1 initramfs: `c94e6b26eb3e91f43a32fd3c83e4bff0acd258c3`
- Artefato `DEBUG=1` final para reteste apos corrigir raw BootConfig com midia `SD:/`:
  - `BUILD_BID: 202604202024-baa731f`
  - `TXTDBG BUILD: A053`
  - tamanho `artifacts/kernel8-issue252.img`: `1391480` bytes
  - `build/initramfs/msx-embedded.cpio`: `616448` bytes
  - footprint `_end=0x004FCA75`, abaixo de `MEM_KERNEL_END=0x00580000`
  - SHA1 kernel: `975a716c38093083f240022d511dfffdc4763d73`
  - SHA1 initramfs: `79adb26975d82a20a70e752084bfecd407c5f646`
- Artefato `DEBUG=1` final para reteste apos corte de `KANJI.ROM` e primeiro blit antes do USB:
  - `BUILD_BID: 202604202105-baa731f`
  - `TXTDBG BUILD: E0D7`
  - tamanho `artifacts/kernel8-issue252.img`: `1129528` bytes
  - `build/initramfs/msx-embedded.cpio`: `354304` bytes, com `KANJIBASIC.ROM` e sem `KANJI.ROM`
  - footprint `_end=0x004BCB55`, abaixo de `MEM_KERNEL_END=0x00580000`
  - SHA1 kernel: `29548a4bd010cd69ef8b2da712454c7aaf115288`
  - SHA1 initramfs: `90f365ebbef7380174f4a33537700dc4d38c4efe`
  - reducao contra build `A053`: `261952` bytes no `kernel8.img` e `262144` bytes no initramfs embutido
- Artefato `DEBUG=1` final para reteste apos hotfix do toggle `Kanji ROM` no pacote enxuto:
  - `BUILD_BID: 202604202205-baa731f`
  - `TXTDBG BUILD: ECC6`
  - tamanho `artifacts/kernel8-issue252.img`: `1121336` bytes
  - `build/initramfs/msx-embedded.cpio`: `346112` bytes, com `KANJIBASIC.ROM` e sem `KANJI.ROM` (`COLECO.ROM` esta ausente no worktree atual)
  - footprint `_end=0x004BAB55`, abaixo de `MEM_KERNEL_END=0x00580000`
  - SHA1 kernel: `2e847a0834ba4e656e02251c24b6f8231908c2f4`
  - SHA1 initramfs: `9cc6985eeb2ba510c7a482f39e5379e598b6484b`
  - comportamento esperado: `Kanji ROM [ON/OFF]` fica disponivel quando `KANJIBASIC/MSX-JE` estiver carregado no perfil `MSX2+`; a UART `Settings: Kanji ROM indisponivel` deve aparecer apenas se nao houver nem `KANJI.ROM` nem `KANJIBASIC/MSX-JE`.

## Validacao local

- [x] `scripts/check-third-party-pristine.sh` antes das alteracoes de build: OK
- [x] `make -j4 DEBUG=0` baseline apos corrigir guards de debug no V9990: OK
- [x] `scripts/check-third-party-pristine.sh`
- [x] `git diff --check`
- [x] `make -j4 DEBUG=1`
- [x] `make -j4 DEBUG=0`
- [x] `make circle` apos relato de nao boot, forçando rebuild do Circle com `KERNEL_MAX_SIZE=0x400000`
- [x] `make -j4 DEBUG=1` apos rebuild forçado do Circle
- [x] `make circle` apos elevar `KERNEL_MAX_SIZE` para `0x500000`
- [x] `make -j4 DEBUG=1` com validacao `_end=0x004BCA75 / MEM_KERNEL_END=0x00580000`
- [x] `make -j4 DEBUG=0` com validacao `_end=0x004AA4D5 / MEM_KERNEL_END=0x00580000`
- [x] `bash -n scripts/make-initramfs.sh scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh`
- [x] `MSXBARE_BOOT_SCREEN=0 ./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen-off.cpio` sem `KANJI.ROM` e sem `KANJIBASIC.ROM`
- [x] Historico pre-corte de `KANJI.ROM`: `MSXBARE_BOOT_SCREEN=1 ./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen-on.cpio` contendo `KANJI.ROM` e `KANJIBASIC.ROM`
- [x] `KERNEL_IMG=artifacts/.dryrun-sdroot/kernel8.img DRY_RUN=1 OFFLINE_DRY_PACKAGE=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 COPY_GAMES_TO_ROOT=0 PACKAGE_ZIP=/tmp/msx-sd-min.zip ./scripts/prepare-sd.sh` gerando pacote com `kernel8.img`, `roms/`, `disks/` e `cheats/`
- [x] `KERNEL_IMG=/tmp/nonexistent-msxbarepi-kernel.img DRY_RUN=1 OFFLINE_DRY_PACKAGE=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 ./scripts/prepare-sd.sh` abortando antes de selecao/formatacao por kernel ausente
- [x] `make -n package` confirmando passagem por `prepare-sd.sh` com `DRY_RUN=1 OFFLINE_DRY_PACKAGE=1` e sem forcar `COPY_GAMES_TO_ROOT=1`
- [x] `scripts/check-third-party-pristine.sh`
- [x] `git diff --check`
- [x] `make -j4 DEBUG=1` final com `_end=0x004FCA75 / MEM_KERNEL_END=0x00580000`
- [x] `make -j4 DEBUG=0` com `_end=0x004EA515 / MEM_KERNEL_END=0x00580000`
- [x] `scripts/check-third-party-pristine.sh` apos correcao de raw BootConfig com midia `SD:/`
- [x] `git diff --check` apos correcao de raw BootConfig com midia `SD:/`
- [x] `make -j4 DEBUG=1` apos correcao, com `_end=0x004FCA75 / MEM_KERNEL_END=0x00580000`
- [x] `make -j4 DEBUG=0` apos correcao, com `_end=0x004EA515 / MEM_KERNEL_END=0x00580000`
- [x] `make -j4 DEBUG=1` final para hardware, `TXTDBG BUILD:A053`
- [x] `bash -n scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh` apos ajuste de `make sdcard`/`UPDATE`
- [x] `make -n sdcard` sem acionar `default` nem recompilar
- [x] `TARGET_VOLUME=<tmp> ... ./scripts/update-sd-incremental.sh` preservando `cheats/` preexistente no destino
- [x] `bash -n scripts/make-initramfs.sh scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh` apos corte de `KANJI.ROM`
- [x] `MSXBARE_BOOT_SCREEN=0 ./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen-off.cpio` sem `KANJI.ROM` e sem `KANJIBASIC.ROM`, `321536` bytes
- [x] `MSXBARE_BOOT_SCREEN=1 ./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen-on.cpio` com `KANJIBASIC.ROM` e sem `KANJI.ROM`, `354304` bytes
- [x] `MSXBARE_BOOT_SCREEN=1 MSXBARE_KANJI_FONT=1 ./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen-fullkanji.cpio` com `KANJI.ROM` e `KANJIBASIC.ROM`, `616448` bytes
- [x] `scripts/check-third-party-pristine.sh` apos corte de `KANJI.ROM`
- [x] `git diff --check` apos corte de `KANJI.ROM`
- [x] `make -n sdcard` sem acionar `default` e propagando `MSXBARE_KANJI_FONT=0`
- [x] `make -j4 DEBUG=1` apos corte, com `_end=0x004BCB55 / MEM_KERNEL_END=0x00580000`
- [x] `make -j4 DEBUG=0` apos corte, com `_end=0x004AA535 / MEM_KERNEL_END=0x00580000`
- [x] `make -j4 DEBUG=1 MSXBARE_FEAT_GFX9000=1` validando caminho de auto-enable GFX9000, com `_end=0x004BD455 / MEM_KERNEL_END=0x00580000`
- [x] `make -j4 DEBUG=1` final para hardware, `TXTDBG BUILD:E0D7`
- [x] `make -j4 DEBUG=0` apos hotfix do toggle `Kanji ROM`, com `_end=0x004A8535 / MEM_KERNEL_END=0x00580000`, initramfs `346112` bytes
- [x] `make -j4 DEBUG=1` final apos hotfix do toggle `Kanji ROM`, com `_end=0x004BAB55 / MEM_KERNEL_END=0x00580000`, initramfs `346112` bytes, `TXTDBG BUILD:ECC6`
- [x] `scripts/check-third-party-pristine.sh` final apos hotfix
- [x] `git diff --check` final apos hotfix

## Observacoes

- A correcao em `fmsx_runtime.c` e `fmsx_v9990.c` apenas ajusta guards de compilacao `DEBUG=0` para permitir a validacao solicitada nesta issue.
- Uma remocao mais agressiva de rotinas internas de debug/menu deve ser tratada em issue separada, caso a reducao de tamanho/performance desta etapa nao seja suficiente.
- Se a imagem nao chegar a emitir UART, o primeiro ponto a conferir no SD e o `config.txt` efetivo: no modo embedded, ele nao deve manter `initramfs msx.cpio followkernel` apontando para um `msx.cpio` ausente.
- O proximo teste de hardware deve confirmar o boot screen MSX2+ e o toggle `Kanji ROM [ON/OFF]` com pacote enxuto (`KANJIBASIC.ROM` sem `KANJI.ROM`); se o boot screen falhar, repetir com `MSXBARE_KANJI_FONT=1` para confirmar dependencia real da fonte Kanji.
