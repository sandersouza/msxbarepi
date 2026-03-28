# Scripts do Projeto

Este diretorio concentra utilitarios operacionais de build, validacao de ambiente, preparacao de SD e apoio a testes.

## Resumo rapido

- Faz um build assistido: `build-config.sh`
- Configura features de build (menuconfig): `menuconfig.sh`
- Gera header de configuracao para o kernel: `gen-build-header.sh`
- Instala/sugere toolchains por SO: `install-toolchains.sh`
- Guardrail de `third_party`: `check-third-party-pristine.sh`
- Checa Toolchain necessárias: `check-toolchain.sh`
- Cria Initramfs (`msx.cpio`): `make-initramfs.sh`
- Exporta a build em um pacote ZIP: `make-sdcard-package.sh`
- Suite de benchmark/regressao: `perf-regression.sh`
- Fluxo oficial de preparo de SD (formatando): `prepare-sd.sh`
- Atualizacao incremental de SD (sem formatar): `update-sd-incremental.sh`

## Pre-requisitos gerais

- Shell Bash.
- Para preparo de SD: macOS com `diskutil`/`plutil`, ou Linux com `lsblk` e, quando houver formatacao automatica, `parted` + `mkfs.vfat` + `udisksctl`.
- Toolchain AArch64 instalada para build (`aarch64-none-elf-*`, `aarch64-elf-*` ou `aarch64-linux-gnu-*`).
- Repositorios em `third_party` presentes e integro quando aplicavel.

## 1) build-config.sh

### Funcao

Executa um build guiado simples para o artefato default, perguntando se o debug visual deve estar ON/OFF.

### Como usar

```bash
./scripts/build-config.sh
```

Modo nao interativo:

```bash
NON_INTERACTIVE=1 ./scripts/build-config.sh
```

### Observacoes

- Executa `make default DEBUG=<0|1>`.
- Mostra aviso se o `PWD` nao for o caminho esperado configurado no script.

## 1.1) menuconfig.sh

### Funcao

Fluxo de configuracao no frontend real do Kconfig (`mconf`, mesmo usado no Linux) para gerar:

- `.config` (fonte de verdade)
- `.config.mk` (consumido pelo `Makefile` mesmo apos `make clean`)
- `build/config.mk` (consumido automaticamente pelo `Makefile`)
- Na execucao do `make`, flags da linha de comando vencem a configuracao salva em `.config`; a `.config` vence os defaults do `Makefile`.
- `OWNER` e `MSXBARE_PATREON_TAG` alimentam o mesmo owner/tag efetivo; `OWNER` tem precedencia quando ambos forem informados.

### Como usar

Interativo:

```bash
./scripts/menuconfig.sh
```

Nao interativo:

```bash
NON_INTERACTIVE=1 ./scripts/menuconfig.sh
```

Sincronizar `build/config.mk` a partir de `.config` sem abrir menu:

```bash
./scripts/menuconfig.sh --sync-only
```

### Observacoes

- O script compila `build/tools/kconfig-linux/mconf` localmente a partir de `tools/kconfig-linux/` quando necessario.
- Interface e atalhos sao os mesmos do menuconfig classico do Linux (setas, `Enter`, `Y/N`, `Space`, `Esc Esc`, `<Save>`, `<Load>`, `<Help>`).
- Opcoes atuais: SCC, FM-PAC, DISK ROM, MegaRAM, MSX2, Boot Screen, MSX2+, LOAD ROM, LOAD DISK, Boot Mode, DEBUG, One ROM Mode e Patreon/Owner tag.
- Em One ROM Mode o script aplica presets de seguranca (MSX2+, boot GAME e desativa load dinamico).
- Em `One ROM Mode`, o caminho de `CARTA.ROM` e definido diretamente no campo `MSXBARE_ONE_ROM_PATH` do proprio `menuconfig` (entrada digitada).
- `Boot Screen` (visivel quando `Suporte a MSX2+` estiver ativo):
  - `[*]` inclui `KANJI*.ROM` e `KANJIBASIC*.ROM` no initramfs;
  - `[ ]` preserva `KANJI*.ROM` para debug/runtime e remove apenas `KANJIBASIC*.ROM` do initramfs.

## 1.2) gen-build-header.sh

### Funcao

Gera `build/config_build.h` com macros estaticas de build para o kernel.

### Como usar

```bash
MSXBARE_FEAT_SCC=1 MSXBARE_BOOT_MODE_DEFAULT=FAST ./scripts/gen-build-header.sh build/config_build.h
```

### Observacoes

- O `Makefile` executa esse script automaticamente no target `config-header` antes de compilar.

## 2) check-third-party-pristine.sh

### Funcao

Valida que `third_party/circle`, `third_party/fmsx` e `third_party/bluemsx` nao possuem alteracoes locais.

### Como usar

```bash
./scripts/check-third-party-pristine.sh
```

Bypass explicito do guardrail:

```bash
ALLOW_DIRTY_THIRD_PARTY=1 ./scripts/check-third-party-pristine.sh
```

