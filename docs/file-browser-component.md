# File Browser Component (`src/combo_file_browser.*`)

## Objetivo

Desacoplar a navegação de arquivos do `combo_menu` para permitir reuso em outros menus/fluxos sem duplicar lógica.

## API pública

- `Open(mode, slot_index)`: inicia navegador no root correto (`SD:/msx/roms` ou `SD:/msx/disks`).
- `OpenGameMaster()`: inicia navegador real em `SD:/msx/cheats`.
- `ProcessInput(up, down, enter_edge, out_path, out_path_size)`: processa navegação e seleção.
- `GetVisibleCount()`, `GetLabelVisible(i)`, `IsDirVisible(i)`, `IsParentVisible(i)`: suporte de render para listagem.
- `GetCount()`, `GetTop()`, `GetSelectedVisibleIndex()`: suporte para scroll/scrollbar.
- `GetSelectedSourceIndex()` / `GetSourceIndexVisible(i)`: mapeiam a linha visível/selecionada para o índice interno da lista atual.
- `GetMode()`, `GetSlotIndex()`: contexto atual para ação de load.

## Comportamentos implementados no componente

- Lista diretórios primeiro e arquivos depois.
- Ignora entradas iniciadas por `.`.
- Mantém navegação confinada ao root (`SD:/msx/roms`, `SD:/msx/disks` ou `SD:/msx/cheats`).
- Suporta `..` para retornar ao diretório anterior.
- Nome exibido em formato até 16 caracteres, sem extensão.
- Auto-repeat de navegação (`UP/DOWN`) para diretórios com muitos arquivos.
- Scroll por janela com `top/selected` para integração com barra visual no menu.
- No modo `Game Codes`, a listagem usa o diretório real `SD:/msx/cheats` e aceita arquivos `.mcf`.
- O label exibido preserva o nome curto derivado do arquivo, sem extensão, mantendo semântica compatível com navegação em SD.

## Integração atual

- Consumidor atual: `CComboPauseMenu` em `src/combo_menu.cpp`.
- O menu apenas orquestra estado visual/ações (`LOAD ROM` e `LOAD DISK`).
- A lógica de catálogo, navegação e seleção fica centralizada no componente.

## Uso atual para `Game Codes`

- O pause menu expõe a entrada raiz `Game Codes` e, ao selecioná-la, o kernel abre `SD:/msx/cheats`.
- O browser navega diretórios reais e lista arquivos `.mcf` diretamente.
- Ao selecionar um `.mcf`, o menu deriva `title` e `rom_id` do nome do arquivo e carrega apenas esse arquivo para `TGameMasterCatalog` via `game_master_catalog_load_mcf(...)`.
- A UI entra na tela `Active Cheats`, que lista os cheats do arquivo atual com estado `ON/OFF` derivado da memoria emulada.
- A tela nao exibe mais hint de rodape para toggle.
- Ao pressionar `ENTER`, `LEFT` ou `RIGHT`, o menu sinaliza a ação ao kernel e o runtime alterna o cheat selecionado, ligando quando os `pokes` nao batem com a memoria atual e desligando quando ja batem.
