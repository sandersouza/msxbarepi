# Handoff Persistente da Branch 252-remover-hotkeys-diretas-otimizar-kernel

Ultima atualizacao: 20/04/2026

## Objetivo da branch

Remover atalhos diretos de debug que nao sao mais operacionais (`F6-F10`, `+`, `-`) para reduzir overhead de input e tamanho do kernel, mantendo `F11`, `F12`, START do gamepad, menu de pausa, file browser e Debug Layer completa.

## Estado atual

- Issue remota: `#252 [P1] Remover hotkeys diretas e reduzir overhead do kernel/runtime`
- PR remoto: `#253` https://github.com/sandersouza/msxbarepi/pull/253
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
- Obsoleto em 30/04/2026: o raw BootConfig nao carrega mais midia salva no boot; ROM/DISK/CAS de usuario deixaram de ser persistidos em settings.
- `F12`/save de settings persiste tanto `SD:/msxbarepi.cfg` quanto o raw BootConfig.
- Em `DEBUG=1`, a UART emite `BOOT_TIME start_to_backend_start_ms`, `start_to_backend_ready_ms`, `start_to_first_blit_ms`, `start_to_usb_ready_ms`/`usb_retry_scheduled_tick`, `start_to_bt14_ms`, `initramfs_source`, `initramfs_bytes`, `raw_cfg_ms` e `fat_deferred_ms`.
- `MSXBARE_BOOT_SCREEN=0` continua removendo `KANJI.ROM` e `KANJIBASIC.ROM` do initramfs; `MSXBARE_BOOT_SCREEN=1` preserva `KANJIBASIC.ROM` e remove a fonte `KANJI.ROM` por padrao; `MSXBARE_KANJI_FONT=1` preserva ambos.
- Hotfix pos-corte: `Kanji ROM [ON/OFF]` agora considera a feature disponivel quando ha `KANJIBASIC/MSX-JE` no perfil `MSX2+`, mesmo sem a fonte `KANJI.ROM`; assim o pacote enxuto permite religar/desligar o mapeamento japones.
- O primeiro blit visivel passou a acontecer antes da inicializacao USB, reduzindo o tempo ate imagem util quando USB demora.
- O auto-enable de GFX9000 no boot roda antes de `ApplyRuntimeSettingsToBackend()` e sem resetar o backend antes do primeiro frame.
- `Boot Mode [GAME]` em perfil `MSX 2+` agora faz fast-forward e gate de video ate o frame `240`, evitando mostrar o boot intermediario antes do ponto esperado.
- `make sdcard` usa o artefato existente, sem recompilar, e passa automaticamente o artefato de issue (`artifacts/kernel8-issue<N>.img`) quando aplicavel.
- `make package` usa o mesmo fluxo de `make sdcard` via `prepare-sd.sh` em `OFFLINE_DRY_PACKAGE=1`, gerando ZIP sem tocar em disco fisico.
- O preparo de SD trata `kernel8.img` como obrigatorio; se o artefato nao existir, aborta em vez de deixar o cartao sem kernel.
- Mesmo com copia completa de `roms/games` desativada, o preparo completo garante `roms/` e `disks/` na raiz do SD e copia `roms/games/cheats` para `cheats/`; no fluxo `UPDATE`, `cheats/` so e semeado se ainda nao existir no destino.
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
- Artefato de controle `DEBUG=1` com initramfs externo:
  - `BUILD_BID: 202604201803-1717e80`
  - `TXTDBG BUILD: 4A75`
  - `artifacts/kernel8-issue252-external-control.img`: `775032` bytes
  - `sdcard/msx.cpio`: `354304` bytes
  - SHA1 kernel: `6dd687270c15305187e40c4d61046aa2fe4a611b`
- Artefato `DEBUG=1` final para reteste, com initramfs embutido e `KERNEL_MAX_SIZE=0x500000`:
  - `BUILD_BID: 202604201811-1717e80`
  - `TXTDBG BUILD: E9CC`
  - `artifacts/kernel8-issue252.img`: `1129336` bytes
  - `build/initramfs/msx-embedded.cpio`: `354304` bytes
  - footprint `_end=0x004BCA75`, abaixo de `MEM_KERNEL_END=0x00580000`
  - SHA1 kernel: `9be19ab20b6cacf4952ff51006d8465bb5fcf169`
  - SHA1 initramfs: `fe13ddeccfa33b0be29d0cb1e6ae599cad87fdc3`
- Artefato `DEBUG=1` final para reteste, com `MSXBARE_BOOT_SCREEN=1` e `GAME/MSX2+` ate frame `240`:
  - `BUILD_BID: 202604201907-1717e80`
  - `TXTDBG BUILD: C425`
  - `artifacts/kernel8-issue252.img`: `1391480` bytes
  - `build/initramfs/msx-embedded.cpio`: `616448` bytes
  - footprint `_end=0x004FCA75`, abaixo de `MEM_KERNEL_END=0x00580000`
  - SHA1 kernel: `84eac97c5e77e7b9865efb2433a7e34a16714164`
  - SHA1 initramfs: `c94e6b26eb3e91f43a32fd3c83e4bff0acd258c3`