### Observacoes

- Falha se detectar mudancas locais em `third_party`.
- Aceita repos com `.git` ou `.gitbak`.

## 3) install-toolchains.sh

### Funcao

Detecta o sistema operacional e prepara dependencias de build/toolchain, sempre checando a toolchain primeiro com `check-toolchain.sh`.

Tambem valida e instala dependencias do `make menuconfig` (`bison`, `flex`, `pkg-config` e `ncurses`).

- Linux: instala via APT.
- macOS: instala via Homebrew.
- Outros SOs: rejeita e orienta instalacao manual.

### Como usar

```bash
./scripts/install-toolchains.sh
```

Simular sem instalar (Linux/macOS):

```bash
DRY_RUN=1 ./scripts/install-toolchains.sh
```

### Observacoes

- Em Linux, requer `apt-get` (e `sudo` quando nao for root).
- Em macOS, requer `brew` no PATH.
- Falha se o ambiente nao tiver as dependencias do `menuconfig` (incluindo `ncurses` via `pkg-config`).
- Se faltar algo apos a validacao final, retorna erro.

## 4) check-toolchain.sh

### Funcao

Confere dependencias de ambiente (macOS/Linux) e as ferramentas da toolchain cruzada no PATH.

### Como usar

Prefixo default (`aarch64-none-elf-`):

```bash
./scripts/check-toolchain.sh
```

Auto-detect de prefixo da toolchain (`aarch64-none-elf-`, fallback `aarch64-elf-` e `aarch64-linux-gnu-`):

```bash
CROSS=auto ./scripts/check-toolchain.sh
```

Prefixo custom:

```bash
CROSS=aarch64-elf- ./scripts/check-toolchain.sh
```

Modo simulacao (nao falha):

```bash
DRY_RUN=1 ./scripts/check-toolchain.sh
```

### Observacoes

- Verifica dependencias gerais (`make`, `git`, `zip`, `cpio`, `rsync`, `fzf`, `perl`).
- Verifica dependencias por SO (`diskutil` e `brew` no macOS; `apt-get` no Linux).
- Verifica toolchain para o prefixo escolhido (`gcc`, `g++`, `ld`, `objcopy`).

## 5) make-initramfs.sh

### Funcao

Gera um arquivo CPIO (`newc`) para runtime, copiando ROMs de entrada e incluindo `CARTS.SHA`/`CARTS.CRC` quando disponiveis.

### Como usar

```bash
./scripts/make-initramfs.sh <diretorio_de_entrada> <arquivo_saida.cpio>
```

Exemplo:

```bash
./scripts/make-initramfs.sh roms/initramfs sdcard/msx.cpio
```

### Observacoes

- Requer ao menos uma ROM (`*.ROM` ou `*.rom`) no diretorio de entrada.
- Ordena arquivos para gerar CPIO reproduzivel.
- Se `CONFIG_MSXBARE_ONE_ROM_MODE=y` em `.config`:
  - com `CONFIG_MSXBARE_ONE_ROM_PATH` valido, injeta essa ROM como `CARTA.ROM` no CPIO;
  - sem caminho selecionado, garante que `CARTA.ROM` nao exista no CPIO.

## 6) make-sdcard-package.sh

### Funcao

Monta um pacote ZIP com os arquivos de boot/execucao para SD sem formatar dispositivo fisico.

### Como usar

Default:

```bash
./scripts/make-sdcard-package.sh
```

Com destino customizado:

```bash
PACKAGE_ZIP=artifacts/sdcard-package-custom.zip ./scripts/make-sdcard-package.sh
```

Com copia de jogos para raiz do pacote:

```bash
PACKAGE_COPY_GAMES_TO_ROOT=1 ./scripts/make-sdcard-package.sh
```

### Variaveis principais

- `PACKAGE_KERNEL_IMG`
- `PACKAGE_CONFIG_TXT`
- `PACKAGE_CMDLINE_TXT`
- `PACKAGE_INITRAMFS_IMG`
- `PACKAGE_SETTINGS_CFG`
- `PACKAGE_FIRMWARE_DIR`
- `PACKAGE_COPY_GAMES_TO_ROOT`
- `PACKAGE_GAMES_SRC_DIR`
- `PACKAGE_ZIP`

## 7) perf-regression.sh

### Funcao

Cria sessoes de benchmark manual com build + artefatos de coleta e compara duas sessoes por `metrics.csv`.

### Como usar

Criar sessao:

```bash
./scripts/perf-regression.sh init --tag baseline --make-target default --make-flags "DEBUG=1"
```

Comparar sessoes:

```bash
./scripts/perf-regression.sh compare --base artifacts/benchmarks/<sessao-base> --candidate artifacts/benchmarks/<sessao-candidate>
```

### Saidas

- `artifacts/benchmarks/<sessao>/metadata.env`
- `artifacts/benchmarks/<sessao>/build.log`
- `artifacts/benchmarks/<sessao>/metrics.csv`
- `artifacts/benchmarks/<sessao>/comparison.md` (no candidate, comando `compare`)

