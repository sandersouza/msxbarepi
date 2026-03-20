# MSX BarePI

Projeto de emulacao de MSX em baremetal no Raspberry Pi 3B.

## Estado atual

- Fluxo principal de build usa `src` (kernel + runtime fMSX/Circle).
- Comando principal: `make`.
- Artefato padrao: `artifacts/kernel8-default.img`.
- Em branch de issue no formato `<numero>-...`, o build tambem gera `artifacts/kernel8-issue<numero>.img`.
- Preparacao de midia: `make sdcard` (fluxo oficial `scripts/prepare-sd.sh`).
- Empacotamento offline: `make package` (dry-run sem formatar disco fisico).

## Requisitos

- Toolchain AArch64 no PATH (`aarch64-none-elf-*`, `aarch64-elf-*` ou `aarch64-linux-gnu-*`).
- Dependencias de scripts validadas por `scripts/check-toolchain.sh`.
- Repositorios em `third_party/` presentes e integros.

Checagem rapida de ambiente:

```bash
./scripts/check-toolchain.sh
```

Instalacao/sugestao de toolchain por SO:

```bash
./scripts/install-toolchains.sh
```

## Estrutura principal

- `src/`: runtime principal e integracao com backend de emulacao.
- `include/`: headers locais.
- `linker/`: scripts de link.
- `scripts/`: utilitarios de build, SD, benchmark e validacoes.
- `docs/`: documentacao tecnica e operacional.
- `docs/legal/`: licencas e atribuicoes.
- `third_party/`: referencias/upstream (`fmsx`, `circle`, `bluemsx`).
- `artifacts/`: binarios/imagens gerados.

## Build

Build padrao:

```bash
make
```

Build com debug compilado (recomendado em desenvolvimento):

```bash
make DEBUG=1
```

Configurar features de build (frontend real do Linux Kconfig/mconf):

```bash
make menuconfig
```

Atalhos no menuconfig (interativo): os mesmos do menuconfig classico do Linux.

Help de targets/flags:

```bash
make help
```

Targets atualmente suportados pelo `Makefile`:

- `default` (padrao de `make`)
- `sdcard`
- `sdcard-update`
- `initramfs`
- `package`
- `menuconfig`
- `syncconfig`
- `clean`
- `help`

Flags publicas principais:

- `DEBUG=0|1`
- `OWNER="<nome>"` (nomeia pacote em `make package`)
- `MSXBARE_PATREON_TAG="<nome>"` (fallback para owner quando `OWNER` nao for informado)
- `FIRMWARE_DIR=<dir>`
- `EMULATOR_BACKEND=fmsx|bluemsx`
- `CROSS=<prefixo>`

## Fluxo de SD

Fluxo oficial (interativo, com formatacao):

```bash
./scripts/prepare-sd.sh
```

Com kernel customizado:

```bash
KERNEL_IMG=artifacts/kernel8-default.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Dry-run (sem persistencia em disco):

```bash
DRY_RUN=1 ./scripts/prepare-sd.sh

No macOS, o fluxo usa `diskutil`. No Linux, usa `lsblk` para deteccao e `parted` + `mkfs.vfat` + `udisksctl` para formatacao/montagem.
```

Atualizacao incremental sem formatar SD:

```bash
./scripts/update-sd-incremental.sh
```

## Initramfs

Geracao direta do `msx.cpio`:

```bash
./scripts/make-initramfs.sh roms/initramfs sdcard/msx.cpio
```

Via Makefile:

```bash
make initramfs INITRAMFS_IN=roms/initramfs INITRAMFS_OUT=sdcard/msx.cpio
```

## Empacotamento

Pacote ZIP offline para SD:

```bash
make package
```

Com identificacao de owner:

```bash
DEBUG=1 OWNER="BetaUser" FIRMWARE_DIR=./rpi-firmware make package
```

Configurar e aplicar `.config` sem abrir UI:

```bash
make syncconfig
```

Arquivos gerados de configuracao:

- `.config`
- `.config.mk`
- `build/config.mk`

## Benchmark e regressao

Criar sessao:

```bash
./scripts/perf-regression.sh init --tag baseline --make-target default --make-flags "DEBUG=1"
```

Comparar sessoes:

```bash
./scripts/perf-regression.sh compare --base artifacts/benchmarks/<sessao-base> --candidate artifacts/benchmarks/<sessao-candidate>
```

## Politica tecnica (resumo)

- Alvo: Raspberry Pi 3B, AArch64, `kernel8.img`.
- Build freestanding/no-libc.
- HDMI como saida de video obrigatoria; UART como debug auxiliar.
- Nao modificar diretamente `third_party/circle` e `third_party/fmsx`.
- Validar integridade de `third_party` antes de build (`make guard-third-party`).

## Third-party

Inventario e comandos de repovoamento:

- `third_party/README.md`

Referencias tecnicas prioritarias para implementacao/correcao:

- `third_party/fmsx`
- `third_party/circle`

## Documentacao relacionada

- Fluxo e guardrails operacionais: `AGENTS.md`
- Ponteiro de contexto de handoff: `CONTEXT.md`
- Instrucoes canonicass por area: `.github/instructions/*.instructions.md`
- Documentacao dos scripts: `scripts/README.md`
- Gestao de projeto: `docs/github-project-management.md`
- Perfis desacoplados por modelo (MSX1/MSX2/MSX2+): `docs/machine-profiles/README.md`
