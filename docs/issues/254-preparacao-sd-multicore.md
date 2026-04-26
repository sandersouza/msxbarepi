# Issue #254 - [P1] Preparar SD multicore e selecao de core no boot

- URL: https://github.com/sandersouza/msxbarepi/issues/254
- Milestone: issue avulsa (sem milestone)
- Estado remoto: OPEN
- Labels: `priority:P1`, `type:feature`, `area:boot`, `area:storage`, `area:settings`, `area:scripts`, `area:hardware`
- Projeto: `MSX BarePI` (`Status: In progress`)
- Branch vinculada: `254-preparacao-sd-multicore`

## Contexto

O MSX BarePI passa a funcionar como um core dentro de um SD multicore, convivendo com outros kernels `.img` na raiz do cartao. O layout canonico do core MSX agora usa `msx.img`, `msx.cpio` quando o initramfs externo for selecionado, `msx.cfg` e assets isolados em `SD:/msx/`.

A troca de core atualiza o `config.txt` do firmware e reinicia o Raspberry Pi para que o firmware carregue o novo kernel e o initramfs correspondente.

## Implementacao

- `sdcard/config.txt` usa `kernel=msx.img`.
- `sdcard/msxbarepi.cfg` foi substituido por `sdcard/msx.cfg`; o runtime salva em `SD:/msx.cfg` e ainda le `SD:/msxbarepi.cfg`/`SD:/MSXBARE.CFG` como fallback de migracao.
- `make menuconfig` agora expoe `Boot strategy`, com default `Stand Alone` e opcao `Multicore`.
- `scripts/prepare-sd.sh`, `scripts/update-sd-incremental.sh` e `scripts/make-sdcard-package.sh` gravam `msx.img`, `msx.cfg` e criam `msx/roms`, `msx/disks` e `msx/cheats`.
- Em `Boot strategy = Stand Alone`, o build usa initramfs embutido, nao gera `msx.cpio`, usa RAW para settings com fallback para `SD:/msx.cfg` e pode deferir `FatFs`.
- Em `Boot strategy = Multicore`, o build gera `msx.cpio`, usa `SD:/msx.cfg` sem RAW e monta `FatFs` antes do backend.
- ROMs, discos e cheats passam a navegar/carregar de `SD:/msx/roms`, `SD:/msx/disks` e `SD:/msx/cheats`.
- Paths antigos `SD:/roms`, `SD:/disks` e `SD:/cheats` sao migrados em memoria ao ler settings legadas.
- Settings exibe `CORE [...]` acima de `Machine`, com label localizada em PT/EN/ES.
- A lista de `CORE` vem dos arquivos `.img` da raiz do SD, sem extensao, ordenada de forma case-insensitive e limitada a 16 entradas.
- Ao trocar `CORE` e fechar o menu F12, o runtime reescreve `SD:/config.txt` com `kernel=<core>.img` e `initramfs <core>.cpio followkernel`, validando abertura/leitura/escrita/truncate/close e numero de bytes gravados.
- O reset por software e viavel usando o caminho existente do Circle: `Run()` retorna `ComboShutdownReboot` e `main()` chama `reboot()`.
- O menu Debug nao expoe mais `Kanji ROM [ON/OFF]`, e `msx.cfg` nao grava mais `kanji_rom`; o backend carrega Kanji/MSX-JE sempre que os blobs estiverem presentes.

## DoR

- [x] Issue avulsa definida sem milestone.
- [x] Escopo inicial cobre boot image, initramfs, config, layout SD, menu Settings e reset.
- [x] Issue remota criada no GitHub com labels coerentes.
- [x] Branch vinculada criada a partir de `main` pela issue de origem.
- [x] Estado inicial da branch registrado em `CONTEXT.md` e `docs/handoff/`.

## DoD

