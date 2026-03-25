# CONTEXT

Ponto de entrada rapido para contexto operacional do projeto.

- Contexto completo e historico de handoff da branch atual: [docs/handoff/187-reduzir-latencia-teclado.md](docs/handoff/187-reduzir-latencia-teclado.md)
- Rodada atual: a branch `187-reduzir-latencia-teclado` foi pausada com o PR [#226](https://github.com/sandersouza/msxbarepi/pull/226) aberto para `main`. O estado consolidado preserva o teclado funcional em ROM, o overlay de debug restaurado em `DEBUG=1` e o `hard reset` do menu corrigido (`Reset`/`MSX BASIC` saem do pause antes de chamar o backend). A trilha do `Knightmare Gold` permanece registrada nesta branch, com follow-up separado na `#225`. Build atual: `BUILD_BID=202603250230-close-187-pr`, `BUILD_ID=05C2`.
- Atualize esse contexto ao final de cada ciclo relevante (build, milestone, bug, decisao tecnica).

- Nova trilha registrada: `#225` para pacing do `Knightmare Gold` em `50Hz + Turbo OFF`, separada da `#224` para preservar o gate ja fechado e evitar regressao no `GRADIUS2E`.
