# Issue #204 - [P2] Definir formato canonico de `gamemaster.cht` e parser baremetal

- URL: https://github.com/sandersouza/msxbarepi/issues/204
- Milestone: Game Master+ (m23)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:storage`, `area:settings`

## Checklist
- [x] Definir gramatica minima e limites do arquivo `gamemaster.cht`
- [x] Especificar caminho canonico de carga (`SD:/gamemaster.cht`)
- [x] Suportar multiplos `poke` por cheat, com `8-bit` e `16-bit`
- [x] Produzir estrutura indexada por jogo/titulo para consumo do menu
- [x] Tratar linhas invalidas, duplicidades e catalogo vazio sem travar o runtime
- [x] Documentar exemplos validos e erros esperados de parse

## DoR (sugestao)
- Formato alvo limitado a parser baremetal simples, sem dependencia de JSON/XML generico.
- Limites de memoria e quantidade maxima de jogos/cheats/pokes definidos antes da implementacao.
- Consumidores previstos (browser de jogos e tela de cheats) alinhados sobre a estrutura em memoria esperada.

## DoD (sugestao)
- `gamemaster.cht` carrega em estrutura indexada por jogo sem travar o runtime.
- Parser aceita cheats com um ou mais `poke` em `8-bit` e `16-bit`.
- Erros de sintaxe, duplicidade ou catalogo vazio resultam em fallback previsivel/documentado.
- Formato final e exemplos ficam documentados para consumo das issues seguintes.

## Status da iteracao atual

- Modulo implementado em `src/gamemaster_catalog.{h,c}` com parser para `game`, `rom`, `cheat`, `poke`, `endcheat` e `endgame`.
- Estrutura em memoria definida com limites fixos (`games`, `cheats`, `pokes`), path canonico `SD:/gamemaster.cht` e status/linha de erro para consumo futuro pela UI.
- Documentacao do formato registrada em `docs/game-master-plus-format.md`.
- Validacao executada:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - smoke test host do parser com catalogo valido: `status=0`, `games=1`, `cheats=2`, `pokes=3`
- PR aberto para review: `#210` `Issue #204: add Game Master+ catalog parser`
