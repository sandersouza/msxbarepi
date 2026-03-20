# Issue #204 - [P2] Definir formato canonico de `gamemaster.cht` e parser baremetal

- URL: https://github.com/sandersouza/msxbarepi/issues/204
- Milestone: Game Master+ (m23)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:storage`, `area:settings`

## Checklist
- [ ] Definir gramatica minima e limites do arquivo `gamemaster.cht`
- [ ] Especificar caminho canonico de carga (`SD:/gamemaster.cht`)
- [ ] Suportar multiplos `poke` por cheat, com `8-bit` e `16-bit`
- [ ] Produzir estrutura indexada por jogo/titulo para consumo do menu
- [ ] Tratar linhas invalidas, duplicidades e catalogo vazio sem travar o runtime
- [ ] Documentar exemplos validos e erros esperados de parse

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

- Issue criada para consolidar o contrato do catalogo antes da integracao de browser/UI/runtime.
- Diretriz inicial definida: evitar parser JSON/XML generico no runtime e preferir formato texto declarativo de baixo custo.
- Exemplo base planejado modela diretamente `game`, `cheat` e `poke`, com suporte a multi-POKE e tamanhos `8-bit`/`16-bit`.
