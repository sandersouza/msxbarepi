---
description: "Use para diretrizes base de plataforma/arquitetura baremetal no msxbarepi (Raspberry Pi 3B, C/ASM, freestanding, MMIO, debug HDMI)."
name: "MSXBarePi Platform and Architecture"
applyTo:
  - "src/**"
  - "include/**"
  - "linker/**"
  - "Makefile"
  - "docs/**"
---
# MSXBarePi Platform and Architecture

## Objetivo

- Garantir consistencia tecnica da base baremetal para Raspberry Pi 3B.

## Plataforma alvo

- Arquitetura: AArch64.
- Artefato de boot: `kernel8.img`.
- Execucao freestanding/no-libc (`-ffreestanding`, `-nostdlib`).

## Linguagens e escopo

- Preferir C para runtime/kernel e logica de emulacao.
- Limitar Assembly a bootstrap e trechos estritamente de baixo nivel.

## Diretrizes de implementacao

- Priorizar codigo simples, deterministico e legivel.
- Evitar alocacao dinamica nesta fase, salvo necessidade tecnica clara.
- Encapsular MMIO em helpers dedicados e documentar objetivo/registradores.
- Evitar abstracoes prematuras em caminhos de hardware sensiveis.

## Video e debug

- HDMI e saida de video obrigatoria.
- UART e canal auxiliar de debug.
- Para overlay runtime HDMI, seguir baseline de `docs/debug-layer.md`.

## Ordem oficial de boot

- `BT0`: `UART + Logger`
- `BT1`: `Interrupt + Timer`
- `BT2`: `SD/eMMC driver`
- `BT3`: `FatFs mount`
- `BT4`: carga e aplicacao de `msxbarepi.cfg`
- `BT5`: `NormalizeSettingsForBuild()`
- `BT6`: `initramfs`
- `BT7`: aplicacao da config no runtime
- `BT8`: `screen`
- `BT9`: `emulator_backend_init()`
- `BT10`: debug overlay pronto
- `BT11`: `USB Host`
- `BT12`: entrada no loop principal

## Fluxo oficial de configuracao

- Arquivo canonico: `SD:/msxbarepi.cfg`
- Compatibilidade de leitura: se `msxbarepi.cfg` nao existir, aceitar `SD:/MSXBARE.CFG`
- Gravacao: sempre sobrescrever `SD:/msxbarepi.cfg`

### Carga

- montar `FatFs`
- tentar `msxbarepi.cfg`
- se nao existir, tentar `MSXBARE.CFG`
- validar o arquivo inteiro antes de aplicar
- se houver erro, cair em fallback e registrar warning na UART/logger
- se estiver valido, aplicar as configuracoes antes do init do backend

### Gravacao

- sobrescrever o arquivo existente em `SD:/msxbarepi.cfg`
- reabrir e validar o conteudo salvo
- se estiver valido, concluir o save e voltar ao menu principal
- se estiver invalido, registrar erro e manter o estado anterior em memoria

## Referencias tecnicas

- Consultar `third_party/circle` e `third_party/fmsx` antes de implementar do zero.
- Em drivers/perifericos sensiveis (audio, DMA, clock, video), registrar fonte conceitual usada.

## Marcos tecnicos de alto nivel

- Boot minimo + UART.
- Timer/IRQ basicos.
- Framebuffer/VDP de debug.
- Loop principal de emulacao.
- Carregamento de ROM e mapeadores principais.

## Definition of Done (fase atual)

- Build gera imagem de kernel sem erros.
- Boot no Raspberry Pi 3B sem OS.
- Telemetria/saida minima de validacao visivel (HDMI e/ou UART conforme etapa).
