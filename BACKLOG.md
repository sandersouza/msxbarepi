# BACKLOG

## Objetivo imediato

Alcançar um `Hello World` baremetal funcional no Raspberry Pi 3B via HDMI, com build reproduzível e checklist de boot.

## Tarefas base

1. Validar toolchain cruzada local (`aarch64-none-elf-gcc`, `ld`, `objcopy`).
2. Confirmar artefato de build: `kernel8.elf` e `kernel8.img`.
3. Implementar bootstrap AArch64 mínimo (`_start`, stack, limpeza de `.bss`).
4. Garantir linker script com endereço de carga inicial (`0x80000`).
5. Inicializar mailbox/property interface para negociação de framebuffer.
6. Inicializar framebuffer HDMI (resolução inicial alvo: 1024x768x32).
7. Implementar console de texto simples em framebuffer (fonte bitmap + cursor).
8. Exibir mensagem `Hello World` via HDMI.
9. Manter UART PL011 como canal auxiliar de debug (não canal principal).
10. Criar layout de cartão SD para teste baremetal:
   - `kernel8.img`
   - `config.txt`
   - `cmdline.txt` (se necessário)
11. Definir procedimento de validação em hardware:
   - Conexão serial (3.3V TTL)
   - Comando de captura (`screen`, `minicom` ou similar)
   - Resultado esperado na saída serial
12. Documentar troubleshooting mínimo (sem vídeo HDMI, resolução inválida, boot loop).
13. Fechar marco `M0-Hello`: build limpo + boot real + evidência em tela HDMI.

## Critérios de aceitação do M0-Hello

- Build reproduzível com um comando (`make`).
- `kernel8.img` carrega e executa sem OS no Raspberry Pi 3B.
- HDMI exibe `Hello World` de forma estável após power-on/reset.

## Próximo objetivo (M1-Core MSX1 baremetal)

Adaptar um core de emulador MSX já existente para rodar em baremetal no Raspberry Pi 3B, exibindo vídeo via HDMI e executando jogos/aplicativos MSX1 básicos.

## Tarefas M1-Core

1. Selecionar o core base (ex.: `fMSX`, `blueMSX`, `openMSX`) com foco em simplicidade de port para baremetal.
2. Validar licenciamento do core escolhido e registrar obrigações de distribuição no repositório.
3. Congelar versão do core (commit/tag) para build reproduzível.
4. Criar diretório `third_party/<core>/` com estratégia de integração sem modificar upstream além do necessário.
5. Mapear dependências do core (stdio, arquivos, tempo, áudio, vídeo, teclado) e listar o que precisa de substituição baremetal.
6. Implementar camada `platform` do projeto para substituir serviços de OS:
   - logging/debug
   - temporização/ticks
   - entrada (teclado/USB ou fallback serial)
   - vídeo (framebuffer HDMI)
   - áudio (stub inicial)
   - filesystem/carregamento de ROM
7. Remover dependências de libc pesada e chamadas bloqueantes incompatíveis com baremetal.
8. Definir loop principal do emulador com budget de frame (alvo inicial: 60Hz de vídeo).
9. Implementar pipeline de vídeo MSX1 -> framebuffer HDMI:
   - framebuffer interno do core
   - conversão de paleta/cores
   - blit para resolução de saída
10. Implementar entrada mínima para uso real:
   - teclado MSX mapeado
   - tecla de reset do emulador
   - tecla para trocar ROM de teste (se aplicável)
11. Implementar carregamento de ROM a partir do SD (`.rom`) com seleção inicial simples.
12. Implementar mapeadores mínimos necessários para MSX1 básico (priorizar ROMs sem mapper e mapper mais comum no conjunto de testes).
13. Integrar PSG/áudio em etapas:
   - fase 1: stub silencioso sem quebrar timing
   - fase 2: saída PCM básica no hardware escolhido
