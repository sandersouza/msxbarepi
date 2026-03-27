# CONTEXT

Ponto de entrada rapido para contexto operacional do projeto.

- Contexto completo e historico de handoff da branch atual: [docs/handoff/219-fidelidade-render-psg-fm-pac.md](docs/handoff/219-fidelidade-render-psg-fm-pac.md)
- Rodada atual: alem da trilha de FM/PSG da `#219`, a base de boot voltou a expor marcadores `BT0..BT12` na UART e o arquivo de configuracao canonico passou a ser `SD:/msxbarepi.cfg`, com fallback de leitura para `SD:/MSXBARE.CFG`.
- Atualize esse contexto ao final de cada ciclo relevante (build, milestone, bug, decisao tecnica).

- Nova trilha registrada: `#225` para pacing do `Knightmare Gold` em `50Hz + Turbo OFF`, separada da `#224` para preservar o gate ja fechado e evitar regressao no `GRADIUS2E`.
