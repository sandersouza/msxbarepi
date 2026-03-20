# Workflow real do boot logo MSX2+ (ROM + referências) e estratégia de correção definitiva

## Objetivo
Parar a iteração por tentativa/erro e seguir um plano técnico fechado para corrigir **de forma definitiva** o boot logo do MSX2+.

Este documento consolida:
- comportamento observado em hardware;
- fluxo real extraído de disassembly da ROM/SUBROM;
- workflow de referência em BlueMSX/openMSX;
- gaps objetivos no nosso código;
- estratégia faseada para correção com critérios de aceite.

## Evidência consolidada do problema
- No hardware real, a animação do boot logo no MSX2+ leva em torno de ~4500 frames para chegar ao BASIC.
- Em várias builds o logo aparece parcial, alternando com quadros “limpos” e/ou tarjas.
- Visual esperado (BlueMSX): composição por blocos com alternância de linhas/páginas (efeito odd/even + multipage), com scroll perceptível por ambos os lados.

## Fluxo da ROM/SUBROM (disassembly)
Fonte: `docs/reverse-engineering/msx2plus/MSX2PEXT.ROM.dis`.

### Confirmacao de origem do logo
- O fluxo do logo esta no `MSX2PEXT.ROM`, nao no `KANJI.ROM`.
- Ponto de entrada confirmado:
  - `0x047d -> CALL 0x2c76`
- Clarificacao operacional:
  - o contador `F:xxxxx` do overlay e frame de runtime;
  - ele nao corresponde a endereco de ROM.

### Rotina de espera de comando VDP
- Endereço `0x2BE4`:
  - `LD A,02h`
  - `CALL 0x2BEF`
  - `RRCA` / `JR C, ...`
- Endereço `0x2BEF`:
  - seleciona status register via porta `0x99`;
  - lê `IN A,(99h)`;
  - restaura seleção padrão.

Interpretação prática:
- `0x2BE4` é um loop de polling no status do VDP (bit de busy/CE em `S#2`) e só retorna quando o comando termina.

### Pontos críticos no fluxo do logo
Há chamadas repetidas dessa rotina em trechos do startup:
- `0x2E3E`
- `0x2EBF`
- `0x3040`
- `0x3299`

Nesses blocos, a ROM:
- espera CE limpar (`CALL 0x2BE4`);
- programa registradores/comandos via `OUT (99h)` e `OUT (9Bh)`;
- usa transferências em bloco (`OTIR` para `0x9B`) para carregar parâmetros de comando.

Conclusão: o boot logo depende fortemente de
1) progressão correta do command engine, e
2) polling de status com semântica fiel.

### Leitura refinada da animacao
- A leitura do disassembly confirma a percepcao visual de hardware:
  - o efeito usa composicao por paginas/linhas alternadas;
  - o BIOS empurra blocos de comando para o VDP e sincroniza por polling de status;
  - ha transformacao de dados na CPU (`RRCA`, `RLCA`, `AND`, `OR`) antes de parte dos `OTIR` para `0x9B`.
- A hipotese de "dois framebuffers completos prontos e apenas exibidos depois" nao foi confirmada.
- O modelo mais consistente com a ROM e com BlueMSX/openMSX e:
  - composicao guiada por command engine;
  - uso de odd/even page;
  - scroll horizontal oposto por paginas/linhas alternadas;
  - reuniao progressiva no centro.

## Workflow de referência: BlueMSX
Fontes:
- `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
- `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`
- `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`

### 1) Command engine sincronizado por tempo
- `vdpCmdExecute(vdpCmd, boardSystemTime())` é chamado nos caminhos de I/O VDP (leitura/status/VRAM), não só em um loop fixo.
- O acumulador de operações é alimentado por `systemTime - previousSystemTime`.

Efeito: polling apertado de `0x99` avança o estado do command engine de forma consistente com o tempo emulado.

### 2) Mapeamento de modo de comando V9958
- `SCR5..SCR8 -> 0..3`
- `SCR9..SCR12 -> 3`
- fora disso: comandos só quando `commandEnable` (CMD bit).

### 3) Render de SCREEN 6/7 com multipage real
- usa macros de `hScroll`, `hScroll512`, `isOddPage` e `jumpTable`.
- há troca explícita de página durante a varredura da linha (`UPDATE_TABLE_6/7`), com split e wrap corretos.
- trata edge mask e composição em blocos com alternância de páginas/linhas.

## Workflow de referência: openMSX
Fontes:
- `third_party/openmsx/src/video/VDP.hh`
- `third_party/openmsx/src/video/SDLRasterizer.cc`
- `third_party/openmsx/src/video/VDPCmdEngine.cc`

### 1) Modelo explícito de scroll/página
- `getHorizontalScrollHigh/Low()`
- `isMultiPageScrolling()` baseado em `R25` + página ativa
- `getEvenOddMask()` baseado em `R9` + `S#2`

