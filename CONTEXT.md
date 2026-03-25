# CONTEXT

Ponto de entrada rapido para contexto operacional do projeto.

- Contexto completo e historico de handoff da branch atual: [docs/handoff/219-fidelidade-render-psg-fm-pac.md](docs/handoff/219-fidelidade-render-psg-fm-pac.md)
- Rodada atual: o gap analysis da `#219` foi fechado com `Xevious` como caso reprodutor. O `PSG` nao mostrou um gap estrutural equivalente ao sintoma; o principal problema esta no `FM-PAC` default do `fMSX`, que ignora instrumentos e `user tone`. O primeiro corte desta branch passa a ser ativar `NukeYKT` por padrao, preservando o baseline aprovado de `SCC/SCC+` e sem tocar em `VDP`/timing global.
- Atualize esse contexto ao final de cada ciclo relevante (build, milestone, bug, decisao tecnica).

- Nova trilha registrada: `#225` para pacing do `Knightmare Gold` em `50Hz + Turbo OFF`, separada da `#224` para preservar o gate ja fechado e evitar regressao no `GRADIUS2E`.
