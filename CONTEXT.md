# CONTEXT

Ponto de entrada rapido para contexto operacional do projeto.

- Contexto completo e historico de handoff da branch atual: [docs/handoff/220-uart-scc-start-space-manbow2.md](docs/handoff/220-uart-scc-start-space-manbow2.md)
- Rodada atual: a issue `#220` foi congelada para retomada futura. O trace UART experimental de audio do `SMANBOW2` (`SCC EVT` / `AUD EVT`) foi preservado no codigo, mas ficou desabilitado por compile-time para remover custo e ruido desta fase. O groundwork util desta branch continua valido para merge parcial: renderer dedicado de `SCC` e `PSG`, sync temporal por write, refresh em `NTSC` por padrao com troca automatica para `PAL` por `R#9`, `Audio Gain` em escala visual `0..9`, precedencia canonica das flags do `make` sobre `.config`, e alinhamento de `OWNER` / `MSXBARE_PATREON_TAG` para o mesmo owner/tag efetivo. Validacao local mais recente: `scripts/check-third-party-pristine.sh` OK, `make -j4 DEBUG=1 BUILD_BID=202603221230-ab38eb9` OK e `make -j4 DEBUG=0 BUILD_BID=202603221231-ab38eb9` OK.
- Atualize esse contexto ao final de cada ciclo relevante (build, milestone, bug, decisao tecnica).
