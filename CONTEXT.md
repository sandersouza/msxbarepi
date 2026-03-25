# CONTEXT

Ponto de entrada rapido para contexto operacional do projeto.

- Contexto completo e historico de handoff da branch atual: [docs/handoff/187-reduzir-latencia-teclado.md](docs/handoff/187-reduzir-latencia-teclado.md)
- Rodada atual: a issue `#187` voltou ao foco principal. O rollback logico para `F3AD` preservou o teclado funcional em ROM, o overlay de debug voltou a operar diretamente como `ON/OFF` em `DEBUG=1`, e a rodada atual corrigiu o `hard reset` do menu: `Reset` e `MSX BASIC` agora saem do estado paused antes de chamar o backend. A trilha do `Knightmare Gold` permanece registrada nesta branch, mas o follow-up de pacing segue separado na `#225`. Build atual: `BUILD_BID=202603250145-menu-reset-unpause`, `BUILD_ID=C3CE`.
- Atualize esse contexto ao final de cada ciclo relevante (build, milestone, bug, decisao tecnica).

- Nova trilha registrada: `#225` para pacing do `Knightmare Gold` em `50Hz + Turbo OFF`, separada da `#224` para preservar o gate ja fechado e evitar regressao no `GRADIUS2E`.
