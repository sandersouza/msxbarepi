# Handoff - branch `205-gamemaster-games-browser`

## Contexto
- Issue remota: #205
- Objetivo: adaptar o file browser para listar jogos do `Game Master+` a partir de um catalogo virtual, preservando a UX atual sem acoplar o menu a diretorios reais.

## Iteracao atual (20/03/2026 10:18 -03)
- Fluxo de gestao:
  - PR `#210` da `#204` foi mergeado em `2026-03-20T13:15:52Z`;
  - issue `#204` movida para `Done`;
  - issue `#205` movida para `In progress`;
  - branch criada e vinculada via `gh issue develop`: `205-gamemaster-games-browser`.
- Implementacao aplicada:
  - `src/tools/file_browser/combo_file_browser.h`
    - novo modo `ComboFileBrowserModeGameMaster`;
    - nova API `OpenGameMaster(const TGameMasterCatalog *catalog)`;
    - novos getters `GetSelectedSourceIndex()` e `GetSourceIndexVisible(i)`.
  - `src/tools/file_browser/combo_file_browser.cpp`
    - suporte a lista virtual ordenada alfabeticamente a partir de `TGameMasterCatalog`;
    - labels de jogos em formato curto legivel (ate 20 caracteres ASCII imprimiveis);
    - preservacao do fluxo de navegacao existente: scroll, paginacao, auto-repeat e jump por letra;
    - `GetCount()==0` continua sinalizando empty state para o consumidor, sem embutir fallback de UI no componente.
  - `docs/file-browser-component.md`
    - documentada a API e o comportamento do modo virtual `Game Master+`.
- Decisao tecnica:
  - o browser virtual nao inventa arvore fake nem pseudo-diretorios;
  - o menu consumidor recupera a origem da linha via `GetSelectedSourceIndex()`, mantendo desacoplamento entre UI e logica de ordenacao/catalogo.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
- Proximo passo:
  - sincronizar o corpo remoto da `#205`, abrir PR para `main` e compartilhar o link para review antes de avancar para a `#206`.
