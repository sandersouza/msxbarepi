# Desafios da Milestone

Registro de desafios enfrentados por issue, decisao adotada e status da solucao.

## Status
- `Resolvido` = solucao aplicada e validada
- `Parcial` = mitigado, requer iteracao
- `Futuro` = movido para issue/milestone futura

## Itens por issue

### #214 - gap analysis SCC/SCC+ com `Space Manbow 2`
- Desafio: separar o que e limitacao do core SCC atual do que e efeito colateral de mapper/janela/timing no caminho do sample `START!`.
- Solucao adotada: comparar o core local com `openMSX` e `blueMSX`, cruzar com os disassemblies locais do `Space Manbow 2` e fechar uma matriz objetiva de gaps antes de alterar o runtime.
- Status: Resolvido
- Referencia: [214-gap-analysis-scc-sccplus-space-manbow2.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m24/214-gap-analysis-scc-sccplus-space-manbow2.md)

### #215 - core SCC/SCC+ compativel para sample streaming
- Desafio: modernizar o core local de SCC/SCC+ sem reabrir o stall do `SMANBOW2` nem introduzir flood de debug ou regressao de audio.
- Solucao adotada: portar primeiro a semantica do chip ausente no `src/fmsx_local_scc.c` com base em `openMSX`/`blueMSX` (`deformation`, `(period + 1)`, mute `<=8` e reset do contador via write de frequencia), preservando intacto o mapper `Manbow2`; na equalizacao, reduzir o SCC para o patamar de PSG/FM-PAC e mover o voicing para low-shelves suaves por bus (`PSG`, `FM-PAC`, `SCC`) em uma copia local de `Sound.c`.
- Status: Parcial
- Referencia: [215-implementar-core-scc-sccplus-sample-streaming-space-manbow2.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m24/215-implementar-core-scc-sccplus-sample-streaming-space-manbow2.md)

### #216 - cartucho `Konami SCC+` com modo `DUAL` no menu/runtime
- Desafio: substituir o boolean legado de `Konami SCC` por um modelo real de cartucho/configuracao, sem conflitar com a carga normal de ROMs/cartuchos.
- Solucao adotada: separar presenca de cartucho de mute de audio no runtime, tratar o primeiro `Konami SCC+` como expansao interna virtual, consolidar o segundo chip no estado `DUAL` do proprio item `Konami SCC+` e bloquear a ativacao/carga de ROM quando houver conflito no slot B. Em seguida, o teste com `GRADIUS1E.ROM` mostrou que a topologia sozinha nao bastava: os dois carts ainda compartilhavam um unico `SCChip` e um unico bloco de `5` canais. A correcao estrutural promoveu `SCChip[2]`, abriu `25` canais no mixer local e passou a mascarar `10` canais SCC no `Layer 3`.
- Status: Parcial
- Referencia: [216-modelar-cartucho-konami-sccplus-dual-sccplus-menu-runtime.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m24/216-modelar-cartucho-konami-sccplus-dual-sccplus-menu-runtime.md)

### #217 - validacao em hardware e regressao controlada
- Desafio: provar que a milestone corrigiu a voz `START!` sem quebrar estabilidade, musica/SFX SCC ou UX de configuracao.
- Solucao adotada: usar `Space Manbow 2` como teste canonico, com rodadas de cold boot, reset, gameplay prolongado e cenarios de conflito no slot B.
- Status: Futuro
- Referencia: [217-validar-scc-sccplus-space-manbow2-regressao-hardware.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m24/217-validar-scc-sccplus-space-manbow2-regressao-hardware.md)

