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

## M1.2 - Jogabilidade Básica MSX1 (Prioridade P0)

Objetivo: rodar ROMs MSX1 com interação básica do usuário.

1. Implementar entrada real (teclado/controle definido) com mapeamento MSX mínimo.
2. Implementar reset do emulador e comando de troca de ROM (mínimo viável).
3. Implementar mapeadores prioritários para conjunto de ROMs alvo.
4. Ajustar timing do loop para estabilidade (frame pacing inicial).
5. Validar pelo menos 2 ROMs MSX1 de referência com input funcional.
6. Documentar limitações de compatibilidade conhecidas.

Critério de saída M1.2:
- Pelo menos 2 ROMs MSX1 executam com vídeo + input estáveis.

## M1.3 - Estabilização e Performance (Prioridade P1)

Objetivo: tornar uso contínuo viável no RPi 3B e fechar M1.

1. Instrumentar métricas (ms/frame, dropped frames, uso de CPU).
2. Identificar e corrigir gargalos críticos de render/timing.
3. Integrar áudio em fases:
   - fase 1: stub silencioso estável
   - fase 2: saída PCM básica
4. Criar checklist de regressão (boot, ROM load, input, vídeo, estabilidade).
5. Consolidar documentação técnica do port em `docs/`.
6. Coletar evidências de fechamento (capturas/logs e ROMs testadas).

Critério de saída M1.3:
- Sessão de teste contínua estável no RPi 3B com performance aceitável para títulos MSX1 básicos.

## Priorização geral

- `P0`: M1.1 e M1.2 (funcionalidade essencial).
- `P1`: M1.3 (qualidade, performance e robustez).
