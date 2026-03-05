# Desafios da Milestone M10

Registro consolidado da fase de suporte MSX2 (BIOS chain, modelo de maquina e estabilidade de A/V).

## Status
- `Resolvido`: correcao aplicada e validada em hardware.
- `Parcial`: mitigado, com pendencia residual monitorada.
- `Futuro`: movido para issue/milestone futura.

## Itens por issue

### #75 — Modelo MSX1/MSX2 em settings
- Desafio: alternancia de perfil de maquina com persistencia e reflexo no runtime.
- Solucao adotada: seletor de `Machine` no settings com persistencia no CFG e aplicacao no boot/reset.
- Status: Resolvido.
- Referencia: [75-modelo-msx1-msx2-settings-persistencia.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m10/75-modelo-msx1-msx2-settings-persistencia.md)

### #76 — Boot MSX2 com cadeia de BIOS/fallback
- Desafio: BIOS reais de MSX2 com travamentos em combinacoes de ROM; fallback e cadeia de carga precisavam robustez.
- Solucao adotada: cadeia de validacao/fallback reforcada, suporte a conjuntos de ROMs validados e telemetria de boot.
- Status: Parcial (boot estabilizado; ajustes finos de audio/mix ainda em iteracao).
- Referencia: [76-boot-msx2-bios-chain-fallback.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m10/76-boot-msx2-bios-chain-fallback.md)

### #77 — Validar VDP9938 modos de video
- Desafio: preservar aspect ratio/viewport e evitar artefatos de limpeza em trocas de estado.
- Solucao adotada: correcoes de limpeza de framebuffer e harmonizacao de viewport com settings de video.
- Status: Parcial (funcional, com tuning continuo de UI/viewport em paralelo).
- Referencia: [77-validar-vdp9938-modos-video-msx2.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m10/77-validar-vdp9938-modos-video-msx2.md)

### #78 — Suite de regressao de compatibilidade MSX2
- Desafio: consolidar baseline de comportamento entre jogos PSG, SCC e FM-PAC.
- Solucao adotada: uso de casos reais (ex.: Xevious) com telemetria e ajustes por evidencia.
- Status: Parcial (suite em ampliacao; pendente consolidacao final).
- Referencia: [78-suite-regressao-compatibilidade-msx2.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m10/78-suite-regressao-compatibilidade-msx2.md)

### #79 — Telemetria de modelo ativo no overlay
- Desafio: diagnostico de estado de maquina/audio em runtime para depuracao acelerada.
- Solucao adotada: extensao do overlay com campos de modelo/mapper/canais e codigos de carga.
- Status: Resolvido.
- Referencia: [79-telemetria-modelo-ativo-overlay.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m10/79-telemetria-modelo-ativo-overlay.md)