### 2) Render com page split
- rasterizer calcula `pageSplit`, `scrollPage1/scrollPage2`, e desenha duas origens de VRAM na mesma linha quando necessário.
- máscara odd/even entra no cálculo do page source.

### 3) Command engine por EmuTime
- comandos usam `start/execute(..., EmuTime)`;
- atualização de modo e status sincroniza antes de executar comando.

## Gap atual no nosso emulador

### A) Renderer SCREEN6/7 (512) ainda está no baseline fMSX
Arquivos:
- `src/fmsx_local/Wide.h`
- `src/fmsx_local/Common.h`

Situação:
- `RefreshLine6/RefreshLine7` no caminho wide são lineares (upstream fMSX), sem split explícito de multipage no estilo BlueMSX/openMSX.
- ausência desse fluxo explica a falta do efeito visual esperado (linhas/blocos odd/even alternando por lados).

### B) Fonte de odd/even baseada em frame e não em status do VDP
Arquivo:
- `src/fmsx_host_stubs.c`

Situação:
- `OddPage` hoje é `g_frame_number & 1`.
- referências usam estado derivado de registradores/status do VDP (`R9` + `S#2`).

### C) Progressão do command engine com quantum fixo e heurística
Arquivo:
- `src/fmsx_local/V9938.c`

Situação:
- `LoopVDP()` usa quantum fixo por chamada (com override agressivo em MSX2+).
- modelo não é tempo-dirigido como BlueMSX/openMSX.
- ajustes de quantum/turbo reduzem sintoma em alguns casos, mas não reproduzem semântica de hardware.

### D) Mitigação por boot boost mascara causa
Arquivo:
- `src/fmsx_runtime.c`

Situação:
- há boost de boot para MSX2+ (`MSXBARE_FMSX_NORM_BOOT_BOOST_FRAMES_MSX2P=5000`).
- isso ajuda tempo percebido, mas não corrige composição/semântica do logo.

## Hipótese técnica principal (priorizada)
1. **Fidelidade de render multipage/odd-even em SCREEN6/7 incompleta** no nosso caminho ativo.
2. **Command engine sem sincronização temporal fina com I/O** (especialmente durante polling de status da ROM).
3. Boost/tunings estão compensando performance, não corrigindo o comportamento base.

## Estratégia definitiva (sem novo loop de tentativa/erro)

### Fase 0 — Congelar hacks e instrumentar baseline
- Congelar mudanças ad-hoc de quantum/turbo para diagnóstico.
- Instrumentar contadores mínimos:
  - transições CE (`S#2 bit0`),
  - writes em `R25/R26/R27/R2`,
  - page source efetiva por linha em SCREEN6/7,
  - quantidade de polls `0x99` por frame durante logo.

Critério de saída:
- baseline reproduzível com métricas estáveis para comparar antes/depois.

### Fase 1 — Corrigir render SCREEN6/7 com workflow de referência
- Portar para nosso caminho ativo a lógica de split multipage de referência (BlueMSX), incluindo:
  - cálculo de scroll high/low,
  - troca de página por boundary,
  - edge mask,
  - composição com odd/even page state.
- Substituir a origem de odd/even por semântica de VDP status/reg (não frame parity crua).

Critério de saída:
- efeito visual do logo equivalente ao padrão BlueMSX (blocos/linhas alternadas por lados), sem regressão em MSX1/MSX2.

### Estado da Fase 1 em 17/03/2026 11:10 BRT
- Odd/even page ja foi migrado para estado efetivo do VDP nas rodadas anteriores.
- A tentativa de portar `SCREEN 6/7` para um modelo mais literal ao BlueMSX **regrediu** o logo em hardware:
  - barras verticais;
  - letras corrompidas;
  - boot ainda indo ate ~`F:004300`.
