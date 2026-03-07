# File Browser Component (`src/combo_file_browser.*`)

## Objetivo

Desacoplar a navegação de arquivos do `combo_menu` para permitir reuso em outros menus/fluxos sem duplicar lógica.

## API pública

- `Open(mode, slot_index)`: inicia navegador no root correto (`SD:/roms` ou `SD:/disks`).
- `ProcessInput(up, down, enter_edge, out_path, out_path_size)`: processa navegação e seleção.
- `GetVisibleCount()`, `GetLabelVisible(i)`, `IsDirVisible(i)`, `IsParentVisible(i)`: suporte de render para listagem.
- `GetCount()`, `GetTop()`, `GetSelectedVisibleIndex()`: suporte para scroll/scrollbar.
- `GetMode()`, `GetSlotIndex()`: contexto atual para ação de load.

## Comportamentos implementados no componente

- Lista diretórios primeiro e arquivos depois.
- Ignora entradas iniciadas por `.`.
- Mantém navegação confinada ao root (`SD:/roms` ou `SD:/disks`).
- Suporta `..` para retornar ao diretório anterior.
- Nome exibido em formato até 16 caracteres, sem extensão.
- Auto-repeat de navegação (`UP/DOWN`) para diretórios com muitos arquivos.
- Scroll por janela com `top/selected` para integração com barra visual no menu.

## Integração atual

- Consumidor atual: `CComboPauseMenu` em `src/combo_menu.cpp`.
- O menu apenas orquestra estado visual/ações (`LOAD ROM` e `LOAD DISK`).
- A lógica de catálogo, navegação e seleção fica centralizada no componente.
