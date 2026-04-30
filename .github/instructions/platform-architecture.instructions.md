---
description: "Use para arquitetura baremetal do msxbarepi: Raspberry Pi 3B, AArch64, boot, MMIO, video, audio e configuracao runtime."
name: "MSXBarePi Platform and Architecture"
applyTo:
  - "src/**"
  - "include/**"
  - "linker/**"
  - "Makefile"
  - "docs/**"
---
# MSXBarePi Platform and Architecture

## Plataforma

- Alvo: Raspberry Pi 3B, AArch64, `kernel8.img`, freestanding/no-libc.
- Preferir C/C++ para kernel/runtime; limitar Assembly a bootstrap e baixo nivel indispensavel.
- HDMI e saida principal; UART e canal auxiliar de debug.

## Implementacao

- Priorizar codigo simples, deterministico e legivel.
- Evitar alocacao dinamica em caminhos sensiveis, salvo necessidade tecnica clara.
- Encapsular MMIO em helpers dedicados e documentar objetivo/registradores quando relevante.
- Consultar `third_party/circle` e `third_party/fmsx` antes de implementar suporte novo de hardware/emulacao.

## Boot oficial

- `BT1`: Interrupt + Timer
- `BT2`: screen
- `BT3`: audio
- `BT4`: SD/eMMC driver
- `BT5`: FatFs mount apenas quando raw config nao bastar ou midia inicial apontar para `SD:/`
- `BT6`: carga/aplicacao de BootConfig raw; fallback FAT quando necessario
- `BT7`: `NormalizeSettingsForBuild()`
- `BT8`: initramfs `boot-minimal`
- `BT9`: aplicacao da config no runtime
- `BT10`: emulator backend
- `BT11`: UART + Logger somente em `DEBUG=1`
- `BT12`: debug overlay somente em `DEBUG=1`
- primeiro blit visivel antes do USB Host
- `BT13`: USB Host
- `BT14`: loop principal

## Fastboot

- Inicializar screen/audio antes do backend.
- Usar BootConfig raw cedo para evitar FatFs no caminho quente.
- Montar FatFs antes do backend quando nao houver raw valido ou quando raw apontar ROM/DISK inicial em `SD:/`.
- Adiar tarefas nao criticas para o loop principal depois da primeira tentativa de USB Host.

## Configuracao runtime

- Arquivo canonico atual: `SD:/msx.cfg`.
- Leitura legado: aceitar `SD:/msxbarepi.cfg` e `SD:/MSXBARE.CFG`.
- Gravacao: salvar `SD:/msx.cfg` e o BootConfig raw quando habilitado.
- Validar conteudo antes de aplicar; em erro, manter fallback em memoria e registrar warning.

## DoD tecnico minimo

- Build gera `kernel8.img` sem erros.
- Boot esperado no Raspberry Pi 3B sem OS.
- Validacao visivel por HDMI e/ou UART conforme a etapa.
