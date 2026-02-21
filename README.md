# msxbare

Projeto de emulação de MSX em baremetal no Raspberry Pi 3B.

## Escolha de linguagem

- Kernel/runtime: `C` (controle baixo nível, toolchain madura e previsível em baremetal)
- Bootstrap inicial: `AArch64 Assembly` (vetor de entrada e setup mínimo da stack)

## Meta inicial

Gerar `kernel8.img` com um `Hello World` via HDMI (framebuffer), bootando sem sistema operacional no Raspberry Pi 3B.

## Estrutura

- `boot/`: ponto de entrada em assembly
- `src/`: código C do kernel
- `include/`: headers
- `linker/`: script de link
- `scripts/`: utilitários de build/deploy
- `docs/`: documentação técnica

## Build rápido

Requer toolchain baremetal AArch64 no PATH.
Prefixos suportados por auto-detecção:

- `aarch64-none-elf-*`
- `aarch64-elf-*` (Homebrew)

```bash
make
```

Artefatos em `build/`.

## Saída de vídeo

- O projeto adota HDMI como saída principal.
- UART permanece ativa para diagnóstico, mas toda evolução funcional deve considerar exibição em HDMI.

## Preparar microSD (macOS)

Script interativo com TUI (`fzf`) e protecoes para evitar disco incorreto:

```bash
brew install fzf
scripts/prepare-sd.sh
```

Opcionalmente, para copiar firmwares no mesmo passo:

```bash
FIRMWARE_DIR=/caminho/para/firmware scripts/prepare-sd.sh
```
