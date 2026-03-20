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
- Solucao adotada: portar apenas o comportamento necessario para SCC/SCC+ a partir das referencias, mantendo as mudancas em codigo local, com instrumentacao UART agregada e focada no caminho do sample.
- Status: Futuro
- Referencia: [215-implementar-core-scc-sccplus-sample-streaming-space-manbow2.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m24/215-implementar-core-scc-sccplus-sample-streaming-space-manbow2.md)

### #216 - cartucho `Konami SCC+` e `Dual SCC+` no menu/runtime
- Desafio: substituir o boolean legado de `Konami SCC` por um modelo real de cartucho/configuracao, sem conflitar com a carga normal de ROMs/cartuchos.
- Solucao adotada: tratar o primeiro `Konami SCC+` como expansao interna e o segundo como cartucho reservado no slot B, com bloqueio explicito quando o slot estiver ocupado.
- Status: Futuro
- Referencia: [216-modelar-cartucho-konami-sccplus-dual-sccplus-menu-runtime.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m24/216-modelar-cartucho-konami-sccplus-dual-sccplus-menu-runtime.md)

### #217 - validacao em hardware e regressao controlada
- Desafio: provar que a milestone corrigiu a voz `START!` sem quebrar estabilidade, musica/SFX SCC ou UX de configuracao.
- Solucao adotada: usar `Space Manbow 2` como teste canonico, com rodadas de cold boot, reset, gameplay prolongado e cenarios de conflito no slot B.
- Status: Futuro
- Referencia: [217-validar-scc-sccplus-space-manbow2-regressao-hardware.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m24/217-validar-scc-sccplus-space-manbow2-regressao-hardware.md)