- [x] `make menuconfig` permite escolher `Boot strategy = Stand Alone|Multicore`, com default `Stand Alone`.
- [x] O fluxo de SD grava `msx.img` como nome de boot multicore.
- [x] `sdcard/config.txt` usa `kernel=msx.img` e a diretiva correta para `msx.cpio` quando aplicavel.
- [x] `SD:/msx.cfg` e o arquivo canonico de configuracao salvo pelo runtime.
- [x] Leitura de `roms`, `disks` e `cheats` usa `SD:/msx/`.
- [x] O file browser e os fluxos de startup continuam confinados aos roots corretos de ROM/DISK.
- [x] Settings exibe `CORE []` acima de `Machine`.
- [x] A lista `CORE` vem dos arquivos `.img` da raiz do SD, sem extensao.
- [x] Trocar `CORE` atualiza `config.txt` com `kernel=<core>.img` e `initramfs <core>.cpio followkernel` antes do reset.
- [x] Ao fechar o menu F12 apos troca de `CORE`, o Raspberry Pi reinicia por software via Circle `reboot()`.
- [x] Labels novas/alteradas no menu passam pelo sistema de locale PT/EN/ES.
- [x] `scripts/prepare-sd.sh` e scripts correlatos refletem o novo layout de SD.
- [x] README/docs relevantes explicam o layout multicore e a semantica de `Boot strategy`.
- [x] `scripts/check-third-party-pristine.sh` passa.
- [x] `git diff --check` passa.
- [x] Builds `DEBUG=1` e `DEBUG=0` passam.

## Checklist de trabalho

- [x] Auditar pontos que assumem `kernel8.img`, `msxbarepi.cfg`, `SD:/roms`, `SD:/disks` e `SD:/cheats`.
- [x] Atualizar Makefile, Kconfig/menuconfig e scripts de SD/package.
- [x] Atualizar `sdcard/config.txt` e geracao/copia de artefatos.
- [x] Ajustar BootConfig/config loader para `msx.cfg`.
- [x] Ajustar paths de midia e cheats para `SD:/msx/`.
- [x] Implementar scanner/lista de cores `.img` na raiz do SD.
- [x] Implementar edicao validada do `config.txt` para `kernel=` e initramfs/followkernel.
- [x] Investigar reset por software no Raspberry Pi 3B usando o caminho do Circle.
- [x] Integrar o reset ao fechamento do menu F12 apenas quando `CORE` tiver mudado.
- [x] Atualizar docs e handoff da branch.
- [x] Validar scripts e builds locais.

## Validacao local

- [x] `bash -n scripts/menuconfig.sh scripts/build-config.sh scripts/gen-build-header.sh scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh`
- [x] `NON_INTERACTIVE=1 ./scripts/menuconfig.sh --sync-only`
- [x] `./scripts/check-third-party-pristine.sh`
- [x] `make -j4 DEBUG=1`
- [x] `make -j4 DEBUG=0`
- [x] `make -n sdcard`
- [x] `KERNEL_IMG=artifacts/kernel8-issue254.img DRY_RUN=1 OFFLINE_DRY_PACKAGE=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 COPY_GAMES_TO_ROOT=0 PACKAGE_ZIP=/tmp/msx-sd-standalone.zip ./scripts/prepare-sd.sh`
- [x] `KERNEL_IMG=artifacts/kernel8-issue254.img MSXBARE_BOOT_STRATEGY=multicore DRY_RUN=1 OFFLINE_DRY_PACKAGE=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 COPY_GAMES_TO_ROOT=0 PACKAGE_ZIP=/tmp/msx-sd-multicore.zip ./scripts/prepare-sd.sh`
- [x] `git diff --check`

## Observacoes

- `make sdcard` nao foi executado de verdade porque o guardrail do projeto exige confirmacao explicita antes de gravar SD; o alvo foi validado com `make -n sdcard` e os pacotes offline foram inspecionados.
- Os artefatos internos continuam podendo se chamar `kernel8-issue254.img`; o nome no SD e no `config.txt` agora e `msx.img`.
- O pacote `Stand Alone` contem `msx.img`, `msx.cfg` e `msx/`; o pacote `Multicore` tambem contem `msx.cpio` e `initramfs msx.cpio followkernel`.
- A troca de `CORE` sempre gera `kernel=<core>.img` e `initramfs <core>.cpio followkernel`, inclusive para `CORE [msx]`.
