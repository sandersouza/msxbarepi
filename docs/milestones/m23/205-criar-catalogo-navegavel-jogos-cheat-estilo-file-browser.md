# Issue #205 - [P2] Criar catalogo navegavel de jogos com cheat no estilo file browser

- URL: https://github.com/sandersouza/msxbarepi/issues/205
- Milestone: Game Master+ (m23)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:settings`, `area:storage`

## Checklist
- [ ] Definir/adaptar um browser de lista virtual para titulos vindos do `gamemaster.cht`
- [ ] Preservar semantica visual e de navegacao do file browser atual
- [ ] Exibir nome do jogo em formato curto/legivel para a UI atual
- [ ] Implementar estados de catalogo vazio, erro de carga e retorno ao menu
- [ ] Garantir que o menu continue desacoplado da logica de catalogo
- [ ] Atualizar documentacao do componente se a API/comportamento do browser mudar

## DoR (sugestao)
- Estrutura de catalogo por jogo definida pela issue `#204`.
- Comportamentos obrigatorios do browser atual mapeados para o caso de lista virtual.
- Estados de erro/empty state validados com a UX esperada do menu.

## DoD (sugestao)
- Ao abrir `Game Master+`, a lista de jogos aparece em UX equivalente ao file browser atual.
- Scroll, paginacao, auto-repeat e jump por letra funcionam sobre catalogo em memoria.
- Catalogo vazio ou invalido nao quebra o menu e apresenta retorno previsivel.
- Qualquer impacto de API/comportamento do browser fica documentado em `docs/file-browser-component.md`.

## Status da iteracao atual

- Issue criada para tratar a listagem de jogos com cheats como uma fonte virtual, e nao como navegacao de diretorio real.
- A abordagem prevista e reaproveitar a ergonomia do browser atual: scroll, paginacao, auto-repeat e jump por letra.
- O objetivo e manter o menu como orquestrador visual, deixando catalogacao e navegacao encapsuladas no componente.
