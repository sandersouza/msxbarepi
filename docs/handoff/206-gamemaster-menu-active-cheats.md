# Handoff - branch `206-gamemaster-menu-active-cheats`

## Contexto
- Issue remota: #206
- Objetivo: adicionar a entrada `Game Master+` no menu raiz, carregar `SD:/gamemaster.cht` sob demanda e entregar a tela `Active Cheats` com toggles `ON/OFF` antes da integracao real com o core da issue `#207`.

## Iteracao atual (20/03/2026 11:40 -03)
- Fluxo de gestao:
  - PR `#211` da `#205` foi mergeado em `2026-03-20T13:56:43Z`;
  - issue `#205` fechada e item do projeto em `Done`;
  - issue `#206` ja estava em `In progress`;
  - branch ativa/local: `206-gamemaster-menu-active-cheats`.
- Implementacao aplicada:
  - `src/tools/menu/combo_menu_items.{h,cpp}`
    - nova action `ComboMenuActionGameMaster`;
    - entrada `Game Master+` adicionada ao menu raiz.
  - `src/tools/locale/combo_locale*.{h,cpp}`
    - novos titulos/labels/mensagens para `Game Master+` e `Active Cheats` em `PT/EN/ES`.
  - `src/tools/menu/combo_menu.{h,cpp}`
    - novas subviews `MenuViewGameMasterBrowser` e `MenuViewGameMasterCheats`;
    - suporte para abrir browser virtual do catalogo e navegar para a lista de cheats do jogo selecionado;
    - lista de cheats com `ON/OFF`, toggle local por `ENTER/LEFT/RIGHT`, `PageUp/PageDown` e jump por letra;
    - mensagens localizadas para catalogo vazio/erro de carga.
  - `src/kernel.{h,cpp}`
    - estado local para `TGameMasterCatalog`;
    - carga de `SD:/gamemaster.cht` ao selecionar `Game Master+` no menu.
  - `docs/file-browser-component.md`
    - fluxo do browser atualizado para refletir a entrada `Game Master+` e a transicao para `Active Cheats`.
- Decisao tecnica:
  - a issue `#206` mantem o toggle apenas na camada de UI/menu;
  - a aplicacao efetiva no runtime e o restore seguro continuam explicitamente reservados para a issue `#207`, evitando acoplamento prematuro e retrabalho no `kernel`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
- Proximo passo:
  - PR aberto: `#212` `Issue #206: add Game Master menu and Active Cheats UI`
  - sincronizar o espelho local/remoto da issue e mover o item para `In review`.
