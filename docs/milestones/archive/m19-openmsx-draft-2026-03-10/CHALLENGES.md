# Desafios da Milestone

Registro de desafios enfrentados por issue, decisão adotada e status da solução.

## Status
- `Resolvido` = solução aplicada e validada
- `Parcial` = mitigado, requer iteração
- `Futuro` = movido para issue/milestone futura

## Itens por issue

### #139 — spike técnico de viabilidade openMSX baremetal
- Desafio: Definir recorte viável do openMSX sem acoplamento a stack desktop.
- Solução adotada: Em backlog; executar spike de arquitetura e dependências.
- Status: Futuro
- Referência: [139-spike-viabilidade-openmsx-baremetal-rpi3b.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/139-spike-viabilidade-openmsx-baremetal-rpi3b.md)

### #140 — vendor upstream openMSX + compliance
- Desafio: Integrar upstream em `third_party` com guardrails e trilha de licença.
- Solução adotada: Em backlog; pin de commit + documentação de compliance.
- Status: Futuro
- Referência: [140-vendor-upstream-openmsx-third-party-compliance.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/140-vendor-upstream-openmsx-third-party-compliance.md)

### #141 — build mínimo openMSX core (sem SDL/OS)
- Desafio: Ajustar toolchain/build para modo freestanding no kernel atual.
- Solução adotada: Em backlog; alvo dedicado e resolução de dependências mínimas.
- Status: Futuro
- Referência: [141-build-minimo-openmsx-core-sem-sdl-os.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/141-build-minimo-openmsx-core-sem-sdl-os.md)

### #142 — camada host openMSX vídeo HDMI/framebuffer
- Desafio: Mapear saída de vídeo do openMSX para viewport/framebuffer atual sem regressão visual.
- Solução adotada: Em backlog; definir contrato de surface + blit e pacing.
- Status: Futuro
- Referência: [142-camada-host-openmsx-video-hdmi-framebuffer.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/142-camada-host-openmsx-video-hdmi-framebuffer.md)

### #143 — camada host openMSX áudio HDMI + sync A/V
- Desafio: Integrar áudio com baixa latência e sincronismo de refresh 50/60Hz.
- Solução adotada: Em backlog; adaptar mixer/fila HDMI e validar jitter.
- Status: Futuro
- Referência: [143-camada-host-openmsx-audio-hdmi-sync-av.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/143-camada-host-openmsx-audio-hdmi-sync-av.md)

### #144 — camada host openMSX input USB-HID
- Desafio: Preservar comportamento de teclado/joystick e hotkeys no novo backend.
- Solução adotada: Em backlog; implementar bridge de input com matriz MSX.
- Status: Futuro
- Referência: [144-camada-host-openmsx-input-usb-hid-mapeamento.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/144-camada-host-openmsx-input-usb-hid-mapeamento.md)

### #145 — storage/media adapter openMSX
- Desafio: Reusar fluxo de navegador/slots/drives para ROM/DSK no backend openMSX.
- Solução adotada: Em backlog; adaptar APIs de carga e persistência de mídia.
- Status: Futuro
- Referência: [145-storage-media-adapter-openmsx-rom-dsk-sd.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/145-storage-media-adapter-openmsx-rom-dsk-sd.md)

### #146 — feature gate fMSX/openMSX com fallback
- Desafio: Permitir rollout gradual sem quebrar estabilidade atual.
- Solução adotada: Em backlog; gate de build + fallback automático para fMSX.
- Status: Futuro
- Referência: [146-feature-gate-backend-fmsx-openmsx-fallback.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/146-feature-gate-backend-fmsx-openmsx-fallback.md)

### #147 — suíte smoke de compatibilidade openMSX
- Desafio: Definir baseline mínimo reproduzível de ROM/DSK para aceitação funcional.
- Solução adotada: Em backlog; matriz inicial de compatibilidade por título.
- Status: Futuro
- Referência: [147-compatibilidade-minima-openmsx-suite-smoke-rom-dsk.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/147-compatibilidade-minima-openmsx-suite-smoke-rom-dsk.md)

### #148 — benchmark comparativo fMSX vs openMSX
- Desafio: Medir performance de forma equivalente e útil para decisão de migração.
- Solução adotada: Em backlog; relatório objetivo de boot/FPS/áudio.
- Status: Futuro
- Referência: [148-benchmark-comparativo-fmsx-openmsx-boot-fps-audio.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/148-benchmark-comparativo-fmsx-openmsx-boot-fps-audio.md)

### #149 — documentação de transição e depreciação do fMSX
- Desafio: Consolidar critérios de saída e roadmap de depreciação sem perder fallback.
- Solução adotada: Em backlog; documentação final por fases.
- Status: Futuro
- Referência: [149-documentacao-transicao-roadmap-depreciacao-fmsx.md](/Users/sandersouza/Developer/msxbarepi-circle/docs/milestones/m19/149-documentacao-transicao-roadmap-depreciacao-fmsx.md)
