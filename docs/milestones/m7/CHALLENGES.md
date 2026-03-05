# Desafios da Milestone M7

Registro consolidado dos desafios enfrentados nesta milestone de estabilizacao/performance da beta publica.

## Status
- `Resolvido`: correcao aplicada e validada em hardware.
- `Parcial`: mitigado, com pendencia residual monitorada.
- `Futuro`: movido para issue/milestone futura.

## Itens por issue

### #34 — Otimizar velocidade de boot
- Desafio: tempo de subida ate o runtime ainda alto para fluxo de teste.
- Solucao adotada: instrumentacao de `BT` no overlay, reducao de caminho de boot e ajustes de init diferido.
- Status: Resolvido.
- Referencia: [34-otimizar-velocidade-boot-kernel8-img.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/34-otimizar-velocidade-boot-kernel8-img.md)

### #35 — Fastboot/Gameboot
- Desafio: perfis de boot com comportamento inconsistente (uso indevido de fallback BIOS, corte de burst fora do ponto).
- Solucao adotada: separar regras NORM/FAST/GAME, FAST com corte por frame, GAME forcando C-BIOS estatica e reboot previsivel.
- Status: Resolvido.
- Referencia: [35-fastboot-gameboot.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/35-fastboot-gameboot.md)

### #36 — Aceleracao de frontend de video
- Desafio: queda forte de FPS com combinacoes Widescreen+Overscan+Scanline.
- Solucao adotada: otimizacoes no renderer, pacing e limites de 60fps, com iteracao por benchmark em hardware.
- Status: Resolvido.
- Referencia: [36-acelerar-frontend-video-framebuffer.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/36-acelerar-frontend-video-framebuffer.md)

### #37 — Fila de audio HDMI
- Desafio: cortes entre frames e risco de lixo de audio em reset.
- Solucao adotada: refinamento de refill/prime de silencio antes de reset e tuning de fila.
- Status: Resolvido.
- Referencia: [37-ajustar-fila-audio-hdmi.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/37-ajustar-fila-audio-hdmi.md)

### #38 — Rotina HID teclado
- Desafio: necessidade de limpeza/isolamento da camada de leitura/conversao.
- Solucao adotada: refatoracao para modulo dedicado e validacao sem regressao funcional.
- Status: Resolvido.
- Referencia: [38-otimizar-rotina-hid-teclado.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/38-otimizar-rotina-hid-teclado.md)

### #39 — Frame pacing e jitter
- Desafio: variacao perceptivel de cadencia sob carga.
- Solucao adotada: ajustes de pacing e sincronismo com meta de estabilidade em 50/60Hz.
- Status: Resolvido.
- Referencia: [39-frame-pacing-reduzir-jitter.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/39-frame-pacing-reduzir-jitter.md)

### #40 — Suite benchmark regressao
- Desafio: faltava baseline formal para comparar mudancas de performance.
- Solucao adotada: consolidacao da suite de regressao e uso no fluxo de validacao.
- Status: Resolvido.
- Referencia: [40-suite-benchmark-regressao-performance.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/40-suite-benchmark-regressao-performance.md)

### #41 — 50/60Hz no settings
- Desafio: manter audio/video estaveis em ambos os padroes.
- Solucao adotada: opcao NTSC/PAL no menu com lock de FPS alvo e audio estavel.
- Status: Resolvido.
- Referencia: [41-opcao-50-60hz-settings.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/41-opcao-50-60hz-settings.md)

### #42 — Turbo Z80
- Desafio: oferecer perfis DES/PAN/MAX sem quebrar sincronismo global.
- Solucao adotada: implementacao com clocks alvo por perfil e validacao em programa BASIC/jogos.
- Status: Resolvido.
- Referencia: [42-turbo-z80-des-pan-max.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/42-turbo-z80-des-pan-max.md)

### #47 — SCC no settings + ajustes de menu
- Desafio: incluir toggles de audio/cartucho e padronizar layout de menu.
- Solucao adotada: item SCC no settings, organizacao de secoes e alinhamentos.
- Status: Resolvido.
- Referencia: [47-scc-cart-menu-margens-gravar.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/47-scc-cart-menu-margens-gravar.md)

### #48 — Persistencia de settings
- Desafio: backend inicial de gravacao travava em diferentes dispositivos de boot.
- Solucao adotada: endurecimento da escrita/leitura FAT32 e telemetria de estagios para diagnostico.
- Status: Parcial (persistencia estabilizada; backlog separado para evolucao adicional).
- Referencia: [48-settings-persistence-save-load.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/48-settings-persistence-save-load.md)

### #50 — Persistencia FAT32 robusta
- Desafio: robustez da gravacao com cenarios USB/SD mistos e arquivo ausente/corrompido.
- Solucao adotada: fallback seguro, criacao de CFG quando ausente e tratamento de erro por estagio.
- Status: Resolvido.
- Referencia: [50-persistencia-fat32-robusta-sd.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/50-persistencia-fat32-robusta-sd.md)

### #53 — Rensha/autofire
- Desafio: inconsistencias de repeticao e conflito com mapeamento de espaco.
- Solucao adotada: mover rensha para FIREA (estilo Panasonic), perfis de velocidade e fix de conflito com digitacao no BASIC.
- Status: Resolvido.
- Referencia: [53-rensha-autofire-space-settings.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m7/53-rensha-autofire-space-settings.md)
