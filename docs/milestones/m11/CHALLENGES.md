# Desafios da Milestone

Registro de desafios enfrentados por issue, decisão adotada e status da solução.

## Status
- `Resolvido` = solução aplicada e validada
- `Parcial` = mitigado, requer iteração
- `Futuro` = movido para issue/milestone futura

## Itens por issue

### #80 — seletor modelo msx2plus settings
- Desafio: Sem histórico detalhado consolidado neste ciclo; revisar issue remota e PR associado para detalhes.
- Solução adotada: A consolidar no fechamento da issue; registrar solução definitiva ou referência da issue de continuidade.
- Status: Resolvido
- Referência: [80-seletor-modelo-msx2plus-settings.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/80-seletor-modelo-msx2plus-settings.md)

### #81 — boot msx2plus bios chain fallback
- Desafio: Sem histórico detalhado consolidado neste ciclo; revisar issue remota e PR associado para detalhes.
- Solução adotada: A consolidar no fechamento da issue; registrar solução definitiva ou referência da issue de continuidade.
- Status: Resolvido
- Referência: [81-boot-msx2plus-bios-chain-fallback.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/81-boot-msx2plus-bios-chain-fallback.md)

### #82 — epic da auditoria comparativa do V9958 stock
- Desafio: A issue original misturava validação funcional de `MSX2+`, gaps do VDP e achados experimentais sem uma decomposição formal em trilhas auditáveis.
- Solução adotada: Transformar a `#82` em epic/umbrella e decompor a auditoria stock do `V9958` nas sub-issues `#231..#236`, com matriz canônica e backlog derivado só após fechamento da descoberta.
- Status: Parcial
- Referência: [82-validar-vdp9958-modos-msx2plus.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/82-validar-vdp9958-modos-msx2plus.md)

### #83 — ajustar timing audio msx2plus
- Desafio: Sem histórico detalhado consolidado neste ciclo; revisar issue remota e PR associado para detalhes.
- Solução adotada: A consolidar no fechamento da issue; registrar solução definitiva ou referência da issue de continuidade.
- Status: Resolvido
- Referência: [83-ajustar-timing-audio-msx2plus.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/83-ajustar-timing-audio-msx2plus.md)

### #84 — pacote validacao funcional msx2plus
- Desafio: Sem histórico detalhado consolidado neste ciclo; revisar issue remota e PR associado para detalhes.
- Solução adotada: A consolidar no fechamento da issue; registrar solução definitiva ou referência da issue de continuidade.
- Status: Resolvido
- Referência: [84-pacote-validacao-funcional-msx2plus.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/84-pacote-validacao-funcional-msx2plus.md)

### #231 — matriz comparativa do V9958 stock
- Desafio: Falta um artefato canônico para separar `match`, `missing`, `conflict` e `disputed` antes de tocar no core.
- Solução adotada: Criar `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md` com taxonomia, regra de precedência, fontes obrigatórias e primeiras linhas seed.
- Status: Parcial
- Referência: [231-criar-matriz-comparativa-v9958-stock-bluemsx-v9958-super.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/231-criar-matriz-comparativa-v9958-stock-bluemsx-v9958-super.md)

### #232 — auditoria de I/O, registradores e status
- Desafio: Portos `0x98..0x9B`, `R#15`, `S#1`, `S#2` e `R25/R26/R27` ainda aparecem misturados no histórico da `#82`.
- Solução adotada: Abrir uma sub-issue dedicada para fechar esse bloco inteiro na matriz, sem correção de código nesta fase.
- Status: Futuro
- Referência: [232-fechar-auditoria-io-registradores-status-v9958-stock.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/232-fechar-auditoria-io-registradores-status-v9958-stock.md)

### #233 — gap analysis do command engine
- Desafio: `CE/TR`, enable por modo, polling via `S#2` e custo relativo dos comandos ainda não estão formalizados numa leitura cruzada única.
- Solução adotada: Isolar a análise do engine numa sub-issue própria, focada em `V9938.c`, `VDP.c` do blueMSX e `vdp_command.sv`.
- Status: Futuro
- Referência: [233-fechar-gap-analysis-command-engine-timing-v9958-stock.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/233-fechar-gap-analysis-command-engine-timing-v9958-stock.md)

### #234 — gap analysis do renderer/addressing
- Desafio: scroll, multipage, odd/even e base tables já tiveram várias iterações na `#82`, mas ainda sem decomposição canônica por modo.
- Solução adotada: Abrir uma sub-issue específica para renderer/addressing, mantendo sprites como `static-first`.
- Status: Futuro
- Referência: [234-fechar-gap-analysis-renderer-v9958-stock-scroll-multipage-odd-even-addressing.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/234-fechar-gap-analysis-renderer-v9958-stock-scroll-multipage-odd-even-addressing.md)

### #235 — validação dinâmica mínima
- Desafio: Parte das linhas da matriz só fecha com evidência em runtime, mas a trilha precisa evitar harness novo.
- Solução adotada: Fixar corpus mínimo (`boot logo`, `MSXDIAG`, `Gradius2E/Nemesis2E`, `Knightmare Gold`) e limitar a instrumentação ao que já existe no projeto.
- Status: Futuro
- Referência: [235-validar-corpus-dinamico-v9958-stock-telemetria-existente.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/235-validar-corpus-dinamico-v9958-stock-telemetria-existente.md)

### #236 — consolidação do backlog implementável
- Desafio: a trilha de descoberta precisa virar backlog real de correções sem reintroduzir hipótese solta no core.
- Solução adotada: separar uma sub-issue final para converter linhas `partial/missing/conflict` em itens implementáveis com repro e aceite.
- Status: Futuro
- Referência: [236-consolidar-backlog-implementavel-gaps-v9958-stock.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/236-consolidar-backlog-implementavel-gaps-v9958-stock.md)