### #220 - instrumentacao UART do caminho `START!` em `Space Manbow 2`
- Desafio: o disassembly ja aponta SCC comum em `9800h`, mas ainda falta reconstruir a rotina real de `START!`/`CONTINUE!` em execucao para saber exatamente o que o jogo escreve no chip e em que sequencia; alem disso, o teste em campo estava sendo contaminado por `60Hz` forcado e por uma captura SCC que se esgotava em bursts redundantes de `volume`.
- Solucao adotada: abrir uma trilha diagnostica separada para instrumentar apenas a janela SCC `9800h-9FFFh` via UART, com correlacao posterior com o disassembly local. A primeira rodada colocou o hook em `MapROM()` e exportou um ring buffer SCC para o kernel, provando que o `SMANBOW2` entra no SCC imediatamente (`0B32/0B37/0BB9/1346/137C/13FF..`). Como a agregacao inicial ainda gerou `SCC DROP`, a trilha passou a usar sessoes SCC explicitas (`Q=<sessao>`). Em seguida, o runtime deixou de expor `Refresh` manual no menu, voltou a iniciar sempre em `NTSC` e passou a seguir `PAL` automaticamente por write em `R#9`. A politica atual de captura no codigo local foi simplificada: o trace liga no primeiro `ENABLE!=0` do SCC, atravessa quantas sessoes forem necessarias, preserva um ring de `4096` eventos e agrega apenas bursts contiguos de `volume`; ele corta sozinho no primeiro write SCC ja fora do fluxo `SAVE_SELECT/STARDATE`, evitando tanto o inicio tardio quanto o flood da tempestade de `PC=137C`. O trace ja alcancou o bloco dinamico `13FF..143D`, entao o gargalo principal deixou de ser observabilidade e passou a ser semantica do render SCC. O host local foi recolocado no timing esperado pelo fMSX via `PlayAllSound()` por scanline, mantendo fallback por frame quando necessario. As rodadas seguintes trocaram o caminho de render do SCC para um renderer dedicado em `src/`, alimentado por estado lateral por chip, e agora sincronizam o mixer por timestamp do Z80 no instante de cada write SCC, aproximando o modelo temporal de `openMSX/blueMSX`.
- Solucao adotada: para fechar de vez a duvida sobre mistura de chips, a rodada atual adiciona `AUD EVT`/`AUD DROP` para portas `PSG` e `FM-PAC` no mesmo recorte temporal do `SCC EVT`, com a mesma janela `W=TI|SV|SD|--`; assim o proximo log dira objetivamente se `START!`/`CONTINUE!` passam so pelo SCC ou se existe participacao de `PSG/FM`.
- Solucao adotada: como o timestamp da UART se mostrou inviavel por ser distorcido pelo proprio custo do log, a rodada atual adiciona `R=<samples>` ao `SCC EVT`, expondo quantas amostras o host realmente renderizou no sync imediatamente anterior ao write SCC. Isso permite provar se o problema restante esta no renderer SCC ou se varios writes criticos ainda estao colapsando no mesmo estado temporal do mixer local.
- Solucao adotada: o log seguinte mostrou trafego real de `PSG` em `R0..R10` no mesmo fluxo da voz. Isso revelou um segundo gap temporal no host: mesmo com `render-to-now`, o `AY8910` ainda acumulava `Changed` e so fazia `Sync8910(AY8910_FLUSH)` a cada 8 scanlines. A rodada atual move esse flush para o write path do `PSG`, imediatamente apos `WrData8910()`, para impedir colapso de sintese rapida na janela de `START!/CONTINUE!`.
- Solucao adotada: como o `PSG` local ainda dependia do renderer generico `SND_MELODIC/SND_NOISE`, a rodada atual sobe o `AY8910` para um renderer dedicado `blueMSX-like` no bus `PSG`, com oversampling `16x`, geracao propria de `tone/noise/envelope` e filtro mono; isso remove um desvio estrutural que ainda podia impedir o fluxo de voz mesmo com o sync temporal ja corrigido.
- Encaminhamento atual: trilha congelada; a instrumentacao UART foi preservada mas desabilitada por compile-time, e o merge desta branch leva apenas o groundwork util ja estabilizado.
- Status: Futuro
- Referencia: [220-instrumentar-uart-writes-scc-start-space-manbow2.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m24/220-instrumentar-uart-writes-scc-start-space-manbow2.md)
