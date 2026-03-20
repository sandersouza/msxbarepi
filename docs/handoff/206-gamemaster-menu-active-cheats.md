# Handoff - branch `206-gamemaster-menu-active-cheats`

## Contexto
- Issue remota: #206
- Objetivo: adicionar a entrada `Game Master+` no menu raiz, carregar `SD:/gamemaster.cht` sob demanda e entregar a tela `Active Cheats` integrada ao runtime para aplicar o cheat selecionado imediatamente.

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
    - lista de cheats sem `ON/OFF`, com hint `[ENTER] APPLY` no rodape inferior, blink curto invertendo `[ENTER]`, `PageUp/PageDown` e jump por letra;
    - mensagens localizadas para catalogo vazio/erro de carga.
  - `src/kernel.{h,cpp}`
    - estado local para `TGameMasterCatalog`;
    - carga de `SD:/gamemaster.cht` ao selecionar `Game Master+` no menu;
    - consumo da acao pendente do menu e aplicacao imediata do cheat selecionado.
  - `src/fmsx_runtime.{h,c}`
    - ponte de runtime para aplicar uma sessao `Game Master` em RAM, salvando valores originais e executando todos os `pokes` assim que `ENTER` e pressionado.
  - `docs/file-browser-component.md`
    - fluxo do browser atualizado para refletir a entrada `Game Master+` e a transicao para `Active Cheats`.
- Decisao tecnica:
  - a UI deixou de manter estado local `ON/OFF` por cheat e passou a assumir `APPLY` como acao singular e imediata;
  - a integracao feita aqui cobre a aplicacao instantanea de um cheat selecionado, enquanto a issue `#207` continua focada em sessao persistente, multiplos cheats ativos e estrategia completa de restore/gerenciamento.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
- Proximo passo:
  - PR aberto: `#212` `Issue #206: add Game Master menu and Active Cheats UI`
  - sincronizar o espelho local/remoto da issue e mover o item para `In review`.

## Ajuste de UX (20/03/2026 11:46 -03)
- A entrada visivel no pause menu foi renomeada de `Game Master+` para `Game Codes`.
- A posicao do item no menu raiz foi movida para logo abaixo de `Settings`.

## Aplicacao imediata de cheat (20/03/2026 12:30 -03)
- A tela `Active Cheats` deixou de exibir `ON/OFF` por item.
- O rodape da caixa agora mostra `[ENTER] APPLY`.
- Ao pressionar `ENTER`, o kernel aplica imediatamente na memoria da maquina emulada todos os `pokes` do cheat selecionado.
- A UI exibe um retorno visual curto piscando `[ENTER]` com cores invertidas uma vez.
- Validacao local repetida:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK

## Correcao de dispatch do apply (20/03/2026 13:20 -03)
- Causa raiz encontrada em `CComboPauseMenu::ProcessInput()`: na view `MenuViewGameMasterCheats`, o `ENTER` armava `ComboMenuActionApplyGameMasterCheat`, mas o bloco retornava `ComboMenuActionNone` no final e descartava a acao antes de chegar ao kernel.
- A correcao passou a retornar a `action` correta, liberando o caminho de `GM APPLY` no UART e a aplicacao imediata do cheat no runtime.
- O log UART do catalogo foi alinhado para `Game Codes ...` em vez de `Game Master+ ...`.
- O hint `[ENTER] APPLY` foi mantido e centralizado no rodape da caixa.

## Correcao de sessao acumulativa (20/03/2026 13:30 -03)
- A rotina `fmsx_runtime_apply_game_master_cheat()` fazia `ResetCheats()` a cada `APPLY`, o que removia todos os pokes anteriores da sessao e explicava por que um novo cheat zerava o efeito do anterior.
- O runtime agora preserva a sessao ativa de cheats RAM-based, acrescentando novos pokes sem limpar a tabela.
- Quando um `APPLY` repetir o mesmo endereco, a entrada existente em `CheatCodes[]` passa a ser atualizada em vez de duplicada.

## Reintroducao de ON/OFF derivado da memoria (20/03/2026 13:40 -03)
- A tela `Active Cheats` voltou a exibir `ON/OFF` por cheat.
- O estado nao e mais um flag local da UI: cada linha consulta a memoria emulada e so mostra `ON` quando todos os `pokes` do cheat batem com os valores esperados.
- O `ENTER` passou a operar como toggle real no runtime:
  - se os valores atuais nao batem, aplica o cheat;
  - se os valores ja batem, remove os `pokes` da sessao ativa e restaura a memoria via ciclo `Cheats(CHTS_OFF) -> compactacao -> Cheats(CHTS_ON)`.
- O rodape foi atualizado para `[ENTER] TOGGLE`.

## Simplificacao da tela de cheats (20/03/2026 13:47 -03)
- O rodape `[ENTER] TOGGLE` foi removido da tela `Active Cheats`.
- O toggle do cheat selecionado agora pode ser acionado por `LEFT`, `RIGHT` ou `ENTER`.
- Com a remocao do hint, a caixa da tela de cheats voltou a usar apenas a altura da lista e do titulo.

