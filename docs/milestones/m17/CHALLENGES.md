# Desafios da Milestone

Registro de desafios enfrentados por issue, decisão adotada e status da solução.

## Status
- `Resolvido` = solução aplicada e validada
- `Parcial` = mitigado, requer iteração
- `Futuro` = movido para issue/milestone futura

## Itens por issue

### #108 — mini-lib de menus (FZF simplificado)
- Desafio: Consolidar um componente reutilizável de menu/browser sem regressão visual e sem acoplar lógica de domínio.
- Solução adotada: Em backlog; abordagem prevista por componente plugável com contrato estável de render/input.
- Status: Futuro
- Referência: [108-mini-lib-menus-fzf-simplificado.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m17/108-mini-lib-menus-fzf-simplificado.md)

### #120 — menu ABOUT + assinatura estática + build em lote
- Desafio: Garantir rastreabilidade de builds sem impactar fluxo padrão de release.
- Solução adotada: Em backlog; manter assinatura estática opcional via flags/scripts.
- Status: Futuro
- Referência: [120-menu-about-assinatura-estatica-build-lote.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m17/120-menu-about-assinatura-estatica-build-lote.md)

### #135 — glitch visual ao sair de Settings com ESC
- Desafio: Transição Settings -> root menu ainda com glitch de alinhamento/refresh em cenários específicos.
- Solução adotada: Em backlog; corrigir no pipeline de redraw/off-screen sem regressão de flicker.
- Status: Futuro
- Referência: [135-glitch-visual-saida-settings-esc.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m17/135-glitch-visual-saida-settings-esc.md)

### #137 — calibração global de áudio e vídeo
- Desafio: Mix A/V ainda inconsistente entre emulador e referência (Xevious), com diferença de transiente e distribuição espectral.
- Solução adotada: Definido método A/B reprodutível (captura, alinhamento e métricas objetivas); calibrações em progresso na branch #76.
- Status: Parcial
- Referência: [137-calibracao-global-audio-video-baseline.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m17/137-calibracao-global-audio-video-baseline.md)

### #138 — leitura/listagem de diretórios no SD inconsistente no navegador
- Desafio: Itens existentes em `SD:/roms` e `SD:/disks` às vezes não aparecem no navegador sem padrão determinístico; após reescrita podem aparecer.
- Solução adotada: leitura do browser migrada para varredura do diretório corrente via FatFS (sem cache global truncado), com recarga por `current_dir` em cada entrada/retorno de subdiretório; estabilizou listagem e eliminou sumiços intermitentes.
- Status: Resolvido
- Referência: [138-bug-leitura-listagem-diretorios-sd-inconsistente-navegador.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m17/138-bug-leitura-listagem-diretorios-sd-inconsistente-navegador.md)
