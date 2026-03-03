# Issue #66 - Cache incremental do catálogo de mídia

- URL: https://github.com/sandersouza/msxbarepi/issues/66
- Milestone: Load de ROMs e Discos (m8)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `type:performance`, `area:storage`

## Atualizações locais

- Navegador de arquivos desacoplado do `combo_menu` em componente reutilizável:
  - `circle_combo/combo_file_browser.h`
  - `circle_combo/combo_file_browser.cpp`
- `combo_menu` passou a consumir API do componente (sem lógica de catálogo embutida).
- Documentação do componente: `docs/file-browser-component.md`