## Conversao da base blueMSX (20/03/2026 14:05 -03)
- Foi adicionado o conversor [convert_bluemsx_cheats.py](/Users/sandersouza/Developer/msxbarepi/scripts/convert_bluemsx_cheats.py) e o wrapper [update_gamemaster_catalog.sh](/Users/sandersouza/Developer/msxbarepi/scripts/update_gamemaster_catalog.sh) para gerar `sdcard/gamemaster.cht` a partir da base oficial do blueMSX (`blueMSXv282full.zip`).
- A conversao filtra apenas entradas RAM-based no formato simples suportado pelo runtime (`type=0`, `compare=0`), agrupa linhas de mesmo titulo em cheats multi-`poke` e preserva entradas suplementares locais cujo `rom_id` nao exista na base importada, como `SMANBOW2`.
- O parser teve as capacidades ampliadas em [gamemaster_catalog.h](/Users/sandersouza/Developer/msxbarepi/src/gamemaster_catalog.h) para comportar o catalogo completo.
- Totais gerados nesta rodada: `754` jogos, `4406` cheats e `5900` pokes.

## Pivot para `SD:/cheats/*.mcf` (20/03/2026 14:20 -03)
- A estrategia monolitica com `sdcard/gamemaster.cht` passou a ser inadequada para o footprint atual do build, com risco de estourar o tamanho de carga do kernel no Circle.
- O fluxo foi migrado para usar os arquivos `.mcf` originais do blueMSX diretamente em `SD:/cheats`.
- Mudancas aplicadas:
  - `src/tools/file_browser/combo_file_browser.{h,cpp}`
    - `OpenGameMaster()` deixou de abrir um catalogo virtual e passou a abrir o root real `SD:/cheats`;
    - o modo `GameMaster` agora aceita arquivos `.mcf` e permite navegacao por diretorios reais.
  - `src/tools/menu/combo_menu.{h,cpp}`
    - ao selecionar um `.mcf`, o menu deriva `title` e `rom_id` do nome do arquivo e carrega apenas esse arquivo no catalogo em memoria;
    - a tela `Active Cheats` continua a mesma, mas agora opera sobre um catalogo de arquivo unico.
  - `src/gamemaster_catalog.{h,c}`
    - novo loader `game_master_catalog_load_mcf(...)` para importar um `.mcf` diretamente para `TGameMasterCatalog`;
    - limites do catalogo foram reduzidos para o pior caso de um arquivo individual, em vez da base inteira.
  - `src/kernel.cpp`
    - a entrada `Game Codes` apenas abre `SD:/cheats`, sem carregar `gamemaster.cht`.
  - `scripts/sync_bluemsx_cheats.sh`
    - novo script para baixar `blueMSXv282full.zip` e sincronizar `Tools/Cheats/msx/*.mcf` para `sdcard/cheats`.
- Medicao usada para redimensionar o catalogo:
  - pior caso por arquivo observado na base blueMSX: `141` cheats agrupados e `222` pokes;
  - limites ajustados para `160` cheats e `256` pokes por arquivo.
- Impacto:
  - remove a necessidade de embutir um catalogo gigante no fluxo;
  - preserva compatibilidade operacional com a base blueMSX;
  - simplifica a manutencao futura, porque o SD passa a carregar os `.mcf` nativos.

## Heuristica para seletores numericos/enum (20/03/2026 14:26 -03)
- Foi confirmada a limitacao do formato `.mcf`: ele nao carrega um tipo formal de widget/UI, apenas linhas no formato `tipo,endereco,valor,compare,descricao`.
- A diferenciacao entre `ON/OFF` e seletor parametrico passou a usar heuristica sobre a `descricao` do cheat:
  - padrao `(<n>-<m>)` => seletor numerico;
  - padrao `(<n>=texto ...)` => seletor enum por valor.
- Implementacao aplicada:
  - `src/tools/menu/combo_menu.cpp`
    - detecta seletores diretamente a partir do `title` do cheat;
    - para cheats de um unico `poke`, a coluna da direita deixa de mostrar `ON/OFF` e passa a exibir o valor atual lido da RAM emulada quando ele pertence ao conjunto valido;
    - `LEFT/RIGHT/ENTER` deixam de fazer toggle e passam a percorrer os valores validos para esses cheats parametrizados.
  - `src/kernel.cpp`
    - a acao pendente do menu agora transporta opcionalmente um `value_override` para o runtime.
  - `src/fmsx_runtime.{h,c}`
    - novo helper `fmsx_runtime_set_game_master_cheat_value(...)` para regravar um cheat de um unico `poke` com o valor escolhido na UI.
- Escopo inicial:
  - suporte habilitado para cheats parametrizados com exatamente um `poke`;
  - cheats multi-`poke` continuam no fluxo `ON/OFF`.
- Exemplo real coberto pela heuristica:
  - `stage (0-8)`
  - `speed (1-4)`
  - `way option 1 (6=back 7=up 8=front)`
