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

### #173 — teclado USB-HID com perda de press/release e latência
- Desafio: Eventos de teclado inconsistentes no hardware (press/release perdidos e atraso variável), afetando jogo e menu.
- Solução adotada: separar captura e processamento de input; callback RAW passa a apenas capturar snapshot do relatório HID, com processamento integral no loop principal para remover corrida de contexto.
- Status: Parcial
- Referência: [173-bug-teclado-usb-hid-press-release-latencia.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m17/173-bug-teclado-usb-hid-press-release-latencia.md)

### #176 — boot screen MSX2+ extremamente lento
- Desafio: Animação de logo no boot do MSX2+ progride muito devagar (diferença de centenas/milhares de frames), apesar de boot funcional.
- Solução adotada: Em andamento; criar branch dedicada para instrumentar cadência de page flip/comandos VDP e remover gargalo sem regressão de 60Hz no MSXDIAG.
- Status: Parcial
- Referência: [176-boot-screen-msx2plus-extremamente-lento-logo-scroll-paginas-alternadas.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m17/176-boot-screen-msx2plus-extremamente-lento-logo-scroll-paginas-alternadas.md)

### #186 — Rensha Turbo (auto-fire SPACE) parou de funcionar
- Desafio: Regressão no auto-fire da barra de espaço, com perda do comportamento esperado no runtime atual de input.
- Solução adotada: Em backlog; revisar pipeline USB HID -> decode -> bridge com foco em edge/hold da tecla SPACE.
- Status: Futuro
- Referência: [186-p1-bug-rensha-turbo-auto-fire-space-parou-de-funcionar.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m17/186-p1-bug-rensha-turbo-auto-fire-space-parou-de-funcionar.md)

### #187 — fila de captura USB-HID fora do ciclo do Z80
- Desafio: O pipeline ainda podia perder ou distorcer transições `press/release` por subamostragem entre o clock de captura USB-HID e o clock de consumo do core, gerando falha intermitente ou repetição contínua em gameplay.
- Solução adotada: a trilha evoluiu em cinco cortes: (1) tool importável em `src/tools/input/` com ring buffer HID e dois cursores independentes (`UI` e `Runtime`); (2) fila própria no runtime do fMSX, drenada ao longo dos scanlines; (3) deduplicação de snapshots ainda pendentes na fila interna do runtime; (4) canonicalização de `raw_keys[6]` para neutralizar reordenação do report HID USB; (5) produtor do kernel orientado a evento, fila runtime ampliada para `128`, deduplicação por matriz MSX desejada, `release` imediato e `press` imediato para teclas críticas de gameplay. Na rodada seguinte, foi restaurado um bridge mínimo `teclado -> joystick` (`arrows + SPACE`) para atender ROMs que leem joystick em vez de matriz de teclado. A variante que deduplicava também contra o "último aplicado" foi descartada por quebrar a confirmação do `press-only`.
- Status: Parcial
- Referência: [187-p1-reduzir-latencia-do-teclado-polling-processamento-por-ciclo.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m17/187-p1-reduzir-latencia-do-teclado-polling-processamento-por-ciclo.md)

### #188 — GRADIUS2E: glitch na 1ª linha do placar (scroll fino V9958)
- Desafio: Primeira linha do placar apresenta deslocamento indevido em MSX2+, sugerindo falha na lógica de R25/R26/R27.
- Solução adotada: Em backlog; exigir disassembly da `ROMS/games/roms/GRADIUS2E.ROM` e comparação com referências em `third_party` (incluindo VHDL do V9958) antes de corrigir.
- Status: Futuro
- Referência: [188-p1-bug-gradius2e-glitch-na-1a-linha-do-placar-scroll-fino-v9958-r25-r26-r27.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m17/188-p1-bug-gradius2e-glitch-na-1a-linha-do-placar-scroll-fino-v9958-r25-r26-r27.md)