14. Definir suíte de ROMs/testes de compatibilidade MSX1 (boot, input, vídeo, timing básico).
15. Criar harness de validação automática parcial no host (quando possível) e checklist manual no hardware real.
16. Instrumentar métricas de desempenho (ms/frame, uso de CPU, frames perdidos) e registrar baseline no RPi 3B.
17. Corrigir gargalos críticos para atingir experiência jogável em títulos MSX1 básicos.
18. Documentar arquitetura final do port em `docs/`:
   - fronteira entre core e plataforma
   - fluxo de frame
   - limitações conhecidas
19. Fechar marco `M1-Core` com evidência:
   - boot direto no emulador em baremetal
   - execução de pelo menos 2 ROMs MSX1 de referência
   - vídeo funcional em HDMI
   - controle de entrada funcional

## Critérios de aceitação do M1-Core

- Build gera imagem bootável com emulador integrado sem OS.
- Emulador inicializa e executa ROM MSX1 via HDMI no RPi 3B.
- Entrada de usuário permite interação básica (teclado/controle definido no projeto).
- Timing e estabilidade suficientes para sessão contínua de teste (sem travamento em cenário básico).
- Limitações pendentes ficam documentadas com plano para M2.

## Milestones M1 (ordem de execução)

## M1.1 - Bring-up do Core (Prioridade P0)

Objetivo: emulador sobe em baremetal e renderiza frames em HDMI, mesmo sem áudio final.

1. Escolher core base e congelar commit/tag.
2. Validar licença e registrar obrigações no repositório.
3. Integrar upstream em `third_party/<core>/` com patchset mínimo.
4. Mapear dependências de OS/libc e criar plano de substituição.
5. Implementar camada `platform` mínima (logging, ticks, vídeo, input básico stub).
6. Conectar loop principal do core ao runtime baremetal.
7. Implementar vídeo MSX1 -> framebuffer HDMI (primeiro frame visível e contínuo).
8. Criar loader de ROM simples a partir do SD.
9. Rodar ROM de teste simples e validar boot em tela.

Critério de saída M1.1:
- Emulador inicia em baremetal e exibe vídeo de ROM MSX1 na HDMI.
- Status: concluído.

Status atual (execução desta sessão):

- [x] Core base selecionado e commit fixado em `third_party/fmsx/UPSTREAM.md`
- [x] Upstream integrado em `third_party/fmsx/`
- [x] Licenciamento validado operacionalmente pelo mantenedor (registro: `docs/legal/fmsx-authorization.md`)
- [x] Dependências mapeadas e documentadas em `docs/m1-1-core-bringup.md`
- [x] Camada `platform` baremetal criada
- [x] Loop de frame bring-up em HDMI integrado ao kernel
- [x] Loader mínimo de ROM via `initramfs` (arquivo no SD carregado pelo firmware)
- [x] Execução real do núcleo fMSX integrada no runtime baremetal (build OK)
- [x] Validado em hardware real (RPi 3B + initramfs com BIOS Expert 1.1)
- [x] BASIC exibido via HDMI em hardware real (boot funcional)
- [x] Otimização de blit HDMI (`blit3x` + LUT RGB565)
- [x] Preset de fast boot por frame-skip temporário (~17s até BASIC observado)
- [x] Presets de framebuffer reduzido para teste de custo de blit (`960x720` e `800x600`)
- [x] Consolidar preset fastboot como baseline e revalidar após mudanças de render/core (MMU+cache+pacing promovidos)

## M1.2 - Jogabilidade Básica MSX1 (Prioridade P0)

Objetivo: rodar ROMs MSX1 com interação básica do usuário.

1. Implementar entrada real (teclado/controle definido) com mapeamento MSX mínimo.
   - USB host controller (RPi 3B) bring-up mínimo para HID
   - enumeração USB básica (device/config/interface/endpoint)
   - camada HID (boot keyboard primeiro; gamepad depois)
   - tradução HID -> matriz de teclado MSX / joystick MSX
   - repetição de tecla, key rollover e tratamento de modifiers (Shift/Ctrl/Graph) mínimos
