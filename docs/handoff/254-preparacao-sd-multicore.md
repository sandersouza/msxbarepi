# Handoff Persistente da Branch 254-preparacao-sd-multicore

Ultima atualizacao: 23/04/2026

## Objetivo da branch

Preparar o MSX BarePI para uso como core em SD multicore, alinhando artefatos de boot, initramfs, arquivo de configuracao, layout de assets em `SD:/msx/`, selecao de `CORE` no menu Settings e reset por software apos troca de core.

## Estado atual

- Issue remota: `#254 [P1] Preparar SD multicore e selecao de core no boot`
- URL: https://github.com/sandersouza/msxbarepi/issues/254
- Branch vinculada: `254-preparacao-sd-multicore`
- Projeto: `MSX BarePI` com `Status: In progress`
- PR remoto: nenhum.
- A issue `#251` segue aberta/pausada; nao fechar nem remover a branch `251-suporte-cartucho-vdp-v9990`.
- A issue `#252` possui PR aberto `#253`; nao alterar esse fluxo nesta branch.

## Implementado nesta branch

- `sdcard/config.txt` aponta para `kernel=msx.img`.
- O arquivo canonico de settings no SD agora e `SD:/msx.cfg`; o runtime ainda le `SD:/msxbarepi.cfg` e `SD:/MSXBARE.CFG` como fallback de migracao.
- `make menuconfig` agora expoe `Boot strategy`, com default `Stand Alone` e opcao `Multicore`.
- `MSXBARE_BOOT_STRATEGY` passa pelo `.config.mk`, `build/config.mk`, Makefile e `build/config_build.h`; `MSXBARE_EMBED_INITRAMFS` e `MSXBARE_USE_RAW_BOOT_CONFIG` ficaram como derivados internos.
- `prepare-sd`, `update-sd-incremental` e `make-sdcard-package` gravam `msx.img`, `msx.cfg` e o layout `msx/roms`, `msx/disks`, `msx/cheats`.
- O fluxo `make sdcard` so oferece `UPDATE` quando o SD ja contem o core atualizavel `msx.img`; os demais arquivos de firmware/config nao bloqueiam mais a escolha e `kernel8.img` legado nao habilita update incremental.
- `Boot strategy = Stand Alone` usa initramfs embutido, nao gera `msx.cpio`, le/escreve settings via SD RAW com fallback para `SD:/msx.cfg` e pode deferir `FatFs`.
- `Boot strategy = Multicore` gera `msx.cpio`, usa `SD:/msx.cfg` sem RAW e monta `FatFs` antes do backend.
- File browser, catalogo de midia e Game Master usam `SD:/msx/roms`, `SD:/msx/disks`, `SD:/msx/cheats` e `SD:/msx/gamemaster.cht`.
- Settings ganhou `CORE [...]` acima de `Machine`, com strings em PT/EN/ES.
- Settings voltou a expor `Scale [1x/2x/3x]` logo abaixo de `Resolution`; `1x` e nativo, `2x` e metade do intervalo entre nativo e fullscreen, e `3x` calcula o maior multiplicador em passos de `0.25x` pela altura HDMI ativa. O default de boot e `Scale [3x]`.
- O scanner de cores le os `.img` da raiz do SD, remove a extensao, ordena case-insensitive e limita a 16 entradas.
- Ao trocar `CORE` e fechar o menu F12, o runtime atualiza `SD:/config.txt` sempre com `kernel=<core>.img` e `initramfs <core>.cpio followkernel`, valida a escrita e retorna `ComboShutdownReboot`.
- O reset usa o caminho existente do Circle em `src/main.cpp`: `reboot()`.
- Paths legados persistidos como `SD:/roms`, `SD:/disks` e `SD:/cheats` sao normalizados para `SD:/msx/...` durante a carga/aplicacao da configuracao.
- O menu Debug nao expoe mais `Kanji ROM [ON/OFF]`, e `msx.cfg` nao grava mais `kanji_rom`; o backend carrega Kanji/MSX-JE sempre que os blobs estiverem presentes.

## Guardrails tecnicos relevantes

- Nao modificar diretamente `third_party/circle` ou `third_party/fmsx`.
- Reset por software deve continuar usando API/caminho do Circle, sem MMIO ad hoc.
- Qualquer label nova visivel no menu deve passar pelo sistema de locale PT/EN/ES.
- Alteracoes de browser de arquivos devem preservar confinamento por root e atualizar `docs/file-browser-component.md` quando o comportamento mudar.
- Alteracoes de fluxo de SD devem atualizar `scripts/prepare-sd.sh` e documentacao correlata.
- Antes de build dependente de terceiros, rodar `scripts/check-third-party-pristine.sh` ou `make guard-third-party`.
- Nao rodar `make sdcard` gravando cartao sem confirmacao explicita.

## Validacao local

- `bash -n scripts/menuconfig.sh scripts/build-config.sh scripts/gen-build-header.sh scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh`: OK
- `NON_INTERACTIVE=1 ./scripts/menuconfig.sh --sync-only`: OK
- `./scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- `make -j4 DEBUG=0`: OK
- `make -n sdcard`: OK
- `KERNEL_IMG=artifacts/kernel8-issue254.img DRY_RUN=1 OFFLINE_DRY_PACKAGE=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 COPY_GAMES_TO_ROOT=0 PACKAGE_ZIP=/tmp/msx-sd-standalone.zip ./scripts/prepare-sd.sh`: OK
- Pacote `Stand Alone` inspecionado: contem `msx.img`, `msx.cfg`, `msx/roms`, `msx/disks`, `msx/cheats`; `config.txt` contem `kernel=msx.img` e nao contem `initramfs`.
- `KERNEL_IMG=artifacts/kernel8-issue254.img MSXBARE_BOOT_STRATEGY=multicore DRY_RUN=1 OFFLINE_DRY_PACKAGE=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 COPY_GAMES_TO_ROOT=0 PACKAGE_ZIP=/tmp/msx-sd-multicore.zip ./scripts/prepare-sd.sh`: OK
- Pacote `Multicore` inspecionado: contem `msx.img`, `msx.cpio`, `msx.cfg`; `config.txt` contem `kernel=msx.img` e `initramfs msx.cpio followkernel`.
- `git diff --check`: OK

## Observacoes para retomada

- O nome de artefato de build interno ainda pode ser `artifacts/kernel8-issue254.img`; o fluxo de SD copia esse arquivo como `msx.img`.
- A troca de Settings sempre gera `kernel=<core>.img` e `initramfs <core>.cpio followkernel`, inclusive para `CORE [msx]`.
- `make sdcard` ainda precisa ser executado com cartao real apenas apos confirmacao do usuario.
- Antes de abrir PR, vale fazer uma revisao curta do diff grande em `src/kernel.cpp`, porque a maior parte do risco esta na reescrita de `config.txt` e no ciclo de reboot.