### #189 — regressão 60Hz no MSX2/MSX2+ (MSXDIAG detecta 50Hz)
- Desafio: Regressão de frequência detectada no MSXDIAG em MSX2/MSX2+, com risco de novas regressões por ajustes pontuais de timing.
- Solução adotada: Em backlog; corrigir com abordagem definitiva e proteção anti-regressão validando MSX1/MSX2/MSX2+.
- Status: Futuro
- Referência: [189-p0-bug-regressao-60hz-no-msx2-msx2plus-msxdiag-detecta-50hz.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m17/189-p0-bug-regressao-60hz-no-msx2-msx2plus-msxdiag-detecta-50hz.md)

### #201 — Space Manbow 2: crash no gameplay + voice START ausente
- Desafio: Mapper `Manbow2` ainda divergente do comportamento de referência no caminho SCC/MegaFlash, com sintomas de áudio ausente e instabilidade em runtime.
- Solução adotada: Restrição do window SCC do `Manbow2` para `9800h-9FFFh` (sem espelho SCC+ em `B800h-BFFFh`) e separação do latch SCC+ no bank-switch: mantido para `MAP_KONAMI5`, desativado para `MAP_MANBOW2`.
- Status: Parcial
- Referência: [201-bug-space-manbow-2-crash-no-gameplay-e-voice-start-ausente.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m17/201-bug-space-manbow-2-crash-no-gameplay-e-voice-start-ausente.md)

### #219 — fidelidade de render PSG/FM-PAC
- Desafio: O voicing global do mixer melhorou o balanço, mas `PSG` e `FM-PAC` ainda não tiveram uma trilha própria de fidelidade de render; ambos usam caminhos diferentes do `SND_WAVE` que resolveu o caso crítico do `SCC/SCC+`.
- Solução adotada: Diagnóstico inicial fechado com `Xevious`; o gap estrutural principal está no `FM-PAC` default do `fMSX`, que ignora instrumentos e `user tone`. A tentativa de ativar `NukeYKT` por padrão confirmou a hipótese de fidelidade, mas abriu regressão grave de performance no Pi 3B (~31fps), então o default foi revertido. O próximo corte precisa separar fidelidade de custo.
- Status: Em andamento
- Referência: [219-fidelidade-render-psg-fm-pac.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m17/219-fidelidade-render-psg-fm-pac.md)


### #225 — Knightmare Gold: pacing e scroll fino em `50Hz + Turbo OFF`
- Desafio: após corrigir o gate de detecção do `SCROLL SMOOTH`, o `Knightmare Gold` continua com defeitos de pacing no cenário suportado `50Hz + Turbo OFF`: áudio com cortes, flicker forte na primeira faixa de `8px` e salto visual de `-8px` no rollover do scroll fino.
- Solução adotada: abrir trilha separada para atacar apenas pacing/timing do gameplay em `PAL/50Hz`, preservando as invariantes já fechadas (`GRADIUS2E` sem regressão, `IE1 = R#19 - VScroll` e gate do menu do `KMG`).
- Status: Futuro
- Referência: [225-bug-knightmare-gold-pacing-pal50-sem-turbo.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m17/225-bug-knightmare-gold-pacing-pal50-sem-turbo.md)

### #224 — Knightmare Gold: falha na detecção de MSX2+
- Desafio: `Knightmare Gold` detectava `HighSpeed VDP`, `128KB of videoRAM` e `SCC+`, mas ainda caia no menu com `MODE MSX2` e `SCROLL ORIGINAL`, sem liberar o caminho esperado de `SCROLL SMOOTH`.
- Solução adotada: a trilha foi integrada ao fluxo normal da branch `#187`, adicionando o bloco Panasonic/S1985 no runtime fMSX, trace `KMG EVT` via kernel UART e a opcao de diagnostico `Refresh [NTSC/PAL]` apenas em `DEBUG=1`, abaixo de `Disk ROM`, sem quebrar o chaveamento legitimo por `R#9` do VDP.
- Status: Parcial
- Referência: [224-bug-knightmare-gold-falha-deteccao-msx2plus-scroll-fino.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m17/224-bug-knightmare-gold-falha-deteccao-msx2plus-scroll-fino.md)