- Decisao da rodada:
  - o rewrite amplo de `RefreshLine6()/RefreshLine7()` foi revertido;
  - o baseline voltou ao caminho anterior com `BgRaw[1024]`/largura virtual;
  - a Fase 1 continua aberta, mas sem novo rewrite estrutural ate fechar a semantica do timing do boot.
- Implicacao:
  - qualquer novo ajuste visual em `SCREEN 6/7` daqui em diante deve ser incremental e validado contra o comportamento do command engine/polling real do BIOS.

### Refinamento incremental em 17/03/2026 11:52 BRT
- Novo ajuste implementado no renderer `SCREEN 6/7`:
  - sem reescrever o caminho inteiro;
  - trocando apenas a montagem da fonte virtual da linha.
- `Common.h` e `Wide.h` agora usam um stream de bytes guiado por `jumpTable` para `SCREEN 6/7`, em vez de assumir que a segunda metade virtual da linha e sempre `+0x8000`.
- Objetivo do ajuste:
  - alinhar o fetch de linha ao comportamento do BlueMSX quando `hscroll512` e page split entram no logo;
  - atacar diretamente os sintomas de blocos deslocados/duplicados sem reabrir o rewrite que ja havia regredido o logo.

### Fase 2 — Corrigir cadência do command engine
- Remover dependência de quantum “turbinado” específico de modelo.
- Sincronizar progressão do command engine com tempo emulado e pontos de I/O VDP (modelo BlueMSX/openMSX).
- Validar que loops de polling (`CALL 0x2BE4`) avançam na mesma ordem/cadência esperada.

Critério de saída:
- reduzir tempo de boot logo de ~4500 frames para faixa próxima do esperado em referência, sem quebrar 60Hz já estabilizado.

### Estado da Fase 2 em 17/03/2026 11:10 BRT
- `LoopVDP()` continua baseado em `VdpAdvanceOps()`.
- A rodada atual adicionou um ajuste local em `GetVdpTimingValue()`:
  - custo dos comandos dividido por `8` apenas dentro do fluxo BIOS do logo `MSX2+`:
    - `0x2BE4..0x2C27`
    - `0x2E3E..0x2F97`
    - `0x3040..0x3147`
    - `0x3299..0x3325`
- Hipotese ativa:
  - o gargalo restante dominante esta na cadencia do polling de `S#2 bit0`, nao em mapper/cart nem em rewrite estrutural do renderer.
- Proxima verificacao de hardware:
  - confirmar se o frame final desce de ~`F:004300`;
  - se nao descer, revisar a semantica de `S#2 bit0` e o ponto exato do fim de comando esperado pelo BIOS em `0x2BE4`.

### Fase 3 — Regressão completa e limpeza
- Revalidar:
  - boot MSX1/MSX2/MSX2+,
  - detecção 60Hz no MSXDIAG,
  - DISK ROM + leitura de disco,
  - estabilidade de teclado.
- Só após passar regressão, remover mitigação de boot boost que tiver ficado obsoleta.

## Regras de execução para evitar novo ciclo de tentativa/erro
- Cada fase entra com hipótese única e sai com evidência objetiva (prints + contadores + build hash).
- Não mesclar mudanças de renderer e timing na mesma sub-iteracão inicial.
- Não reabrir tuning de `0x99` de 60Hz enquanto o foco for boot logo (já estabilizado em testes recentes).

## Resultado esperado
Com esse fluxo, a correção deixa de depender de “ajustar número mágico” e passa a reproduzir:
- o protocolo de comando da ROM (poll CE/status),
- o pipeline gráfico multipage/odd-even real do V9958,
- e o timing de execução necessário para o boot logo aparecer com o mesmo comportamento dos emuladores de referência.

## Atualizacao 2026-03-19 23:35 -03
- A investigacao experimental posterior foi revertida para o ultimo baseline estavel conhecido.
- Referencia operacional atual:
  - artefato estavel alvo: SHA1 `8a25ae3e1f79b1c0744b200e2f3439d1ff044903`
- Regra pratica a partir deste ponto:
  - qualquer nova iteracao do boot `MSX2+` deve partir desse baseline restaurado;
  - nao reintroduzir instrumentacao ou heuristicas de velocidade sem evidencia nova e isolada.
