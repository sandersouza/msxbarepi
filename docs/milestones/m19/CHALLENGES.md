# Desafios da Milestone

Registro de desafios enfrentados por issue, decisão adotada e status da solução.

## Status
- `Resolvido` = solução aplicada e validada
- `Parcial` = mitigado, requer iteração
- `Futuro` = movido para issue/milestone futura

## Itens por issue

### #160 — [P0] Auditoria legal e técnica do blueMSX para uso baremetal
- Desafio: Consolidar matriz de licença/obrigação sem contaminar assets protegidos no repositório.
- Solução adotada: Em backlog para execução incremental com checklist formal de compliance.
- Status: Futuro
- Referência: [160-auditoria-legal-tecnica-bluemsx-baremetal.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/160-auditoria-legal-tecnica-bluemsx-baremetal.md)

### #161 — [P0] Vendor/sanitização de referência blueMSX + guardrail pristine
- Desafio: Garantir referência upstream íntegra em `third_party` sem alterações diretas.
- Solução adotada: Em backlog com guardrail e trilha de commit/tag de referência.
- Status: Futuro
- Referência: [161-vendor-sanitizacao-referencia-bluemsx-guardrail-pristine.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/161-vendor-sanitizacao-referencia-bluemsx-guardrail-pristine.md)

### #162 — [P0] Spike de viabilidade AArch64 freestanding (recorte de módulos)
- Desafio: Definir recorte mínimo do blueMSX sem SDL/X11/pthread em ambiente freestanding.
- Solução adotada: Em backlog com resultado técnico GO/NO-GO.
- Status: Futuro
- Referência: [162-spike-viabilidade-aarch64-freestanding-recorte-modulos.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/162-spike-viabilidade-aarch64-freestanding-recorte-modulos.md)

### #163 — [P0] Contrato backend v1 + shim de compatibilidade com runtime atual
- Desafio: Introduzir API genérica de backend sem quebrar fluxo atual do fMSX.
- Solução adotada: Em andamento com shim de compatibilidade e feature gate.
- Status: Parcial
- Referência: [163-contrato-backend-v1-shim-compat-runtime.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/163-contrato-backend-v1-shim-compat-runtime.md)

### #164 — [P1] Build mínimo blueMSX core sem SDL/X11/pthread
- Desafio: Obter build do core em AArch64 freestanding com stubs de host mínimos.
- Solução adotada: Em backlog por etapas após spike técnico inicial.
- Status: Futuro
- Referência: [164-build-minimo-bluemsx-sem-sdl-x11-pthread.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/164-build-minimo-bluemsx-sem-sdl-x11-pthread.md)

### #165 — [P1] Host adapter de vídeo HDMI/framebuffer para blueMSX
- Desafio: Integrar pipeline de frame no framebuffer HDMI com flush/cache correto.
- Solução adotada: Em backlog com validação via overlay e smoke visual.
- Status: Futuro
- Referência: [165-host-adapter-video-hdmi-framebuffer-bluemsx.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/165-host-adapter-video-hdmi-framebuffer-bluemsx.md)

### #166 — [P1] Host adapter de áudio HDMI + sincronismo A/V
- Desafio: Integrar áudio com baixa latência sem quebrar sincronismo com vídeo.
- Solução adotada: Em backlog com métricas de underrun/jitter por refresh.
- Status: Futuro
- Referência: [166-host-adapter-audio-hdmi-sync-av-bluemsx.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/166-host-adapter-audio-hdmi-sync-av-bluemsx.md)

### #167 — [P1] Bridge de input USB-HID -> matriz MSX no blueMSX
- Desafio: Preservar teclado/joystick/hotkeys no novo backend.
- Solução adotada: Em backlog com bridge USB-HID para matriz MSX.
- Status: Futuro
- Referência: [167-bridge-input-usb-hid-matriz-msx-bluemsx.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/167-bridge-input-usb-hid-matriz-msx-bluemsx.md)

### #168 — [P1] Storage/media adapter (ROM/DSK/CAS + initramfs externo)
- Desafio: Alinhar loader de mídia e fluxo de initramfs externo sem regressão.
- Solução adotada: Em backlog com validação de persistência mínima.
- Status: Futuro
- Referência: [168-storage-media-adapter-rom-dsk-cas-initramfs.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/168-storage-media-adapter-rom-dsk-cas-initramfs.md)

### #169 — [P2] Suite smoke de compatibilidade + benchmark fMSX vs blueMSX
- Desafio: Definir baseline objetivo para comparar boot/FPS/áudio entre backends.
- Solução adotada: Em backlog com suíte smoke e evidências anexadas.
- Status: Futuro
- Referência: [169-suite-smoke-compat-benchmark-fmsx-vs-bluemsx.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/169-suite-smoke-compat-benchmark-fmsx-vs-bluemsx.md)

### #170 — [P2] Feature gate final + plano de transição/depreciação do fMSX
- Desafio: Definir critérios finais de migração e fallback seguro para operação.
- Solução adotada: Em backlog com critérios de depreciação explícitos.
- Status: Futuro
- Referência: [170-feature-gate-final-transicao-depreciacao-fmsx.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m19/170-feature-gate-final-transicao-depreciacao-fmsx.md)
