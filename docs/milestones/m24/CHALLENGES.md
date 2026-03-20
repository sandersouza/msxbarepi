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
- Desafio: o disassembly ja aponta SCC comum em `9800h`, mas ainda falta reconstruir a rotina real do `START!` em execucao para saber exatamente o que o jogo escreve no chip e em que sequencia.
- Solucao adotada: abrir uma trilha diagnostica separada para instrumentar apenas a janela SCC `9800h-9FFFh` via UART, com agregacao/throttle e correlacao posterior com o disassembly local.
- Status: Futuro
- Referencia: [220-instrumentar-uart-writes-scc-start-space-manbow2.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m24/220-instrumentar-uart-writes-scc-start-space-manbow2.md)