- Artefato `DEBUG=1` final para reteste apos corrigir raw BootConfig com midia `SD:/`:
  - `BUILD_BID: 202604202024-baa731f`
  - `TXTDBG BUILD: A053`
  - `artifacts/kernel8-issue252.img`: `1391480` bytes
  - `build/initramfs/msx-embedded.cpio`: `616448` bytes
  - footprint `_end=0x004FCA75`, abaixo de `MEM_KERNEL_END=0x00580000`
  - SHA1 kernel: `975a716c38093083f240022d511dfffdc4763d73`
  - SHA1 initramfs: `79adb26975d82a20a70e752084bfecd407c5f646`
- Artefato `DEBUG=1` final para reteste apos corte de `KANJI.ROM` e primeiro blit antes do USB:
  - `BUILD_BID: 202604202105-baa731f`
  - `TXTDBG BUILD: E0D7`
  - `artifacts/kernel8-issue252.img`: `1129528` bytes
  - `build/initramfs/msx-embedded.cpio`: `354304` bytes, com `KANJIBASIC.ROM` e sem `KANJI.ROM`
  - footprint `_end=0x004BCB55`, abaixo de `MEM_KERNEL_END=0x00580000`
  - SHA1 kernel: `29548a4bd010cd69ef8b2da712454c7aaf115288`
  - SHA1 initramfs: `90f365ebbef7380174f4a33537700dc4d38c4efe`
  - reducao contra build `A053`: `261952` bytes no `kernel8.img` e `262144` bytes no initramfs embutido
- Artefato `DEBUG=1` final para reteste apos hotfix do toggle `Kanji ROM` no pacote enxuto:
  - `BUILD_BID: 202604202205-baa731f`
  - `TXTDBG BUILD: ECC6`
  - `artifacts/kernel8-issue252.img`: `1121336` bytes
  - `build/initramfs/msx-embedded.cpio`: `346112` bytes, com `KANJIBASIC.ROM` e sem `KANJI.ROM` (`COLECO.ROM` esta ausente no worktree atual)
  - footprint `_end=0x004BAB55`, abaixo de `MEM_KERNEL_END=0x00580000`
  - SHA1 kernel: `2e847a0834ba4e656e02251c24b6f8231908c2f4`
  - SHA1 initramfs: `9cc6985eeb2ba510c7a482f39e5379e598b6484b`
  - comportamento esperado: `Kanji ROM [ON/OFF]` fica disponivel quando `KANJIBASIC/MSX-JE` estiver carregado no perfil `MSX2+`; a UART `Settings: Kanji ROM indisponivel` deve aparecer apenas se nao houver nem `KANJI.ROM` nem `KANJIBASIC/MSX-JE`.

## Validacao

