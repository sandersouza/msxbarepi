# Recuperacao de Contexto: Migracao fMSX -> OpenMSX

Atualizado em: 2026-03-10

## Objetivo

Consolidar em um unico documento os principais achados tecnicos recuperados de chats antigos do Copilot sobre a migracao `fMSX -> OpenMSX`, com foco em VDP V9958, timing e audio.

## Fontes recuperadas

Os dados foram recuperados de sessoes persistidas localmente no VS Code (`workspaceStorage`), principalmente:

- `~/Library/Application Support/Code/User/workspaceStorage/33deade50b8666d6101b41342f246275/GitHub.copilot-chat/memory-tool/memories/NDBmNzYxZGEtNjUxNS00YTE3LTkyNTAtYTI5OTU5Y2UyMzQz/openmsx-v9958-exploration.md`
- `~/Library/Application Support/Code/User/workspaceStorage/33deade50b8666d6101b41342f246275/GitHub.copilot-chat/memory-tool/memories/NDBmNzYxZGEtNjUxNS00YTE3LTkyNTAtYTI5OTU5Y2UyMzQz/v9958-vdp-exploration.md`
- `~/Library/Application Support/Code/User/workspaceStorage/33deade50b8666d6101b41342f246275/GitHub.copilot-chat/memory-tool/memories/NDBmNzYxZGEtNjUxNS00YTE3LTkyNTAtYTI5OTU5Y2UyMzQz/openmsx-fmsx-audio-timing-comparative.md`
- `~/Library/Application Support/Code/User/workspaceStorage/33deade50b8666d6101b41342f246275/GitHub.copilot-chat/memory-tool/memories/repo/openmsx-vdp-register-tile-rendering.md`
- `~/Library/Application Support/Code/User/workspaceStorage/33deade50b8666d6101b41342f246275/GitHub.copilot-chat/memory-tool/memories/repo/v9958-fine-scroll-model.md`

## Resumo executivo

- O openMSX implementa V9958 com pipeline completo: escrita de registradores -> callbacks -> aplicacao por scanline.
- No fMSX atual, recursos V9958 avancados aparecem incompletos/nao conectados ao pipeline (ex.: modos 10/11/12, R25 com efeito limitado).
- Para migracao incremental no baremetal, a abordagem recomendada e portar primeiro logica de decodificacao de registradores e tile renderer basico (Screen 1/2), sem puxar todo o scheduler de openMSX.
- O ponto mais sensivel de scroll fino (R27) foi clarificado: modelo correto e deslocamento de display com preenchimento de borda, nao rotacao de nametable.

## Achados tecnicos principais

### 1. V9958: diferenca estrutural openMSX vs fMSX

- openMSX suporta de forma completa:
  - YJK (SCREEN12) e YAE (SCREEN11)
  - `CMD` em `R25` com comandos em mais modos
  - sincronizacao temporal consistente para aplicacao de registradores
- fMSX (estado analisado nas notas) mostra limitacoes:
  - modos V9958 10/11/12 nao acessiveis no fluxo normal
  - dependencia forte de `R0/R1`; `R25` sem papel equivalente ao openMSX

### 2. Modelo correto de fine scroll (R27)

- Nao tratar `R26:R27` como rotacao de origem na nametable.
- Modelo correto:
  - `R26`: coarse scroll em unidades de tile
  - `R27`: desloca display para a direita por 0..7 pixels
  - pixels expostos na esquerda sao borda (border-fill)
- Problema adicional identificado nas notas: bug de index por scanline em arrays de estado de VDP causava artefatos/stutter.

### 3. YJK/YAE e conversao de cor

- Conversao YJK no openMSX usa pipeline dedicado e resultado em RGB555.
- YAE mistura por pixel: ou paleta (bit de selecao) ou caminho YJK.
- Isso reforca que migrar apenas tabela de paleta de V9938 nao cobre comportamento esperado de V9958.

### 4. Audio e timing: filosofia de arquitetura

- openMSX:
  - scheduler/eventos com `EmuTime`
  - dispositivos com clocks proprios e resampling por dispositivo
  - maior precisao temporal
- fMSX:
  - loop por frame/scanline
  - clock global e mixagem mais direta
  - menor complexidade, mas menor granularidade temporal
- Implicacao pratica para baremetal:
  - manter abordagem incremental hibrida
  - evitar portar de imediato toda a infraestrutura de scheduler do openMSX

## Porting guide incremental (recomendado)

1. Portar primeiro partes de baixa dependencia:
- decodificacao de modo por registradores
- extracao de cores/enderecos base
- renderer tile Screen 1/2 ja simplificado

2. Consolidar comportamento de scroll:
- implementar `R27` como display-shift com border-fill
- manter `MaskEdges` (`R25 bit 1`) no fluxo de composicao de borda

3. So depois atacar modos avancados:
- YJK/YAE (SCREEN 10/11/12)
- command engine com semantica de V9958
- ajustes finos de timing por scanline

4. Audio/timing:
- preservar pipeline atual estavel de audio no baremetal
- introduzir pontos de sync mais finos aos poucos (sem reescrever tudo para scheduler completo em um unico passo)

## Riscos conhecidos

- Regressao visual ao tentar "port grande" de uma vez (VDP + timing + sprites + command engine).
- Scroll fino invertido/errado se modelo de `R27` voltar para abordagem de rotacao.
- Custo alto de depuracao se timing e renderer forem alterados no mesmo ciclo sem telemetria por scanline.

## Proximos passos objetivos

- Criar uma issue tecnica para "R27 display-shift + border-fill + MaskEdges" com teste visual dedicado.
- Criar uma issue tecnica para "modo 10/11/12" com matriz de validacao separada (YJK/YAE).
- Atualizar benchmark/regressao para detectar artefatos de scroll e divergencia de timing apos cada iteracao.

## Observacao operacional

As sessoes de chat antigas tambem foram preservadas em backup local:

- `~/Desktop/copilot-chat-recovery-20260310-115213`

Esse backup deve ser mantido ate confirmar que todo o contexto necessario ja foi incorporado aos docs do repositrio.