2. Implementar reset do emulador e comando de troca de ROM (mínimo viável).
3. Implementar mapeadores prioritários para conjunto de ROMs alvo.
4. Integrar áudio básico funcional para jogabilidade:
   - PSG (AY-3-8910) com saída PCM mínima
   - manter FM/SCC em stub se necessário nesta fase
5. Ajustar timing do loop para estabilidade (frame pacing inicial).
6. Validar pelo menos 2 ROMs MSX1 de referência com input + áudio básico funcionais.
7. Documentar limitações de compatibilidade conhecidas.

Critério de saída M1.2:
- Pelo menos 2 ROMs MSX1 executam com vídeo + input + áudio básico estáveis.

Status atual (parcial, início por item 4):

- [x] Pipeline de áudio do core reativado em modo `PSG-only` (AY8910) sem FM/SCC/NukeYKT
- [x] Mixagem EMULib (`InitSound` + `RenderAndPlayAudio`) integrada ao loop por frame
- [x] Fila PCM (`audio_pcm`) integrada entre frontend e backend de saída
- [x] Preset de teste gerado: `artifacts/kernel8-audio-test.img`
- [x] Driver de saída PCM no hardware via PWM analógico (P2) sem DMA (funcional, qualidade ainda a refinar)
- [x] Smoke test dedicado da rota P2 (`artifacts/kernel8-audio-p2-smoketest.img`)
- [ ] Refinar saída P2 (glitches/latência/estéreo estável) e migrar para DMA
- [x] Implementar backend de áudio HDMI (reutilizando `audio_pcm`) - básico funcional
  - [x] separar backend `audio_out_hdmi` + preset `artifacts/kernel8-audio-hdmi-test.img` (scaffold/debug)
  - [x] mapear referências do Circle (`hdmisoundbasedevice.*`, `bcm2835.h`, `dmacommon.h`)
  - [x] inicialização MAI/HDMI mínima (polling)
  - [x] saída audível HDMI (48kHz)
  - [x] migrar para DMA cíclico
  - [x] coerência de cache (MMU+DMA: flush de buffers/CBs)
  - [x] preset estável gerado: `artifacts/kernel8-audio-hdmi.img`
  - [ ] refinar integração HDMI (limpeza de workarounds de bring-up / remover flags de debug do caminho de teste)
  - [ ] Iniciar trilha de input real (USB + HID)
  - [x] definir estratégia USB no RPi 3B (host controller alvo + referência Circle)
  - [x] iniciar spike standalone com a pilha USB/HID do Circle (`sample/08-usbkeyboard`) para validar enumeração/HID antes da bridge com `msxbare`
  - [x] validar em hardware real o spike Circle USB/HID (hub interno + teclado HID)
  - [~] criar bridge C/C++ (fora de `third_party/circle`) para integrar teclado HID do Circle ao `msx_input` (bridge compartilhada `include/msx_hid_bridge.h` + `src/msx_hid_bridge.c`; backend `INPUT_BACKEND=circle` consome a bridge; preset experimental `audio-hdmi-circle-input` ja compila com runtime Circle linkado; validacao funcional em hardware ainda pendente)
  - [ ] bring-up mínimo do host USB para enumeração de um teclado HID
  - [x] DWC host mode + root port enable (standalone `usb-host-debug`) validado em hardware (`host_mode=1 conn=1 en=1`)
  - [~] sonda EP0 (`GET_DESCRIPTOR` addr0, 8 bytes) em implementação/validação no standalone
  - [~] implementar parser HID boot keyboard (bridge raw HID validada via Circle; parser/fila no `msxbare` ainda pendente)
  - [~] mapear teclas HID -> teclado MSX (mínimo inicial implementado em `msx_input` para raw HID boot report; bridge compartilhada validada via Circle; integração Circle->msxbare pendente)
  - [ ] smoke test em hardware com teclado USB (digitar no BASIC)

## M1.3 - Estabilização e Performance (Prioridade P1)

Objetivo: tornar uso contínuo viável no RPi 3B e fechar M1.

