# Handoff Persistente da Branch 82-auditar-registradores-v9958

Ultima atualizacao: 04/04/2026 (01:58 -03)

## Objetivo da branch

Usar a branch umbrella da `#82` para estruturar e iniciar a trilha de auditoria comparativa do `V9958 stock`, comparando nosso core local com `blueMSX` e `V9958-Super` antes de abrir correções novas no VDP.

## Vinculo de gestao

- Issue remota: [#82 - [P1] Validar VDP9958 e modos adicionais do MSX2+](https://github.com/sandersouza/msxbarepi/issues/82)
- Branch vinculada via `gh issue develop`: `82-auditar-registradores-v9958`

## Regra de branching da trilha

- A branch `82-auditar-registradores-v9958` permanece como umbrella da trilha.
- Cada sub-issue que usar a `#82` como umbrella deve abrir uma branch derivada desta branch umbrella, e nao diretamente de `main`.
- Cada sub-issue deve abrir PR para `82-auditar-registradores-v9958`.
- O merge das sub-issues acontece primeiro na branch umbrella; so ao consolidar a trilha a `#82` abre PR proprio para `main`.

## Atualizacao incremental de 02/04/2026 - transicao `#235 -> #236`

- A sub-issue `#235` foi concluida e mergeada na umbrella `82-auditar-registradores-v9958` via PR `#239`.
- O projeto foi sincronizado com:
  - issue `#235` em `Done`
  - PR `#239` em `Done`
- A proxima subtrilha ativa passa a ser a `#236`, em branch derivada propria:
  - `236-consolidar-backlog-implementavel-gaps-v9958-stock`
- Consequencia pratica na umbrella:
  - a camada de validacao dinamica ja nao e mais o gargalo imediato
  - o proximo trabalho passa a ser consolidar, a partir da matriz canonica e dos achados da `#235`, o backlog implementavel das correcoes que de fato devem nascer como novas issues
  - as duas primeiras derivadas de correcao ja visiveis na trilha passam a ser:
    - `#238` para o bloco critico do boot logo
    - `#240` para a blindagem de registradores invalidos/inertes

## Atualizacao incremental de 03/04/2026 - transicao `#236 -> #238`

- A sub-issue `#236` foi concluida e mergeada na umbrella `82-auditar-registradores-v9958` via PR `#241`.
- O projeto foi sincronizado com:
  - issue `#236` em `Done`
  - PR `#241` em `Done`
- A proxima subtrilha ativa passa a ser a `#238`, em branch derivada propria:
  - `238-fechar-boot-logo-msx2plus-precisao-core-v9958`
- Consequencia pratica na umbrella:
  - a camada de consolidacao do backlog ja nao e mais o gargalo imediato
  - o proximo trabalho passa a ser implementacao real no core do bloco critico do boot logo
  - a `#240` permanece em `Backlog` como trilha separada para `REG-003`

## Atualizacao incremental de 03/04/2026 - primeiro patch tecnico da `#238`

- Na branch derivada `238-fechar-boot-logo-msx2plus-precisao-core-v9958`, entrou o primeiro corte funcional de core para `BL-001` com a base de `BL-002`.
- Diff de referencia usado:
  - `blueMSX/VDP.c:readStatus(), write(), sync()`
  - `blueMSX/V9938.c:vdpCmdExecute()`
- Implementacao local aplicada:
  - `src/fmsx_local/MSX.c` agora expõe `fmsx_vdp_cpu_cycles_now()` como contador monotônico de CPU para o bloco de comandos
  - `src/fmsx_local/V9938.c` deixou de drenar apenas um slice por sync e passou a acumular budget temporal do engine em `LoopVDP()`, status read e CPU mutation
  - `R#46` permanece apenas armando `CE/state`
- Restricao assumida nesta rodada:
  - os `timing[]` do backend local nao foram reescalados para os numeros absolutos do `blueMSX`
  - o patch preserva a vazao media local por scanline e redistribui esse budget no tempo, como corte intermediario seguro para o boot logo
- Build local validada:
  - `BUILD_BID=202604031130-issue238-vdp-time-sync`
  - `BUILD_ID=050B`
  - `BUILD_HASH=26d676a-2b85c3c8dce987f4281c92bfb4249fd6d256de35`
- Proximo gate da umbrella:
  - validar em hardware o boot logo `MSX2+` com a build `050B`
  - se a cadencia melhorar e restarem tarjas/pagina errada, o proximo ataque segue para `REN-004` + recorte central de `REN-007`

## Atualizacao incremental de 03/04/2026 - regressao descartada na `#238`

- O corte `E3EC`, que tentou alinhar de forma literal o pacing do engine ao `blueMSX`, foi descartado.
- Evidencia em hardware:
  - a build `E3EC` passou a travar ainda na tela azul anterior ao boot logo do `MSX2+`
  - isso tirou o corte da categoria "pacing insuficiente" e o moveu para regressao real de boot
- Consequencia pratica na umbrella:
  - a branch `238-fechar-boot-logo-msx2plus-precisao-core-v9958` volta ao baseline temporal seguro da `050B`
  - o proximo ataque tecnico da trilha deixa de ser a escala absoluta do engine e volta a ser o renderer `SCREEN 6/7` page-aware, com odd/even/interlace
- Build local do rollback:
  - `BUILD_BID=202604031435-issue238-drop-abs-timing-regression`
  - `BUILD_ID=CBAC`
  - `BUILD_HASH=6967d68-ef1f9b429bfa4c1a6b3fd11d0ad9a32adf1247dd`

## Atualizacao incremental de 03/04/2026 - primeiro corte de renderer high-res na `#238`

- A validacao em hardware da `CBAC` fechou o gate de seguranca da umbrella:
  - o boot logo voltou a iniciar
  - a branch saiu do estado de regressao de boot
  - restaram cadencia lenta + sintomas visuais de `MASK`/pagina errada
- A trilha ativa da `#238` entrou no primeiro corte de `REN-004`/`REN-007`:
  - `src/fmsx_local/Wide.h` passa a ordenar `SCREEN 6/7` conforme a pagina logica esperada pelo `blueMSX` quando `chrTabBase bit15` e `hScroll512` entram juntos
  - o `left-edge mask` de `SCREEN 6/7` deixa de usar a cor do primeiro pixel scrolado e volta a usar a cor de fundo do modo
- Build local validada:
  - `BUILD_BID=202604031620-issue238-screen67-page-order`
  - `BUILD_ID=70ED`
  - `BUILD_HASH=a621e95-c5907ef75b5ef5ef9c92110459d20bcaa8ebac0f`
- Consequencia pratica na umbrella:
  - a branch `238-fechar-boot-logo-msx2plus-precisao-core-v9958` deixa de insistir em pacing absoluto do engine nesta rodada
  - o proximo veredito da trilha passa a ser visual: se a build `70ED` atacar pagina errada/tarja sem perder o boot seguro da `CBAC`

## Atualizacao incremental de 03/04/2026 - host hi-res reabilitado na `#238`

- O teste de hardware da `70ED` mostrou que o primeiro corte de renderer ainda nao bastava:
  - `MASK` visivel
  - pagina errada/tarja sem melhora perceptivel
  - cadencia igual
  - sem leitura visual de interlace
- A trilha ativa da `#238` recuou um nivel e atacou o host baremetal:
  - `src/fmsx_host_stubs.c` herdava do `libretro` um `hires_mode` default `OFF`
  - sem um frontend `fmsx_hires` no baremetal, isso mantinha o caminho hi-res/interlaced desligado mesmo quando o VDP ativava `InterlaceON`
- Mudanca aplicada na branch derivada:
  - o default do host passa a `HIRES_INTERLACED`
- Build local validada:
  - `BUILD_BID=202604031710-issue238-hires-default-interlaced`
  - `BUILD_ID=C2C2`
  - `BUILD_HASH=d195e4d-5ab3d9413e1422b2cc97922bdec5c5c3dfba61ff`
- Consequencia pratica na umbrella:
  - o proximo round da `#238` deixa de testar apenas `MASK`/pagina
  - passa primeiro a validar se o caminho odd/even/interlaced do host realmente reaparece em hardware

## Atualizacao incremental de 31/03/2026 - decisao da subtrilha `#235`

- Na branch derivada `235-validar-corpus-dinamico-v9958-stock`, `IRQ-001` e `IRQ-003` passaram a ser tratadas como estaveis operacionalmente para a trilha.
- Essa decisao nao troca o veredito global da matriz para `match`; as duas linhas permanecem `partial`.
- Consequencia pratica na umbrella:
  - `IRQ-001` e `IRQ-003` deixam de bloquear a passada dinamica da `#235`
  - o foco remanescente da issue se desloca para `CMD-004` e `REN-002..REN-008`

## Reestruturacao da trilha em 29/03/2026

- A `#82` deixou de ser apenas uma issue de “validar modos” e passou a atuar como epic/umbrella da auditoria stock do `V9958`.
- Foram criadas e vinculadas como sub-issues:
  - `#231` matriz comparativa canônica
  - `#232` auditoria de I/O, registradores e status
  - `#233` gap analysis do command engine e timing
  - `#234` gap analysis do renderer/addressing
  - `#235` validação dinâmica mínima com telemetria existente
  - `#236` consolidação do backlog implementável
- Status no projeto `MSX BarePI`:
  - `#82` -> `In progress`
  - `#231` -> `In progress`
  - `#232..#236` -> `Backlog`

## Bootstrap tecnico concluido nesta rodada

- Criado o documento canônico da trilha em:
  - [`docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`](/Users/sandersouza/Developer/msxbarepi/docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md)
- Criado o diretório canônico de evidências da `#82` em:
  - [`docs/reverse-engineering/issues/issue-82/README.md`](/Users/sandersouza/Developer/msxbarepi/docs/reverse-engineering/issues/issue-82/README.md)
- A matriz já nasceu com:
  - taxonomia `match/partial/missing/conflict/disputed/n/a`
  - regra de precedência entre `blueMSX`, `V9958-Super` e nosso core
  - corpus dinâmico base
  - primeiras linhas seed para:
    - portas `0x98..0x9B`
    - `R#15` / `S#n`
    - `S#1` / `S#2`
    - `CE` / `TR`
    - `R25/R26/R27`
    - renderer/addressing

## Aprofundamento da `#231` em 30/03/2026

- A matriz canônica saiu do estado puramente seed e ganhou a primeira passada estática granular para:
  - `I/O`: `IO-001..IO-005`
  - `Registradores/status`: `REG-001..REG-004`, `STS-001..STS-006`
  - `IRQ/latches`: `IRQ-001..IRQ-003`
  - `Command engine`: `CMD-001..CMD-004`
- O bloco `renderer/addressing` tambem foi quebrado em linhas fechadas por comportamento:
  - `REN-002`: `SCREEN 4`
  - `REN-003`: `SCREEN 5`
  - `REN-004`: `SCREEN 6/7`
  - `REN-005`: `SCREEN 8`
  - `REN-006`: `SCREEN 10/12`
  - `REN-007`: odd/even page derivado de `S#2 bit1`
  - `REN-008`: `R27`/left-edge mask/alinhamento de sprite
- Achados estáticos já fechados:
  - `REG-001`: a largura do seletor fecha em janela de `6 bits` no `V9958 stock`; linha marcada como `match`
  - `REG-003`: `R#24` e `R#28..R#31` aparecem como buracos inválidos/inertes em `blueMSX` + lineage HDL, enquanto o core local ainda persiste o valor cru; linha marcada como `conflict`
  - `IO-004`: `blueMSX` e `V9958-Super` resetam o sequenciador de latch ao ler `0x99`, enquanto o core local preserva `VKey`; linha marcada como `conflict`
  - `CMD-002`: leitura de `S#7` limpa `TR` nas três bases; linha marcada como `match`
  - `CMD-003`: escrita em `R#44/CLR` limpa `TR` nas três bases; linha marcada como `match`
  - `STS-005`: `S#2 bit4` (`BD/BO`) ficou fechado como ownership do `SRCH`; linha marcada como `match`
- `IO-004` nao deve virar correcao imediata:
  - o historico da branch `fix-acurating-timing-vdp9958` ja registra regressao ao forcar reset de `VKey` na leitura de `0x99`
  - a linha fica mantida como `conflict` real da matriz, mas bloqueada para ajuste cego sem repro dinamico novo
- O bloco de registradores tambem foi refinado nesta rodada:
  - `REG-004` deixou de tratar a cauda como “command engine aberto” e passou a registrar que o decode funcional fecha em `R#32..R#46` nas tres bases
  - o detalhe realmente pendente ficou reduzido ao guardrail do auto-incremento indireto de `R#17` quando a caminhada passa de `R#47`
- Nova disputa materializada para a fase dinamica:
  - `STS-006`: `blueMSX` e o core local expõem `S#8/S#9` como valor latched ao fim do `SRCH`
  - `V9958-Super` e `ocm-pld-dev` expõem `SXTMP` live do command core em `S#8/S#9`
  - a linha sobe para `disputed` e passa a exigir evidencia dinamica antes de qualquer ajuste em `MSX.c` / `V9938.c`
- Achados que saíram de `disputed` para `partial` após o desempate com `ocm-pld-dev`:
  - `IRQ-001`: o lineage HDL reforça `S#1 bit0` como latch sticky mesmo sem `IE1`, enquanto o blueMSX segue divergente
  - `IRQ-003`: o lineage HDL mostra `R#23` entrando no contador vertical lógico antes do compare com `R#19`
  - `CMD-004`: o lineage HDL mantém `REG_R25_CMD` e `commandEnable` fora de `SCR5..SCR12`, alinhando o core local a `blueMSX`
- O desempate estrutural de renderer agora ficou suficiente para trocar o foco da descoberta:
  - sair de "quebrar `REN-002` por modo"
  - entrar em validacao dinamica de `REN-002..REN-008`
- O espelho local da `#235` ja foi preparado com o mapeamento minimo de observabilidade por linha:
  - `TM2` para `R25/R26/R27`, `EP`, `I1/F1`
  - `TM3` para `CE/TR`
  - `TM4/TM4B` para `IE1`, alvo/delta de linha e `EO`
  - `TM6B` + UART `VDP EVT` para `R19/R23/R25/R26/R27`, `S1/S2`, `CS/CE`
- Corte de observabilidade consolidado nesta rodada:
  - a telemetria atual cobre bem `S#1`, `S#2`, `R#19`, `R#23`, `R#25`, `R#26`, `R#27`, `CS/CE`, writes em `0x98/0x99` e delta de `0x9B`
  - a telemetria atual **nao** expõe `S#8`, `S#9`, `R#17` nem o alvo efetivo de cada write indireto via `0x9B`
- Destravamento aplicado nesta rodada:
  - o overlay ganhou `TM6D` em `src/kernel.cpp`
  - `TM6D` expõe `R17`, ultimo caminho de `0x9B` (`before > target > after`), ultimo valor escrito em `0x9B` e o conteudo bruto atual de `S#8/S#9`
- Consequencia pratica:
  - `IRQ-001`, `IRQ-003`, `CMD-004` e `REN-002..REN-008` continuam plenamente validaveis com a instrumentacao existente
  - `STS-006` e o residual de `REG-004` deixam de ficar bloqueados por invisibilidade bruta e passam a depender de repro/captura orientada em hardware
- Risco explicitado para a proxima rodada:
  - `REN-008` ainda pode ficar parcialmente bloqueada sem captura visual, porque a telemetria atual nao expõe um contador dedicado do deslocamento final de sprite na saida HDMI
- Bloqueios explicitados para a proxima rodada:
  - `STS-006`: a visibilidade de `S#8/S#9` foi aberta, mas ainda falta um repro dirigido de `SRCH` para desempatar live vs latched
  - residual de `REG-004`: a visibilidade de `R#17/0x9B` foi aberta, mas ainda falta captura orientada em hardware para ver a caminhada indireta no boot logo ou em repro dedicado
- Refinamento estático desta rodada para `REG-004`:
  - `third_party/V9958-Super/docs/revisions.md` registra correções em `2021` para auto-incremento/invalid write acima de `R#47`
  - porém, tanto o snapshot atual de `third_party/V9958-Super/src/vdp/vdp_register.sv` quanto o lineage `ocm-pld-dev` ainda deixam visível o caminho `VDPR17REGNUM <= VDPR17REGNUM + 1` sem guardrail superior explícito no trecho auditado
  - consequência: o texto do `revisions.md` não basta para fechar a linha; `REG-004` permanece `partial` até captura dinâmica
- Destravamento operacional desta rodada:
  - foi criado o pacote `docs/reverse-engineering/issues/issue-82/dynamic-capture-recipes.md`
  - ele fixa repros dirigidos para:
    - `STS-006` com `SRCH` sintético em BASIC usando `TM3 + TM6D`
    - residual de `REG-004` com caminhada direta de `R17/0x9B` em BASIC usando `TM6D`
    - `Knightmare Gold`, boot logo `MSX2+` e `Gradius2E/Nemesis2E` com ordem explícita de captura por linha da matriz
- Destravamento adicional desta rodada:
  - os dois repros sintéticos também passaram a existir como discos MSX bootáveis em `sdcard/disks/DEBUG/`
  - imagens geradas:
    - `V9958_STS006_SRCH.DSK`
    - `V9958_REG004_R17.DSK`
  - cada disco contém `AUTOEXEC.BAS`, o programa alvo (`STS006.BAS` ou `REG004.BAS`) e `README.TXT`
  - os fontes host ficaram em `sdcard/disks/DEBUG/src/`
  - o gerador reprodutível ficou em `scripts/build-v9958-debug-disks.py`
  - validação local fechada:
    - ambos os `.DSK` foram gerados com `720KB`
    - o root das imagens foi verificado localmente para garantir `AUTOEXEC.BAS` + programa alvo
  - observação importante:
    - `make sdcard` / `scripts/prepare-sd.sh` ignoram `sdcard/disks/` por design; esses discos de debug não entram automaticamente no payload de boot
- Ajuste corretivo após o primeiro teste em hardware do disco `STS-006`:
  - o vídeo de campo mostrou o `V9958_STS006_SRCH.DSK` entrando em laço de reboot/reentrada via `AUTOEXEC`
  - o quadro capturado confirma o sintoma de reentrada, mas não permite cravar visualmente se o reset exato ocorre ainda em `SCREEN 5` ou na escrita de `R46=60`
  - para destravar a próxima medição, `STS006.BAS` foi endurecido em duas frentes:
    - agora exige soltar a tecla antes de cada avanço, evitando reentrada automática quando há reset e a tecla continua pressionada
    - o repro foi quebrado em duas fases manuais: fase 1 prepara `SCREEN 5` e os parâmetros; fase 2 escreve `R46=60` para disparar o `SRCH`
  - o gerador `scripts/build-v9958-debug-disks.py` foi sincronizado e o disco `sdcard/disks/DEBUG/V9958_STS006_SRCH.DSK` foi regenerado localmente
  - consequência prática: o próximo teste em hardware já consegue responder se o reset vem antes ou exatamente na fase que escreve `R46=60`
- Ajuste corretivo após o segundo teste em hardware do disco `STS-006`:
  - a execução manual por `RUN "AUTOEXEC.BAS"` deixou de reiniciar, mas a fase 1 ainda parecia “presa” porque o repro entrava em `SCREEN 5` escuro antes da fase 2
  - leitura operacional do vídeo:
    - o fluxo chega na tela de instrução da fase 1
    - após a tecla, o programa entra em `SCREEN 5`
    - o quadro preto sozinho não prova travamento; ele é compatível com espera intencional pela fase 2
  - para eliminar a ambiguidade no próximo teste:
    - o `AUTOEXEC.BAS` do `STS006` passou a ser passivo e agora apenas instrui a rodar `RUN "STS006.BAS"` manualmente
    - a fase 1 passou a usar uma tela visível em `SCREEN 5` com faixas claras no topo, separando espera intencional de “tela preta = travou”
  - o gerador `scripts/build-v9958-debug-disks.py` foi sincronizado novamente e o disco `sdcard/disks/DEBUG/V9958_STS006_SRCH.DSK` foi regenerado localmente
- Ajuste corretivo após o terceiro teste em hardware do disco `STS-006`:
  - o vídeo de campo mostrou travamento em tela ciano com a faixa branca já desenhada
  - isso fecha um corte importante:
    - o fluxo já passou por `SCREEN 5`
    - o fluxo já passou pelos `LINE` visuais da etapa inicial
    - logo, o congelamento acontece depois disso e antes de confirmar o `SRCH`
  - para localizar o ponto exato, `STS006.BAS` foi quebrado de novo:
    - `1A`: `SCREEN 5` + barras
    - `1B`: `PSET` do pixel alvo
    - `1C`: writes em `R32..R35`
    - `1D`: writes em `R44..R45`
    - `1E`: leitura de `S2/S8/S9`
    - `2`: write em `R46=60`
  - consequência prática: o próximo teste não mede mais “fase 1 travou”; ele identifica exatamente qual subetapa congela
- Ajuste corretivo após o quarto teste em hardware do disco `STS-006`:
  - a tela continuou “presa” no ciano com a faixa branca, o que mantém o freeze aparente antes de `1B`
  - porém a revisão do próprio repro mostrou que a instrumentação anterior ainda dependia de prompts/teclas invisíveis dentro do `SCREEN 5`
  - correção aplicada:
    - `STS006.BAS` agora pede tecla apenas uma vez, ainda em `SCREEN 0`
    - depois disso, as subetapas avançam sozinhas por tempo curto e codificam progresso apenas por cor
  - nova leitura operacional da sequência:
    - `ciano`: `SCREEN 5` + barras
    - `magenta`: `PSET`
    - `verde`: `R32..R35`
    - `amarelo`: `R44..R45`
    - `branco`: leitura de `S2/S8/S9`
    - `vermelho`: write em `R46=60`
  - consequência prática: se o próximo teste ainda congelar no ciano, o bloqueio real fica reduzido ao intervalo entre a entrada em `SCREEN 5` e o `PSET`, sem ruído de input invisível
- Ajuste corretivo após o quinto teste em hardware do disco `STS-006`:
  - o vídeo novo finalmente avançou além do ciano e chegou ao amarelo
  - isso fecha mais um corte:
    - `SCREEN 5` + barras: OK
    - `PSET`: OK
    - writes em `R32..R35`: OK
    - writes em `R44..R45`: OK
  - o freeze aparente agora cai para o bloco seguinte, que antes estava agrupado como leitura única de `S2/S8/S9`
  - para localizar o ponto exato, `STS006.BAS` foi refinado mais uma vez:
    - `branco`: leitura de `S2`
    - `cinza`: leitura de `S8`
    - `azul`: leitura de `S9`
    - `vermelho`: write em `R46=60`
  - consequência prática: o próximo teste deve responder exatamente qual leitura de status trava antes de qualquer conclusão sobre o `SRCH` em si
- Ajuste corretivo após o sexto teste em hardware do disco `STS-006`:
  - o campo confirmou explicitamente: continua travando no amarelo
  - inferência operacional imediata:
    - o freeze não está em `SCREEN 5`, `PSET`, `R32..R35` nem `R44..R45`
    - o freeze aparece antes mesmo de completar o primeiro bloco de leitura de status
  - para sair da ambiguidade remanescente, `STS006.BAS` foi temporariamente estreitado:
    - mantém apenas a preparação até o amarelo
    - depois isola o caminho de `S2` em três estados:
      - `branco`: antes de selecionar `S2`
      - `cinza`: depois de selecionar `S2` (`R15=2`)
      - `azul`: depois de ler `S2` (`INP(&H99)`)
  - consequência prática: o próximo teste responde se o travamento acontece ao selecionar `S2` ou ao ler `S2`, sem carregar `S8`, `S9` nem `R46`
- Ajuste corretivo após o sétimo teste em hardware do disco `STS-006`:
  - o campo confirmou travamento no branco
  - inferência operacional imediata:
    - o freeze aparece antes mesmo de completar o primeiro write de seleção de `S2`
    - portanto, o suspeito direto cai no caminho de `OUT &H99,2` e não mais em `INP(&H99)` nem no segundo write de `R15`
  - para fechar o ponto exato, `STS006.BAS` foi refinado mais uma vez:
    - `branco`: antes de qualquer write de seleção
    - `cinza`: depois de `OUT &H99,2`
    - `azul`: depois de `OUT &H99,143`
    - `vermelho`: depois de `INP(&H99)` para `S2`
  - consequência prática: o próximo teste responde se o travamento acontece no primeiro write `0x99`, no segundo write `0x99` ou só na leitura final
- Ajuste corretivo após o oitavo teste em hardware do disco `STS-006`:
  - o campo confirmou novamente travamento no branco
  - inferência operacional consolidada:
    - o freeze acontece antes de completar o primeiro write `OUT &H99,2`
    - isso desloca a suspeita para o tratamento local da porta `0x99` em si, antes de qualquer seleção completa de `R15`
  - a trilha experimental do `STS006` já está no menor recorte útil do lado BASIC:
    - preparação visual até o amarelo
    - `branco`: imediatamente antes do primeiro `OUT &H99,2`
    - `cinza`: imediatamente depois do primeiro `OUT &H99,2`
    - `azul`: imediatamente depois do segundo `OUT &H99,143`
    - `vermelho`: imediatamente depois do `INP(&H99)`
  - consequência prática:
    - não vale mais aprofundar o BASIC antes de inspecionar o caminho local de `OutZ80(0x99, ...)`
    - o próximo passo técnico sai do repro em disco e entra na auditoria do latch `VKey/ALatch` e do commit de registrador/status no core local
- Corte técnico seguinte na trilha `IO-004`:
  - a auditoria local do core confirmou que o primeiro byte em `OutZ80(0x99, ...)` só faz `ALatch=Value` e `VKey=0`
  - como o repro continuou travando antes mesmo de completar esse primeiro write, o sintoma ficou compatível com latch da `0x99` já dessintonizado antes do teste explícito
  - isso colou o achado dinâmico na divergência estática `IO-004`, onde `blueMSX` e `V9958-Super` resetam o sequenciador de latch ao ler `0x99`, enquanto o core local preservava `VKey`
- Ajuste experimental aplicado no core local:
  - em `src/fmsx_local/MSX.c`, leitura de status pela porta `0x99` voltou a realinhar `VKey` para `primeiro byte` em perfis não-`MSX1`
  - o caminho `MSX1/TMS9918` foi preservado no comportamento upstream atual para reduzir risco de regressão fora da trilha `V9958`
  - build local validada:
    - `BUILD_BID=202603311745-issue82-vkey-status-read-reset`
    - `BUILD_ID=E82F`
    - `BUILD_HASH=93807BAF`
  - consequência prática:
    - o próximo teste em hardware deve repetir o disco `V9958_STS006_SRCH.DSK` já estreitado para `S2`
    - se o travamento sair do branco, a evidência dinâmica passa a sustentar `IO-004` como candidato real de correção, não só conflito estático
- Resultado seguinte em hardware com a build `E82F`:
  - o disco estreitado de `STS-006`, reduzido ao caminho `OUT/IN 0x99` para `S2`, passou até o fim e voltou com `OK` no BASIC
  - isso fecha o corte operacional do narrowing:
    - o travamento anterior antes de `OUT &H99,2` deixou de acontecer
    - a evidência dinâmica agora sustenta `IO-004` como causa real plausível do freeze, e não apenas conflito estático de matriz
  - consequência prática:
    - o `V9958_STS006_SRCH.DSK` foi restaurado para o repro completo de `SRCH`
    - o próximo teste em hardware volta ao alvo original da linha `STS-006`: decidir `S#8/S#9` live vs latched com `TM3 + TM6D`
- Resultado seguinte em hardware ainda na build `E82F`:
  - o repro completo de `SRCH` parou no vermelho
  - porém, a inspeção do quadro do próprio vídeo mostrou:
    - `TM3`: `CE=0`
    - `TM6B`: `S2=00`
    - `TM6D`: `S8/S9=00/00`
  - inferência operacional imediata:
    - o recorte já não aponta mais para `SRCH` preso no command engine
    - o suspeito agora é o primeiro polling de `S2/S8/S9` logo após o disparo em `R46=&H60`
  - consequência prática:
    - `STS006.BAS` voltou a ser estreitado temporariamente
    - a nova variante isola, em cores, o primeiro select/read de `S2`, `S8` e `S9` logo após o `SRCH`
- Resultado seguinte em hardware ainda na build `E82F`:
  - o narrowing pós-`R46` parou no amarelo
  - nesse recorte, o amarelo já significa:
    - seleção de `S9` concluída
    - trava remanescente localizada antes de concluir `S9=INP(&H99)`
  - como o caminho local de leitura em `InZ80(0x99)` não tem side effect especial para `S#9`, foi adicionada uma telemetria mínima extra para o próximo round:
    - `TM6B` agora exibe `SR:r/v`, o último status register lido pela porta `0x99` e o valor efetivamente retornado
  - build local validada para esse corte:
    - `BUILD_BID=202603311840-issue82-status9-read-observe`
    - `BUILD_ID=F6A2`
    - `BUILD_HASH=7F2D898F`
  - consequência prática:
    - o próximo teste em hardware mantém o mesmo disco amarelo do `STS006`
    - o dado decisivo passa a ser: o overlay chega a mostrar `SR:9/xx` antes do freeze ou não
- Resultado seguinte em hardware já na build `F6A2`:
  - o novo vídeo voltou a parar no amarelo, mas o quadro útil mostrou `TM6B SR:2/0E`
  - inferência operacional imediata:
    - esse amarelo não é o amarelo tardio de `S9`
    - o disco ainda estava congelando no pre-read residual anterior a `R46=&H60`
  - consequência prática:
    - o repro em disco foi corrigido para remover completamente o bloco de pre-read antes do `SRCH`
    - as cores tardias (`vermelho` em diante) passam a pertencer apenas ao primeiro polling pós-`R46`
    - o próximo teste em hardware mantém a build `F6A2`, mas exige copiar o `.DSK` novo de novo
- Resultado seguinte em hardware ainda na build `F6A2`:
  - o disco já sem pre-read residual passou até o fim e imprimiu:
    - `S2=31`
    - `S8=31`
    - `S9=31`
    - `X=287`
  - inferência operacional imediata:
    - esse retorno não combina com o comportamento esperado do `SearchEngine()` local para `S#9`, que deveria expor `0xFE/0xFF` no bit alto final
    - o resultado passa a cheirar mais a leitura contaminada por interleaving na porta `0x99` do que a valor real do `SRCH`
  - consequência prática:
    - `STS006.BAS` foi estreitado mais uma vez, agora trocando o polling BASIC puro por uma rotina Z80 mínima com `DI/EI`
    - o helper lê `S2`, `S8` e `S9` atomicamente via `0x99` e devolve os bytes por `PEEK`, eliminando a janela onde BIOS/IRQ/BASIC podem dessintonizar o latch
    - o próximo teste em hardware mantém a build `F6A2`, mas precisa do `.DSK` regenerado com a rotina atômica
- Resultado seguinte em hardware ainda na build `F6A2`:
  - a variante com `USR` repetido passou a travar no rosa
  - o quadro útil do overlay mostrou:
    - `TM6B SR:8/00`
    - `TM6D S:00/FE`
  - inferência operacional imediata:
    - o helper atômico já conseguiu ler `S8=00`
    - o backing store local de `S9` já estava em `FE`
    - o ruído remanescente agora parece vir do próprio uso repetido de `USR`, não mais do valor bruto exposto pelo core
  - consequência prática:
    - `STS006.BAS` foi simplificado para um único helper Z80 com `DI/EI` que lê `S2/S8/S9` em um único burst
    - o próximo teste em hardware mantém a build `F6A2`, mas requer o `.DSK` regenerado com esse helper único
- Resultado seguinte em hardware ainda na build `F6A2`:
  - o vídeo seguinte parou numa cor descrita em campo como `branco gelo`
  - a inspeção do quadro útil mostra que esse tom pertence mesmo ao `branco` da variante de helper único, isto é, ao estado logo após o burst atômico `S2/S8/S9`
  - consequência prática:
    - o repro em disco deixou de usar o helper único
    - `STS006.BAS` passou a separar o bloco tardio em três passos:
      - helper 1: burst atômico `S2/S8`
      - helper 2: `select S9`
      - helper 3: `read S9`
    - as cores tardias também foram trocadas para remover o par ambíguo `cinza/branco`; a sequência útil agora fica `vermelho -> azul -> rosa -> amarelo`
    - o próximo teste em hardware mantém a build `F6A2` e depende só do `.DSK` regenerado
- Resultado seguinte em hardware ainda na build `F6A2`:
  - o vídeo seguinte parou no rosa já com a variante `split S2 select/read`
  - o quadro útil do overlay mostrou:
    - `TM3 CE=0`
    - `TM6B SR:8/00`
    - `TM6D S:00/00`
  - inferência operacional imediata:
    - o `SRCH` já terminou antes do freeze
    - o fluxo já saiu de `S2` e entrou no helper de `S8`
    - como o disco ainda não segurava atraso entre as cores tardias, os `pulos rápidos` vistos em campo são coerentes com a ausência desse `delay`, não necessariamente com múltiplos freezes distintos
    - o resíduo agora caiu no helper de `S8`, antes de o programa conseguir pintar a cor seguinte
  - consequência prática:
    - `STS006.BAS` foi estreitado outra vez
    - o helper de `S8` foi quebrado em dois passos separados:
      - helper 3: `select S8`
      - helper 4: `read S8`
    - o restante do bloco tardio continua separado em:
      - helper 1: `select S2`
      - helper 2: `read S2`
      - helper 5: `select S9`
      - helper 6: `read S9`
    - cada marcador tardio agora também segura um `delay` curto antes do passo seguinte, para o próximo vídeo não perder a transição humana
    - a sequência útil passa a ser:
      - `vermelho`: depois de `R46=&H60`
      - `azul`: depois de `select S2`
      - `rosa`: depois de `read S2`
      - `amarelo`: depois de `select S8`
      - `laranja`: depois de `read S8`
      - `cinza`: depois de `select S9`
      - `branco`: depois de `read S9`
- Pivô de estratégia ainda em 31/03/2026:
  - o narrowing por BASIC já cumpriu o papel de sair do "freeze genérico" para um corte concreto no caminho da `0x99`, mas o ganho marginal dessa linha caiu demais
  - a partir daqui, a trilha deixa de depender principalmente de novas cores e passa a depender de telemetria direta do core local sobre micro-passos da `0x99`
  - a instrumentação nova adicionada ao overlay:
    - `TM6B 99:o/k/r/a/v`
    - `o` = último micro-op da `0x99` (`R`, `L`, `W`, `S`, `A`)
    - `k` = `VKey` após esse micro-op
    - `r` = `R#15` após esse micro-op
    - `a` = `ALatch` atual
    - `v` = byte associado ao micro-op
  - build local validada para esse corte:
    - `BUILD_BID=202603311955-issue82-port99-microop`
    - `BUILD_ID=B6CB`
    - `BUILD_HASH=98891cf-2e6fdccb7cdbd1682e1fe031365f23616ee02734`
  - consequência prática:
    - o próximo vídeo útil já não precisa de mais um estreitamento cego do BASIC
    - ele precisa mostrar `TM6B` com `99:` durante o freeze para dizer exatamente se o último passo foi `select S2`, `read S2`, `select S8`, `read S8`, `select S9` ou `read S9`
- Ajuste seguinte ainda em 31/03/2026, agora guiado pelo diff direto com `blueMSX`:
  - a comparação entre [VDP.c](/Users/sandersouza/Developer/msxbarepi/third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c) (`readStatus()` / `writeLatch()`) e [MSX.c](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/MSX.c) (`InZ80()` / `OutZ80()`) confirmou que o reset do latch já estava alinhado semanticamente, mas o caminho local de `0x99` ainda não tinha nenhum equivalente ao `sync(vdp, now)` que o `blueMSX` faz antes de expor `S#n`
  - como nossa arquitetura line-based não oferece um equivalente direto ao `sync()` inteiro do `blueMSX`, foi aplicado o análogo seguro mais próximo:
    - novo helper em [V9938.c](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/V9938.c): `fmsx_vdp_sync_before_status_read()`
    - ele descarrega um slice pendente do command engine exatamente como `VDPRead()` / `VDPWrite()` já faz
    - [MSX.c](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/MSX.c) agora chama esse helper no `case 0x99` para perfis `V9938/V9958`, antes de calcular `S#1/S#2` e ler `VDPStatus[R#15]`
  - build local validada para esse corte:
    - `BUILD_BID=202603312030-issue82-port99-readstatus-sync`
    - `BUILD_ID=4A34`
    - `BUILD_HASH=98891cf-b06a5dd80e0ee69695cd3b5b978948791d7052b7`
  - consequência prática:
    - o próximo teste em hardware deve repetir a build nova com o mesmo `STS006`
    - o dado decisivo continua sendo `TM6B 99:` no freeze, agora já sob um read-path mais próximo do `blueMSX`
- Diretriz estratégica consolidada ainda em 31/03/2026:
  - a trilha oficial do projeto para `MSX2+` / `V9958` deixa explícito que o backend local deve convergir incrementalmente para o comportamento do `blueMSX`, porque uma migração completa de backend continua inviável nesta fase
  - isso vale para todo o backend derivado de `fMSX`, não apenas para `VDP`: `Z80`, core `MSX`, dispositivos, audio, cartuchos, mapeadores e portas de I/O entram na mesma regra de convergência
  - o `blueMSX` passa a ser a referência semântica primária do comportamento-alvo; `ocm-pld-dev`, `V9958-Super` e outras referências em `third_party/` continuam como fontes de validação cruzada e desempate
  - consequência prática para a `#82`:
    - antes de abrir mais narrowing ad hoc, a ordem preferencial passa a ser `diff direto do backend local contra blueMSX -> validação cruzada com RTL/VHDL -> ajuste local adaptado ao baremetal -> teste em hardware`
- Ajuste seguinte ainda em 31/03/2026, guiado pelo frame da build `4A34`:
  - o print de campo da `4A34` mostrou `TM6B SR:2/1C 99:R/1/2/02/1C` com `CE=0`
  - isso fecha duas coisas:
    - o ajuste inspirado no `blueMSX` mexeu no valor efetivamente retornado por `S#2` (`1C`, não mais `3E`)
    - o travamento remanescente continua depois de um `read S2` já concluído, então o gargalo não está mais no micro-op da `0x99` em si
  - a ambiguidade que sobrou passou a ser a origem desse `99:R`:
    - se veio do helper `USR`, o resíduo mora no retorno ao BASIC / caminho de CPU logo após o `IN`
    - se veio de BIOS/runtime, a trilha ainda não chegou onde o repro parecia indicar
  - para fechar isso sem abrir outro ciclo de BASIC, `TM6B` agora troca o `PC` antigo do trace por `P9`, o `PC` do chamador no último micro-passo concluído da porta `0x99`
  - build local validada para esse corte:
    - `BUILD_BID=202603312145-issue82-port99-caller-pc`
    - `BUILD_ID=3360`
    - `BUILD_HASH=98891cf-7a6da3c038b872fe3143f50c434fec73ebbe958c`
  - consequência prática:
    - o próximo print útil deve mostrar `TM6B P9:` junto do `99:`
    - se `P9` cair em `D0xx`, o último `read S2` veio do helper do disco e o próximo ataque sai do VDP e entra no retorno da rotina Z80/BASIC
    - se `P9` cair em ROM/BIOS, a trilha ainda tem interferência externa no caminho da `0x99`
- Ajuste seguinte ainda em 31/03/2026, fechado pelo print da build `3360`:
  - o print útil mostrou `TM6B P9:148E SR:2/1C 99:R/1/2/02/1C`
  - `148E` cai em ROM/BASIC, não no helper temporário em `D000h`
  - isso fecha a ambiguidade:
    - o repro baseado em `USR` continua contaminado pelo interpretador no caminho crítico da `0x99`
    - portanto, o `TM6B 99:` desse disco antigo já não pode mais ser lido como “último passo do helper”
  - consequência prática imediata:
    - o disco `STS006` foi refeito para tirar o `USR` do caminho crítico
    - `STS006.BAS` agora só prepara `SCREEN 5`, o pixel alvo e `R32..R45`, pinta a tela de vermelho e chama `BLOAD "STS006.BIN",R`
    - `STS006.BIN` roda como runner Z80 único em `D000h`, escreve `R46=&H60`, faz o polling de `S2` até `CE=0` e captura em `D100..D10B`:
      - contador de loops com `CE=1`
      - `first-CE S2/S8/S9`
      - `last-CE S8/S9`
      - `final S2/S8/S9`
      - flags de mudança em `S8/S9` enquanto `CE=1`
  - não houve nova build de kernel neste corte:
    - o próximo teste continua na build `3360`
    - o que muda é apenas o `.DSK` regenerado
- Ajuste seguinte ainda em 31/03/2026, fechado pela primeira execução do runner binário:
  - o `STS006` novo voltou com `CE LOOPS=0`, `FLAGS=0`, `FINAL S2=60`, `FINAL S8=0`, `FINAL S9=254`, `FINAL X=0`
  - esse resultado já não aponta para freeze na `0x99`; ele fecha uma falha semântica do próprio repro
  - a comparação direta contra o core local e o `blueMSX` mostrou o mesmo ponto:
    - em `SRCH`, `ARG bit1` (`R45 & 0x02`) seleciona a variante `!=`
    - portanto, o `R45=2` antigo fazia o comando encerrar imediatamente no primeiro pixel de fundo em `X=0`
  - consequência prática imediata:
    - o disco `STS006` foi ajustado sem mudar o runner `STS006.BIN`
    - `STS006.BAS` agora prepara `SCREEN 7`, coloca o pixel-alvo em `X=511` e arma `R45=0` para forçar uma busca longa por igualdade (`==`)
    - esse repro continua removendo `USR/BASIC` do caminho crítico da `0x99`, mas passa a dar uma chance real de observar `CE=1` e mudanças em `S8/S9`
  - não houve nova build de kernel neste corte:
    - o próximo teste continua na build `3360`
    - o que muda é apenas o `.DSK` regenerado
- Ajuste seguinte ainda em 31/03/2026, fechado pelo round `SCREEN 7 + X=511 + ARG=0`:
  - o `STS006` ainda voltou com `CE LOOPS=0`, `FLAGS=0` e `FINAL X=0`
  - esse retorno expôs outro defeito do próprio repro:
    - os marcadores visuais em BASIC ainda preenchiam a tela inteira de novo depois do `PSET`
    - portanto, o padrão de teste era destruído antes do `SRCH`, contaminando a leitura de `X`
  - consequência prática imediata:
    - o BASIC deixou de escrever `R32..R45`
    - o BASIC deixou de usar fills visuais destrutivos depois de pintar o padrão
    - `STS006.BIN` agora espera `CE=0`, reprograma `R32..R45` e só então dispara `R46=&H60`
  - não houve nova build de kernel neste corte:
    - o próximo teste continua na build `3360`
    - o que muda é apenas o `.DSK` regenerado
- Ajuste seguinte ainda em 31/03/2026, fechado pelo runner binário já sem ruído de setup:
  - o `STS006` enfim voltou com um `SRCH` válido:
    - `CE LOOPS=1`
    - `FIRST CE S2/S8/S9 = FF/FF/FF`
    - `LAST CE S8/S9 = FF/FF`
    - `FINAL S2/S8/S9 = 14/FF/FF`
    - `FINAL X = 511`
  - o overlay no mesmo quadro também já mostrava `TM6D S:FF/FF`
  - leitura prática:
    - o repro agora está correto e já confirma o hit no alvo `X=511`
    - durante a janela observada com `CE=1`, `S8/S9` não mostraram caminhada intermediária visível
    - porém a janela útil ainda ficou curta demais (`CE LOOPS=1`) para fechar sozinha o desempate `live vs latched`
    - o `FLAGS=129` bruto desse runner deve ser lido como `F0=1` e `F1/F2=0`; o bit alto `0x80` ainda é marcador interno do primeiro sample
  - consequência prática imediata:
    - o próximo ataque saiu do disco e voltou ao core
    - `src/fmsx_local/V9938.c` foi alinhado ao modelo do `blueMSX`: o start de comando por `R46` agora apenas arma `CE/state` e não consome mais um slice imediatamente
    - isso busca abrir uma janela mais fiel de `CE=1` para o próximo round do `STS006`
  - build local validada para esse corte:
    - `BUILD_BID=202603312330-issue82-vdpdraw-deferred-start`
    - `BUILD_ID=FFC6`
    - `BUILD_HASH=98891cf-98891cfce0e7f23f86a7269f492eff639b106655`
- Ajuste seguinte ainda em 31/03/2026, fechado pelo teste em hardware da build `FFC6`:
  - o mesmo `STS006` repetido com o start de comando alinhado ao `blueMSX` voltou com:
    - `CE LOOPS=1`
    - `FIRST CE S2/S8/S9 = 00/00/00`
    - `LAST CE S8/S9 = 00/00`
    - `FINAL S2/S8/S9 = 14/FF/FF`
    - `FINAL X = 511`
  - o quadro do overlay no mesmo instante ainda mostrava `TM6D S:FF/FF`
  - leitura prática:
    - a mudança em `VDPDraw()` não aumentou a janela de `CE=1`
    - mas ela removeu o último ruído importante da coleta: agora ficou explícito que, durante `CE=1`, `S8/S9` ficaram em `00/00` e só saltaram para `FF/FF` depois do fim do comando
    - isso fecha o comportamento do nosso core do lado `blueMSX`/`latched-on-complete`, e enfraquece de vez o modelo `live SXTMP` para o alvo de implementação desta branch
    - a linha global da matriz continua `disputed` apenas porque a referência `V9958-Super` segue divergindo, não porque o comportamento do core local ainda esteja ambíguo
  - consequência prática imediata:
    - `STS-006` fica operacionalmente fechado para a convergência com `blueMSX`
    - o próximo teste útil da issue volta a ser o residual de `REG-004` com `V9958_REG004_R17.DSK`
- Ajuste seguinte ainda em 31/03/2026, fechado pelo teste em hardware de `REG004` na build `FFC6`:
  - o quadro final mostrou em `TM6D`:
    - `R17:34`
    - `9B:33>33>34`
    - `V:A5`
  - leitura prática:
    - o write indireto via `0x9B` não travou em `2Fh`
    - o core local continuou incrementando `R#17` acima de `R#47`, chegando a `34h` após seis writes partindo de `2Eh`
    - isso converge com o comportamento de referência do `blueMSX`, cujo `writeRegister()` também faz `vdpRegs[17] = (reg + 1) & 0x3f` sem clamp em `2Fh`
    - a janela funcional do command engine continua fechando em `R#32..R#46`; acima disso, o efeito prático observado é “incrementa e grava shadow/inerte”, não “clampa”
  - consequência prática imediata:
    - o residual local de `REG-004` fica operacionalmente fechado do lado `blueMSX`
    - a linha global da matriz continua `partial` apenas porque o snapshot/lineage HDL ainda não fecha esse detalhe com a mesma nitidez
- Comentarios de progresso ja publicados na issue remota `#231`; o proximo comentario remoto deve registrar esse corte do renderer e o bloqueio conhecido de `IO-004`.
- O proximo comentario remoto da `#231` tambem deve registrar:
  - `REG-001` como `match`
  - `REG-003` como `conflict`
  - `STS-005` como `match`
  - `STS-006` como `disputed`

## Estado da camada de descoberta

- `#231`: bootstrap inicial concluído e primeira passada estática granular já incorporada à matriz, incluindo o recorte do renderer por modo; issue segue em `In progress`
- Desbloqueio operacional para a próxima rodada de hardware:
  - o menu de `Scale` ganhou o estado `NONE`, abaixo do antigo `1x`
  - `Scale [NONE]` permanece como degrau extra abaixo de `1x`, preserva `1x..5x`, e a geometria efetiva do viewport usa `2.0x`
  - a mudança foi feita para viabilizar as capturas da `#235` sem perder a build de observabilidade já preparada
  - o overlay `TXTDBG` foi compactado para usar a largura horizontal completa e consolidar indicadores do mesmo grupo na mesma linha sempre que couberem
  - no layout atual, o bloco inteiro fecha nas linhas `1..9`, com `TXTDBG` em `1`, `AUD1/SYS/AC1` em `2..4` e as linhas `TM` agrupadas por afinidade em `5..9`
  - ao ligar o overlay com `F11`, o runtime agora força automaticamente `Scale [NONE]`
  - build local validada para esse corte:
    - `BUILD_BID=202603310045-issue82-txtdbg-15lines`
    - `BUILD_ID=24E7`
    - `BUILD_HASH=98891cf-98891cfce0e7f23f86a7269f492eff639b106655`
    - observação: a build saiu de worktree local com mudanças não commitadas da branch `82`
- Próximo passo objetivo na branch atual:
  1. executar em hardware os discos `sdcard/disks/DEBUG/V9958_STS006_SRCH.DSK` e `sdcard/disks/DEBUG/V9958_REG004_R17.DSK`
  2. fechar primeiro `STS-006` e o residual de `REG-004`, porque agora já existe repro sintético direto para ambos via `AUTOEXEC.BAS`
  3. em seguida confirmar dinamicamente `IRQ-001`, `IRQ-003`, `CMD-004` e `REN-002..REN-008`
  4. se `REN-008` continuar inconclusiva, registrar bloqueio explícito por falta de observabilidade direta de sprite em vez de abrir telemetria nova cedo demais
  5. só então promover a `#232` como próxima issue ativa

## Primeiro achado desta rodada

- O repro citado inicialmente, `POKE -1,170`, nao escreve em `R#1` do V9958.
- Em MSX BASIC, `POKE -1,...` equivale a `POKE &HFFFF,...`.
- No core local, `0xFFFF` e tratado explicitamente como registrador seletor de subslot:
  - leitura/escrita em [`src/fmsx_local/MSX.c`](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/MSX.c)
  - `RdZ80(0xFFFF)` retorna o registrador de subslot do primario expandido da pagina 3
  - `WrZ80(0xFFFF, V)` chama `SSlot(V)`
- No perfil `MSX2+` atual:
  - `slot 3` e expandido
  - RAM mapper fica em `3-0`
  - `DISK.ROM` fica em `3-2`
- Portanto, `0xAA` (`170`) seleciona subslot `2` para os quatro blocos de 16KB do primario expandido alvo. Isso pode remover a RAM da pagina 3 e derrubar a maquina, o que explica o reboot observado.

## Implicacao pratica

- O primeiro ajuste desta trilha nao deve partir desse repro como se fosse bug de `R#1`.
- Se o objetivo for validar `R#1` de verdade, o repro precisa usar:
  - write direto no porto VDP (`0x99`) para registrador `1`; ou
  - rotina/BIOS que atualize o shadow de `R#1` e comite no VDP.

## Tentativa descartada nesta rodada

- Foi testado um alias de compatibilidade no `MSX2+` que espelhava a RAM do mapper em `slot 3-2` nas paginas `0`, `2` e `3`, preservando `DISK.ROM` apenas em `4000h-7FFFh`.
- A hipotese nao funcionou no hardware e foi revertida.
- O core local voltou ao baseline anterior desta branch, mantendo apenas o diagnostico de que o repro atua sobre `0xFFFF` e nao sobre `R#1`.

## Enderecos de referencia levantados

- `R#1` shadow BIOS:
  - `REG1SAV = 0xF3E0` em `third_party/ocm-pld-dev/.../include/msx.asm`
- `0xFFFF`:
  - registrador de subslot no modelo MSX, nao shadow de `R#1`
- Sequencia correta para escrever `R#1` diretamente:
  - valor em `0x99`
  - depois `0x80 | 1` em `0x99`

## Referencias tecnicas usadas

- [`src/fmsx_local/MSX.c`](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/MSX.c)
  - `RdZ80()` / `WrZ80()` / `SSlot()` / `IsExpandedPrimarySlot()` / `RAMMapperSubSlot()` / `DiskROMSubSlot()`
- [`docs/milestones/m11/82-validar-vdp9958-modos-msx2plus.md`](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/82-validar-vdp9958-modos-msx2plus.md)
  - historico do ajuste anterior de fidelidade para `0xFFFF`
- `third_party/ocm-pld-dev/esemsx3/src/peripheral/iplrom3_work/asm_iplrom/compile/include/msx.asm`
  - definicao de `REG1SAV = 0xF3E0`

## Estado da iteracao

- Branch criada e vinculada a `#82`: OK
- Sub-issues `#231..#236` criadas e vinculadas a `#82`: OK
- Matriz canônica e diretório de evidências da `#82`: OK
- Build local do alias descartado: OK (`make -j4 DEBUG=1 BUILD_BID=202603291835-issue82-poke-ffff-compat`)
- `BUILD_ID` do alias descartado: `CEAC`
- Build local do baseline restaurado: OK (`make -j4 DEBUG=1 BUILD_BID=202603291800-issue82-revert-poke-ffff-compat`)
- `BUILD_ID` do baseline restaurado: `B2E2`
- Artefatos:
  - [`artifacts/kernel8-issue82.img`](/Users/sandersouza/Developer/msxbarepi/artifacts/kernel8-issue82.img)
  - [`artifacts/kernel8-default.img`](/Users/sandersouza/Developer/msxbarepi/artifacts/kernel8-default.img)
- Mudancas de codigo no core: tentativa revertida; core restaurado ao baseline anterior da branch
- Validacao em hardware do alias: falhou
- Validacao em hardware do baseline restaurado: pendente
- Build local da telemetria `TM6D`: OK (`make -j4 DEBUG=1 BUILD_BID=202603301455-issue82-vdp-observability`)
- `BUILD_ID` da telemetria `TM6D`: `16D6`
- `BUILD_HASH` da telemetria `TM6D`: `98891cfc-9e23387dc2ea0bf0542319be174b90aa3febb6af`
- Escopo dessa build:
  - nova linha `TM6D` no overlay
  - snapshot de `R17`, `S#8`, `S#9` e ultimo write indireto em `0x9B`
- Validacao em hardware da telemetria `TM6D`: pendente
- Discos de repro gerados localmente: OK
  - `sdcard/disks/DEBUG/V9958_STS006_SRCH.DSK`
  - `sdcard/disks/DEBUG/V9958_REG004_R17.DSK`
  - conteúdo validado no root: `AUTOEXEC.BAS`, programa alvo, `README.TXT`

## Proximo passo sugerido

1. Rodar em hardware `V9958_STS006_SRCH.DSK` e `V9958_REG004_R17.DSK` com `F11` ativo para capturar `TM3/TM6D`.
2. Confirmar dinamicamente `IRQ-001`, `IRQ-003` e `CMD-004` agora que o desempate estático ganhou suporte do `ocm-pld-dev`.
3. Confirmar dinamicamente `REN-002..REN-008`, com foco em `SCREEN 4`, odd/even page, left-edge mask e alinhamento de sprite sob `R27`.
4. Se `REN-008` continuar inconclusiva, registrar bloqueio explícito por falta de observabilidade direta de sprite em vez de abrir telemetria nova cedo demais.
5. Só então promover a `#232` como próxima issue de descoberta estática detalhada.

## Gestao paralela registrada nesta branch

- Em 30/03/2026, foi aberta a issue remota `#237` na milestone `#18 / m18` (`Feature requests / Requisição de Features`) para evoluir o UX de `Save State` / `Load State`.
- Escopo registrado na `#237`:
  - slots `0-9` para save
  - tela de load no estilo `file browser`
  - caixa `INFO` com preview/print, data/hora e ROM/DSK carregados
- O espelho local correspondente foi criado em `docs/milestones/m18/`.
- A issue entrou no projeto `MSX BarePI` com status `Backlog`.
- Nenhuma branch de implementacao foi aberta para essa feature nesta rodada.

## Atualizacao incremental de 03/04/2026 - trilha filha `#238`

- Na branch filha `238-fechar-boot-logo-msx2plus-precisao-core-v9958`, o round de hardware da build `C2C2` confirmou que o ajuste de host `HIRES_INTERLACED` nao moveu a leitura visual do boot logo.
- O foco tecnico dessa frente voltou ao renderer `SCREEN 6` wide em `src/fmsx_local/Wide.h`, ainda usando `blueMSX/Common.h` como referencia semantica primaria.
- Build local preparada na trilha filha:
  - `BUILD_BID=202604031830-issue238-screen6-edge-mask`
  - `BUILD_ID=E520`
  - `BUILD_HASH=2bcfd13-da6cb9d57eebc4c7ded4856f93b0d0f840a5038a`
- Escopo do corte:
  - remocao da heuristica local de reorder de paginas baseada em `ChrTab`
  - borda lateral alternada para `SCREEN 6` wide
  - `left-edge mask` fisico de `16` pixels no modo wide
- O reteste em hardware da `E520` nao moveu o quadro visivel do boot logo.
- A trilha filha `#238` voltou entao ao pacing do command engine em `src/fmsx_local/V9938.c`, mas sem reabrir o experimento absoluto descartado:
  - `BUILD_BID=202604031930-issue238-screen6-ce-uplift`
  - `BUILD_ID=2865`
  - `BUILD_HASH=13c4905-e5047616bb1edd3052f3b0e3415715ff51ed12e1`
  - corte focado em elevar `VdpOpsQuantum()` apenas com `CE=1`, com uplift extra para `SCREEN 6/7/8`
- O round seguinte em hardware da `2865` confirmou que esse corte nao conversava com o sintoma visivel do boot logo:
  - quadro ruim no mesmo ponto
  - cadencia sem mudanca perceptivel
  - `MASK` sem mudanca
  - frames uteis do overlay ainda com `CE=0`
- A `#238` saiu entao do pacing do command engine e abriu um novo corte de scanout parcial em `SCREEN 6/7`, inspirado no renderer incremental `X..X2` do `blueMSX/Common.h`:
  - `src/fmsx_local/MSX.c` deixa de curto-circuitar o sync antes de write fora da janela do `KMG`
  - `src/fmsx_local/Wide.h` ganha `RefreshLine6WideRange()` e `RefreshLine7WideRange()`
  - `BUILD_BID=202604031620-issue238-screen6-partial-scanout`
  - `BUILD_ID=894F`
  - `BUILD_HASH=8a4947c-00efee1ad301422d4ffa66201b3e2a3858304be4`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O round seguinte em hardware da `894F` confirmou que o scanout parcial ainda nao movia o sintoma do boot logo:
  - `MASK` sem mudanca
  - tarja/pagina errada no mesmo ponto
  - cadencia igual
  - sem leitura pratica de interlace
- A trilha filha `#238` subiu entao para latch por scanline do estado de display em `SCREEN 6/7`, ainda guiada por `blueMSX/Common.h`:
  - `src/fmsx_local/MSX.c` agora congela por linha `ChrTab`, `ChrTabM`, `R#2`, `R#25`, `R#26`, `R#27`, `odd-page` e `vscroll`
  - `src/fmsx_local/Wide.h` passa a consumir esse snapshot em todos os calculos wide de source/page/scroll/mask
- A mesma rodada tambem fechou um gargalo local de build:
  - `Makefile` e `src/Makefile` passam a propagar `PREFIX64=$(CROSS)` para `src` e para os subbuilds do `Circle`
  - a branch ganhou `src/math.h` + `src/fmsx_math_shim.c` para manter a build full-feature com a toolchain Homebrew `aarch64-elf`, que e `--without-headers`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041430-issue238-screen6-line-latched-state`
  - `BUILD_ID=4FB0`
  - `BUILD_HASH=e298d4e-d03d3116b86dbc2bc49478da1ff60c3e769581b7`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O round seguinte em hardware da `4FB0` confirmou ausencia total de efeito visual no boot logo do `MSX2+`:
  - `MASK` sem mudanca
  - tarja/pagina errada no mesmo ponto
  - cadencia igual
  - sem leitura pratica de interlace
- A leitura local do video em frames confirmou o mesmo estado do overlay nos quadros uteis:
  - `SM:06`
  - `R2:3F`
  - `R25:03`
  - `EP:1`
  - `CE:0`
  - `TR:0`
- Consequencia pratica na umbrella:
  - o latch por scanline da `#238` deixou de ser o gargalo dominante
  - o proximo corte da trilha filha passou a atacar o diff restante contra `blueMSX/Common.h` no path line512 de `SCREEN 6/7`
- Novo corte preparado na branch derivada:
  - `src/fmsx_local/Wide.h` agora dobra coarse scroll e fine scroll no scanout wide de `SCREEN 6/7`
  - o `left-edge mask` de `SCREEN 7` wide tambem passa a cobrir `16` pixels fisicos
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041620-issue238-screen67-physical-scroll`
  - `BUILD_ID=C079`
  - `BUILD_HASH=16da695-9edab52930a87d5a297e94ad32752c850250b185`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O round seguinte em hardware da `C079` trouxe a primeira mudanca estrutural clara no boot logo:
  - o logo passou a surgir corretamente dos dois lados da tela
  - as duas metades caminham em direcao ao centro, em vez de compor paginas horizontais evidentemente erradas
- Leitura consolidada na umbrella:
  - o diff de `SCREEN 6/7` contra o `blueMSX` ja fechou operacionalmente a parte horizontal do `page split`
  - o gargalo residual da trilha filha deixou de ser `R#26/R#27` e ficou concentrado em:
    - `left-edge mask`
    - odd/even
    - `R#9 interlace`
    - cadencia global do logo
- Estado observado no video/overlay:
  - `SM:06`
  - `R2:3F`
  - `R25:03`
  - `EP:1`
  - `CE:0`
  - `TR:0`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- A `C079` fechou o split horizontal do logo, entao a trilha filha subiu para o bloco conjunto `R#25` + odd/even + `R#9 interlace`.
- Diff novo aplicado contra a base local:
  - `src/fmsx_local/MSX.c` agora congela por scanline tambem `R#9 bit2` (`FlipEvenOdd`) e `R#9 bit3` (`InterlaceON`)
  - `src/fmsx_local/Common.h` e `src/fmsx_local/Wide.h` passam a compor a apresentacao hi-res/interlaced com esse snapshot por linha, em vez de usar `OddPage`/`InterlacedMode` ao vivo
  - o path narrow `V9958BitmapLinePtr()` tambem passa a usar odd/even latched por linha
- Leitura consolidada na umbrella:
  - o renderer wide ja estava correto na unidade horizontal
  - o residual agora foi reduzido ao contrato de apresentacao do frame/scanline, ainda mais proximo do modelo do `blueMSX`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041840-issue238-line-latched-interlace`
  - `BUILD_ID=3DE2`
  - `BUILD_HASH=ccca9df-15dc573ed2165b0105f68bcf50530bf6d2140fcb`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O round seguinte em hardware da `3DE2` nao moveu o quadro observavel do boot logo.
- Consequencia pratica na umbrella:
  - o bloco horizontal continua fechado pela `C079`
  - o corte de apresentacao hi-res da `3DE2` nao resolveu o residual
  - a trilha filha deixou de insistir em patch visual cego e pivotou para telemetria UART de frame
- Novo corte aplicado na branch derivada:
  - `src/fmsx_host_stubs.c` agora loga `BL238` nos primeiros `96` frames publicados do boot logo em `SM:06`
  - cada linha registra `F/VF/LG/W/H/R9/S2/HI/IL/EO/R25/R26/R27`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041950-issue238-bootlogo-uart-frame-trace`
  - `BUILD_ID=9A2C`
  - `BUILD_HASH=115717d-18b3d09b5e160bb49b3cc8d4ac93a34052592e1c`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- A primeira coleta UART da `9A2C` trouxe so o startup do Pi e nenhum `BL238`.
- Causa raiz consolidada na umbrella:
  - o trace estava limitado aos primeiros `96` frames globais do host
  - o boot logo entra fora dessa janela
- Correcao aplicada na branch derivada:
  - `src/fmsx_host_stubs.c` agora conta os primeiros `96` frames do proprio boot logo (`SM:06` + `R25=03`) e reinicia quando o logo sai de foco
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041010-issue238-bootlogo-uart-frame-window`
  - `BUILD_ID=3271`
  - `BUILD_HASH=115717d-7d05a4e7374301c55f179bac7d204db268ebac16`