- `scripts/check-third-party-pristine.sh`: OK
- `git diff --check`: OK
- `make -j4 DEBUG=1`: OK
- `make -j4 DEBUG=0`: OK
- `make circle`: OK, rebuild forçado com `AS='aarch64-elf-gcc -DKERNEL_MAX_SIZE=0x400000'`
- `make -j4 DEBUG=1`: OK apos rebuild forçado do Circle
- `make circle`: OK, rebuild forçado com `AS='aarch64-elf-gcc -DKERNEL_MAX_SIZE=0x500000'`
- `make -j4 DEBUG=1`: OK, `Kernel memory _end: 0x4BCA75 / 0x580000`
- `make -j4 DEBUG=0`: OK, `Kernel memory _end: 0x4AA4D5 / 0x580000`
- `scripts/check-third-party-pristine.sh`: OK apos ajuste final
- `git diff --check`: OK apos ajuste final
- `make -j4 DEBUG=1`: OK apos troca do gate de video GAME por frameskip real, `BUILD_BID: 202604302007-f66027e`, `TXTDBG BUILD:3F50`
- `bash -n scripts/make-initramfs.sh scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh`: OK
- `MSXBARE_BOOT_SCREEN=0 ./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen-off.cpio`: OK, pacote `321536` bytes, sem `KANJI.ROM` e sem `KANJIBASIC.ROM`
- Historico pre-corte de `KANJI.ROM`: `MSXBARE_BOOT_SCREEN=1 ./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen-on.cpio`: OK, pacote `616448` bytes, com `KANJI.ROM` e `KANJIBASIC.ROM`
- `KERNEL_IMG=artifacts/.dryrun-sdroot/kernel8.img DRY_RUN=1 OFFLINE_DRY_PACKAGE=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 COPY_GAMES_TO_ROOT=0 PACKAGE_ZIP=/tmp/msx-sd-min.zip ./scripts/prepare-sd.sh`: OK, pacote com `kernel8.img`, `roms/`, `disks/` e `cheats/`
- `KERNEL_IMG=/tmp/nonexistent-msxbarepi-kernel.img DRY_RUN=1 OFFLINE_DRY_PACKAGE=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 ./scripts/prepare-sd.sh`: OK, aborta antes de selecao/formatacao por kernel ausente
- `make -n package`: OK, target passa por `prepare-sd.sh` em `DRY_RUN=1 OFFLINE_DRY_PACKAGE=1` e nao força `COPY_GAMES_TO_ROOT=1`
- `make -j4 DEBUG=1`: OK, `Kernel memory _end: 0x4FCA75 / 0x580000`, initramfs `616448` bytes
- `make -j4 DEBUG=0`: OK, `Kernel memory _end: 0x4EA515 / 0x580000`, initramfs `616448` bytes
- `make -j4 DEBUG=1`: OK final para hardware, `TXTDBG BUILD:C425`
- `scripts/check-third-party-pristine.sh`: OK apos correcao de raw BootConfig com midia `SD:/`
- `git diff --check`: OK apos correcao de raw BootConfig com midia `SD:/`
- `make -j4 DEBUG=1`: OK, `Kernel memory _end: 0x4FCA75 / 0x580000`
- `make -j4 DEBUG=0`: OK, `Kernel memory _end: 0x4EA515 / 0x580000`
- `make -j4 DEBUG=1`: OK final para hardware, `TXTDBG BUILD:A053`
- `bash -n scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh`: OK apos ajuste de `make sdcard`/`UPDATE`
- `make -n sdcard`: OK, nao aciona `default` nem recompila
- `TARGET_VOLUME=<tmp> ... ./scripts/update-sd-incremental.sh`: OK, com `cheats/` preexistente emite `SKIP` e preserva conteudo local
- `bash -n scripts/make-initramfs.sh scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh`: OK apos corte de `KANJI.ROM`
- `MSXBARE_BOOT_SCREEN=0 ./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen-off.cpio`: OK, `321536` bytes, sem `KANJI.ROM` e sem `KANJIBASIC.ROM`
- `MSXBARE_BOOT_SCREEN=1 ./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen-on.cpio`: OK, `354304` bytes, com `KANJIBASIC.ROM` e sem `KANJI.ROM`
- `MSXBARE_BOOT_SCREEN=1 MSXBARE_KANJI_FONT=1 ./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen-fullkanji.cpio`: OK, `616448` bytes, com `KANJI.ROM` e `KANJIBASIC.ROM`
- `scripts/check-third-party-pristine.sh`: OK apos corte de `KANJI.ROM`
- `git diff --check`: OK apos corte de `KANJI.ROM`
- `make -n sdcard`: OK, nao aciona `default` e propaga `MSXBARE_KANJI_FONT=0`
- `make -j4 DEBUG=1`: OK, `Kernel memory _end: 0x4BCB55 / 0x580000`, initramfs `354304` bytes
- `make -j4 DEBUG=0`: OK, `Kernel memory _end: 0x4AA535 / 0x580000`, initramfs `354304` bytes
- `make -j4 DEBUG=1 MSXBARE_FEAT_GFX9000=1`: OK, valida caminho de auto-enable GFX9000, `_end=0x4BD455 / 0x580000`
- `make -j4 DEBUG=1`: OK final para hardware, `TXTDBG BUILD:E0D7`
- `make -j4 DEBUG=0`: OK apos hotfix do toggle `Kanji ROM`, `Kernel memory _end: 0x4A8535 / 0x580000`, initramfs `346112` bytes
- `make -j4 DEBUG=1`: OK final apos hotfix do toggle `Kanji ROM`, `Kernel memory _end: 0x4BAB55 / 0x580000`, initramfs `346112` bytes, `TXTDBG BUILD:ECC6`
- `scripts/check-third-party-pristine.sh`: OK final apos hotfix
- `git diff --check`: OK final apos hotfix

## Proximos passos

- Acompanhar review/merge do PR `#253`; a issue `#252` deve fechar automaticamente no merge.
- Aguardar teste em hardware para confirmar:
  - boot ate `BT14`
  - `F11` alternando overlay
  - `F12` e START abrindo/fechando menu
  - `F6-F10/+/-` sem acoes especiais
- Se o boot ainda parar antes da UART, conferir se o `config.txt` efetivo do SD nao manteve `initramfs msx.cpio followkernel` sem o arquivo `msx.cpio` presente.
- Retestar `Boot Mode [GAME]` com `MSX 2+` e confirmar que a primeira imagem visivel ja aparece a partir do frame `240`.
- Retestar MSX2+ boot screen e o toggle `Kanji ROM [ON/OFF]` com o pacote enxuto (`KANJIBASIC.ROM` sem `KANJI.ROM`); se o boot screen falhar, repetir com `MSXBARE_KANJI_FONT=1` para confirmar dependencia real da fonte Kanji.
