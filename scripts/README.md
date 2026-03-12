# Scripts do Projeto

Este diretorio concentra utilitarios operacionais de build, validacao de ambiente, preparacao de SD e apoio a testes.

## Resumo rapido

- Faz um build assistido: `build-config.sh`
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
- Ambiente macOS para scripts que usam `diskutil`.
- Toolchain AArch64 instalada para build (`aarch64-none-elf-*` ou equivalente).
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
- Se faltar algo apos a validacao final, retorna erro.

## 4) check-toolchain.sh

### Funcao

Confere dependencias de ambiente (macOS/Linux) e as ferramentas da toolchain cruzada no PATH.

### Como usar

Prefixo default (`aarch64-none-elf-`):

```bash
./scripts/check-toolchain.sh
```

Auto-detect de prefixo da toolchain (`aarch64-none-elf-` e fallback `aarch64-elf-`):

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
- Verifica toolchain para o prefixo escolhido (`gcc`, `ld`, `objcopy`).

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

Fluxo oficial para preparar o microSD: seleciona disco, formata FAT32 (MBR), copia kernel/config/cmdline/initramfs/firmware e ejeta com seguranca.

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
- Requer `diskutil` e `fzf` no macOS.
- Quando `DEBUG=1`, ajusta `disable_splash=0` no `config.txt` copiado.

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

Com ajuste de video e jogos:

```bash
VIDEO_MODE_PRESET=720 COPY_GAMES_TO_ROOT=1 ./scripts/update-sd-incremental.sh
```

### Variaveis principais

- `TARGET_VOLUME` (default: `/Volumes/RPIBOOT`)
- `KERNEL_IMG`, `CONFIG_TXT`, `CMDLINE_TXT`, `INITRAMFS_IMG`, `INITRAMFS_SRC_DIR`
- `SETTINGS_CFG`, `FIRMWARE_DIR`
- `DEBUG`, `VIDEO_MODE_PRESET`
- `COPY_GAMES_TO_ROOT`, `GAMES_SRC_DIR`
- `EJECT_AT_END`

### Observacoes

- Nao formata o cartao.
- Se `make-initramfs.sh` estiver disponivel e `INITRAMFS_SRC_DIR` existir, regenera `msx.cpio` antes da copia.
