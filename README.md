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

## Hardware do Raspberry Pi 3B

Para testes de runtime, audio HDMI e emulacao sustentada, trate o estado termico e a alimentacao como parte do ambiente de validacao.

- Use fonte estavel e cabo de boa qualidade.
- Evite fontes subdimensionadas, cabos com queda de tensao e portas USB de TV/monitor como alimentacao principal.
- Considere dissipadores no SoC e no PMIC como baseline de bancada.
- Para sessoes longas, prefira ventilacao ativa ou fluxo de ar consistente dentro do gabinete.
- Se houver gabinete fechado, valide temperatura real em carga; um case bonito sem ventilacao pode derrubar clock cedo demais.

Contexto pratico do projeto:

- O Raspberry Pi 3B pode reduzir clock do ARM quando entra em regime termico mais alto.
- No `msxbarepi`, isso ja apareceu em campo como queda de `1200MHz` para `600MHz` ou outro degrau dinâmico, com impacto direto no frame budget.
- Sintomas de fonte e fase termica podem se parecer com bug de emulacao: FPS cai depois de algum tempo, audio começa a degradar e o comportamento piora quando a gameplay fica mais pesada.
- Antes de concluir que existe regressao de software, confirme fonte, cabo, dissipacao e ventilacao.

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
- `OWNER="<nome>"` (owner/tag efetivo da build; nomeia pacote em `make package`)
- `MSXBARE_PATREON_TAG="<nome>"` (faz a mesma coisa que `OWNER` quando `OWNER` nao for informado)
- `FIRMWARE_DIR=<dir>`
- `EMULATOR_BACKEND=fmsx|bluemsx`
- `MSXBARE_EMBED_INITRAMFS=1|0` (default `1`; embute `msx.cpio` no kernel e dispensa a linha `initramfs` no `config.txt`)
- `CROSS=<prefixo>`
- Precedencia no `make`: flags da linha de comando vencem `.config`; `.config` vence os defaults do `Makefile`.

## Fluxo de SD

Fluxo oficial (interativo, com formatacao):

```bash
make sdcard
```

Com kernel customizado:

```bash
KERNEL_IMG=artifacts/kernel8-default.img FIRMWARE_DIR=./rpi-firmware make sdcard
```

Dry-run (sem persistencia em disco):

```bash
DRY_RUN=1 make sdcard
```

No macOS, o fluxo usa `diskutil`. No Linux, usa `lsblk` para deteccao e `parted` + `mkfs.vfat` + `udisksctl` para formatacao/montagem.

Atualizacao incremental sem formatar SD:

```bash
make sdcard-update
```

O fluxo incremental executa `sync` ao final e tenta desmontar automaticamente o SD; com `EJECT_AT_END=1`, faz ejeção segura quando o disco alvo puder ser identificado.

## Initramfs

O default do build gera `build/initramfs/msx-embedded.cpio` e embute o CPIO no `kernel8.img`. Para voltar ao modelo externo de SD, use `MSXBARE_EMBED_INITRAMFS=0`.

Geracao direta do `msx.cpio` externo:

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

O target usa o mesmo fluxo de payload do `make sdcard`, mas em modo offline/dry-run e gerando ZIP. Por default, segue o comportamento nao interativo seguro (`COPY_GAMES_TO_ROOT=0`): copia `cheats/` e cria `roms/` e `disks/`, sem copiar todos os jogos.

Com identificacao de owner:

```bash
DEBUG=1 OWNER="BetaUser" FIRMWARE_DIR=./rpi-firmware make package
```

Com copia completa de `roms/games` para a raiz do ZIP:

```bash
COPY_GAMES_TO_ROOT=1 make package
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
- Fluxograma do boot baremetal ate a emulacao: `docs/fluxograma-boot-baremetal-rpi-msx.md`