### Observacoes

- Usa template de relatorio se existir em `docs/templates/perf-report-template.md`.
- Se o template nao existir, a sessao ainda e criada normalmente.

## 8) prepare-sd.sh

### Funcao

Fluxo oficial para preparar o microSD: seleciona disco, verifica se ja existe payload minimo de boot no SD e pergunta se deve `UPDATE` (incremental) ou `FORMATAR` (ciclo completo). No modo formatacao, copia kernel/config/cmdline/initramfs/firmware e ejeta com seguranca.

### Como usar

Execucao padrao:

```bash
./scripts/prepare-sd.sh
```

Com kernel customizado:

```bash
KERNEL_IMG=artifacts/kernel8-default.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Modo validacao sem persistir no disco:

```bash
DRY_RUN=1 ./scripts/prepare-sd.sh
```

Modo dry-run offline (sem disco fisico, gera pacote):

```bash
DRY_RUN=1 OFFLINE_DRY_PACKAGE=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 ./scripts/prepare-sd.sh
```

### Variaveis principais

- `KERNEL_IMG`, `CONFIG_TXT`, `CMDLINE_TXT`, `INITRAMFS_IMG`, `INITRAMFS_SRC_DIR`
- `SETTINGS_CFG`, `FIRMWARE_DIR`
- `DRY_RUN`, `NON_INTERACTIVE`, `AUTO_CONFIRM`
- `DEBUG`, `VIDEO_MODE_PRESET` (`auto`, `1080`, `720`, `768`, `16:9`, `4:3`)
- `COPY_GAMES_TO_ROOT`, `GAMES_SRC_DIR`
- `OFFLINE_DRY_PACKAGE`, `PACKAGE_ZIP`

### Observacoes

- Nao executar como root.
- Requer `fzf` apenas no modo interativo.
- No macOS, usa `diskutil` e `plutil`.
- No Linux, usa `lsblk` para deteccao; para formatar, usa `parted` + `mkfs.vfat`; para montagem/ejecao automatica, prefere `udisksctl`.
- Quando `DEBUG=1`, ajusta `disable_splash=0` no `config.txt` copiado.
- Se o SD selecionado ja tiver estrutura minima de boot (`bootcode.bin`, `start.elf`, `fixup.dat`, `bcm2710-rpi-3-b.dtb`, `config.txt`, `kernel8.img`), o script oferece escolha entre `UPDATE` e `FORMATAR`.
- Se `UPDATE` for escolhido, o script delega para `update-sd-incremental.sh` e encerra sem formatar.

## 9) update-sd-incremental.sh

### Funcao

Atualiza um SD ja montado sem formatar, copiando apenas arquivos alterados.

### Como usar

```bash
./scripts/update-sd-incremental.sh
```

Com volume custom e ejeção ao final:

```bash
TARGET_VOLUME=/Volumes/RPIBOOT EJECT_AT_END=1 ./scripts/update-sd-incremental.sh
```

Com dispositivo explicito no Linux/macOS:

```bash
SD_DEVICE=/dev/sdb EJECT_AT_END=1 ./scripts/update-sd-incremental.sh
```

Com ajuste de video e jogos:

```bash
VIDEO_MODE_PRESET=720 COPY_GAMES_TO_ROOT=1 ./scripts/update-sd-incremental.sh
```

### Variaveis principais

- `TARGET_VOLUME` (default: `/Volumes/RPIBOOT`)
- `SD_DEVICE` (ex.: `/dev/disk4`) para resolver automaticamente o volume montado a partir do disco selecionado
- `KERNEL_IMG`, `CONFIG_TXT`, `CMDLINE_TXT`, `INITRAMFS_IMG`, `INITRAMFS_SRC_DIR`
- `SETTINGS_CFG`, `FIRMWARE_DIR`
- `DEBUG`, `VIDEO_MODE_PRESET`
- `COPY_GAMES_TO_ROOT`, `GAMES_SRC_DIR`
- `EJECT_AT_END`

### Observacoes

- Nao formata o cartao.
- Quando `SD_DEVICE` e informado (via `prepare-sd.sh` ou manualmente), o script tenta detectar/montar a particao e resolver `TARGET_VOLUME` automaticamente.
- Se `make-initramfs.sh` estiver disponivel e `INITRAMFS_SRC_DIR` existir, regenera `msx.cpio` antes da copia.
  - quando `CONFIG_MSXBARE_BOOT_SCREEN` estiver desligado (`[ ]`), preserva `KANJI*.ROM` para o toggle `DEBUG -> KANJI ROM [ON/OFF]` e remove apenas `KANJIBASIC*.ROM` do pacote gerado.
- Ao final da copia, executa `sync` e tenta desmontar automaticamente o volume alvo.
- Se `EJECT_AT_END=1` e o disco puder ser resolvido, faz ejeção segura do SD; caso contrario, cai para desmontagem simples do volume.