1. Instrumentar métricas (ms/frame, dropped frames, uso de CPU).
2. Identificar e corrigir gargalos críticos de render/timing.
   - baseline atual medido em hardware:
     - `O1 + blit3x` ~25s ate BASIC
     - `fastboot` (skip temporario de apresentacao) ~17s ate BASIC
     - proximo A/B: `fastboot-fb960x720` e `fastboot-fb800x600` (reduzir pixels do framebuffer real)
     - validar clock ARM efetivo do RPi 3B em baremetal (`arm_freq=1200` no `config.txt`) antes de concluir diagnostico de "meia velocidade"
     - MMU+cache habilitados (preset estavel) + frame pacing restaurando velocidade percebida correta
3. Refinar áudio (após áudio básico em M1.2):
   - reduzir latência / glitches
   - revisar mixagem (PSG/SCC/FM)
   - habilitar recursos adicionais por etapas
4. Criar checklist de regressão (boot, ROM load, input, vídeo, estabilidade).
5. Consolidar documentação técnica do port em `docs/`.
6. Coletar evidências de fechamento (capturas/logs e ROMs testadas).

Critério de saída M1.3:
- Sessão de teste contínua estável no RPi 3B com performance aceitável para títulos MSX1 básicos.

## M1.4 - Validação Comparativa com MSX Real (Prioridade P1)

Objetivo: medir e aproximar fidelidade do `msxbare` em relação a um MSX real (vídeo, áudio, timing e comportamento observável).

1. Definir bancada de comparação e procedimento padronizado:
   - MSX real de referência (modelo/BIOS/fonte/tela/cabos)
   - RPi 3B + `msxbare` (versão/preset fixado)
   - mesmas ROMs/cenas/scripts de teste nos dois lados
2. Congelar conjunto de ROMs/cenas de comparação (benchmark funcional):
   - BASIC idle / prompt
   - jogo com música contínua
   - jogo com scroll/sprites
   - tela de cores/paleta por screen mode (quando disponível)
3. Validar vídeo com captura:
   - capturar saída de vídeo do MSX real (placa de captura)
   - capturar saída HDMI do `msxbare`
   - comparar aspect ratio, enquadramento, bordas, overscan e alinhamento
4. Validar paleta/cores por screen mode:
   - medir diferenças de cor (RGB/HSV/Delta aproximado) por amostra
   - documentar desvios por `SCREEN` (`0/1/2/...` conforme suporte)
   - ajustar paleta/conversão quando necessário
5. Validar timing/frequência de vídeo:
   - medir frequência de quadro e estabilidade (50/60Hz)
   - medir pacing percebido em cenas de movimento
   - registrar jitter / dropped frames
6. Validar áudio com instrumentos:
   - gravar áudio do MSX real e do `msxbare` (mesmas cenas)
   - comparar forma de onda, envelope e espectro/histograma
   - identificar clipping, ruído, DC offset, latência e pitch incorreto
7. Validar sinais analógicos/PWM com mini osciloscópio (quando aplicável):
   - frequência efetiva de saída
   - amplitude relativa / offset DC
   - presença de glitches/aliasing
8. Medir velocidade de execução comparada:
   - tempo até BASIC
   - tempo de boot de ROMs selecionadas
   - comportamento de animações e input response em cenas fixas
9. Construir matriz de conformidade:
   - vídeo (aspect ratio, cores, bordas, timing)
   - áudio (pitch, timbre, ruído, latência)
   - velocidade/timing geral
   - observações e prioridade de correção
10. Gerar documentação e evidências em `docs/`:
   - metodologia
   - medições
   - capturas/áudios/gráficos
   - diferenças conhecidas e plano de correção

Critério de saída M1.4:
- Existe relatório comparativo reproduzível com evidências instrumentadas (vídeo + áudio + timing) entre `msxbare` e MSX real.
- Principais desvios estão quantificados e priorizados em backlog técnico.

## Priorização geral

- `P0`: M1.1 e M1.2 (funcionalidade essencial).
- `P1`: M1.3 e M1.4 (qualidade, performance, robustez e fidelidade comparativa).
