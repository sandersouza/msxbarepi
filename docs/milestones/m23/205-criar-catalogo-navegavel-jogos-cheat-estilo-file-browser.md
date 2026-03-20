# Issue #205 - [P2] Criar catalogo navegavel de jogos com cheat no estilo file browser

- URL: https://github.com/sandersouza/msxbarepi/issues/205
- Milestone: Game Master+ (m23)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:settings`, `area:storage`

## Checklist
- [x] Definir/adaptar um browser de lista virtual para titulos vindos do `gamemaster.cht`
- [x] Preservar semantica visual e de navegacao do file browser atual
- [x] Exibir nome do jogo em formato curto/legivel para a UI atual
- [x] Implementar estados de catalogo vazio, erro de carga e retorno ao menu
- [x] Garantir que o menu continue desacoplado da logica de catalogo
- [x] Atualizar documentacao do componente se a API/comportamento do browser mudar

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

- `CComboFileBrowser` passou a suportar `OpenGameMaster(const TGameMasterCatalog *)` com modo virtual dedicado (`ComboFileBrowserModeGameMaster`).
- O browser virtual preserva scroll, paginacao, auto-repeat, jump por letra e selecao por evento, sem depender de diretorio real.
- Cada linha visivel agora mapeia para o indice da fonte virtual via `GetSelectedSourceIndex()` / `GetSourceIndexVisible(i)`, mantendo o menu desacoplado da ordenacao interna.
- O label do jogo passou a usar titulo curto legivel (ate 20 caracteres ASCII imprimiveis), em vez da semantica 8.3 usada para arquivos do SD.
- Catalogo vazio resulta em `GetCount()==0`, preservando o contrato atual para o consumidor lidar com empty state/retorno sem embutir logica de dominio no browser.
- Documentacao atualizada em `docs/file-browser-component.md`.
- Validacao executada:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
- PR aberto para review: `#211` `Issue #205: add Game Master virtual browser`
