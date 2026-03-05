# Desafios da Milestone M8

Registro consolidado dos desafios do fluxo de carga de ROMs/DSKs, navegador e persistencia associada.

## Status
- `Resolvido`: correcao aplicada e validada em hardware.
- `Parcial`: mitigado, com pendencia residual monitorada.
- `Futuro`: movido para issue/milestone futura.

## Itens por issue

### #59 — Scanner FAT32 recursivo
- Desafio: varredura de estrutura de midia com filtros, ordenacao e limites de diretorio.
- Solucao adotada: scanner recursivo com regras de filtro, ordenacao de diretorios e isolamento de raiz.
- Status: Resolvido.
- Referencia: [59-scanner-fat32-roms-disks-recursivo.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m8/59-scanner-fat32-roms-disks-recursivo.md)

### #60 — Navegador de arquivos no pause menu
- Desafio: glitches de redraw/flicker, scroll/paginacao e usabilidade com listas grandes.
- Solucao adotada: componente de file browser reutilizavel, rolagem/paginacao, navegacao por letra e correcoes visuais.
- Status: Resolvido.
- Referencia: [60-navegador-arquivos-pause-menu-roms-disks.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m8/60-navegador-arquivos-pause-menu-roms-disks.md)

### #61 — Carregar ROM em SLOT A/B
- Desafio: lock ao carregar ROM dentro do callback USB e reset inconsistente apos carga.
- Solucao adotada: execucao de acoes pesadas no loop principal, regras de reset por boot mode ativo/configurado.
- Status: Resolvido.
- Referencia: [61-carregar-rom-cartridge-ab-reboot-runtime.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m8/61-carregar-rom-cartridge-ab-reboot-runtime.md)

### #62 — Carregar DSK em DRIVE A/B
- Desafio: necessidade de hot swap sem reset e persistencia correta por sessao.
- Solucao adotada: carga/descarga de disco sem reboot, preservacao de estado entre resets e ajustes de menu.
- Status: Resolvido.
- Referencia: [62-carregar-dsk-drive-ab-reboot-runtime.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m8/62-carregar-dsk-drive-ab-reboot-runtime.md)

### #63 — Persistir selecao ROM/DSK no CFG
- Desafio: manter paths selecionados apos reset/boot sem introduzir regressao no menu.
- Solucao adotada: persistencia de paths no CFG e reaplicacao segura em boot/reset.
- Status: Resolvido.
- Referencia: [63-persistir-selecao-rom-dsk-no-cfg.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m8/63-persistir-selecao-rom-dsk-no-cfg.md)

### #64 — Validar mapeadores/heuristicas de ROM
- Desafio: falhas de carga sem diagnostico claro e necessidade de fallback robusto.
- Solucao adotada: fallback de mapper em cadeia curta, rollback seguro e telemetria de estagio de carga.
- Status: Resolvido.
- Referencia: [64-validar-mapeadores-heuristicas-rom.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m8/64-validar-mapeadores-heuristicas-rom.md)

### #65 — Telemetria de erros de midia SD
- Desafio: diagnostico fraco de erros FAT32 durante operacoes de leitura/escrita.
- Solucao adotada: codificacao de estagios/erros no overlay e logs de operacao SD.
- Status: Resolvido.
- Referencia: [65-telemetria-erros-operacoes-midia-sd.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m8/65-telemetria-erros-operacoes-midia-sd.md)

### #66 — Cache/catalogo incremental
- Desafio: navegacao lenta e inconsistencias de atualizacao da listagem em eventos rapidos.
- Solucao adotada: estrategia incremental de catalogo com correcoes de invalidacao/render no navegador.
- Status: Resolvido.
- Referencia: [66-cache-incremental-catalogo-midia.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m8/66-cache-incremental-catalogo-midia.md)

### #99 — Save/Load State
- Desafio: travamentos iniciais, criacao de pasta sem arquivo e retorno visual apos carga.
- Solucao adotada: estabilizacao de save/load no SD, criacao de estrutura `state/` e restauracao consistente.
- Status: Resolvido.
- Referencia: [99-p1-save-state-load-state-no-menu-settings-persist-ncia-no-sd.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m8/99-p1-save-state-load-state-no-menu-settings-persist-ncia-no-sd.md)
