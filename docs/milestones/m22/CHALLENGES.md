# Desafios da Milestone

Registro de desafios enfrentados por issue, decisao adotada e status da solucao.

## Status
- `Resolvido` = solucao aplicada e validada
- `Parcial` = mitigado, requer iteracao
- `Futuro` = movido para issue/milestone futura

## Itens por issue

### #194 — perfil de maquina Master System no runtime
- Desafio: introduzir um console novo no runtime sem contaminar o fluxo de boot/perfil existente do MSX com condicionais difusas.
- Solucao adotada: planejar profile/capabilities dedicados e isolar boot/reset do SMS desde a base.
- Status: Futuro
- Referencia: [194-introduzir-perfil-maquina-master-system-runtime-baremetal.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m22/194-introduzir-perfil-maquina-master-system-runtime-baremetal.md)

### #195 — loader de ROM e mapa basico de memoria
- Desafio: carregar `.sms`/`.rom` no fluxo atual de midia sem quebrar o pipeline de ROMs MSX e com fallback para headers incompletos.
- Solucao adotada: separar bring-up de carga/memoria base antes da fase de mapeadores especiais.
- Status: Futuro
- Referencia: [195-loader-rom-master-system-mapa-basico-memoria.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m22/195-loader-rom-master-system-mapa-basico-memoria.md)

### #196 — mapeadores prioritarios de cartucho
- Desafio: cobrir o minimo de compatibilidade real de SMS sem abrir o escopo para todos os mapeadores e acessorios logo na primeira iteracao.
- Solucao adotada: priorizar Sega mapper padrao e Codemasters, deixando casos especiais para backlog futuro.
- Status: Futuro
- Referencia: [196-mapeadores-prioritarios-cartucho-master-system.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m22/196-mapeadores-prioritarios-cartucho-master-system.md)

### #197 — pipeline de video/VDP do Master System
- Desafio: adaptar o caminho de render para o SMS mantendo coerencia com o framebuffer HDMI atual e sem regressao de infraestrutura.
- Solucao adotada: atacar primeiro timing/resolucao, background, sprites e scroll no recorte minimo jogavel.
- Status: Futuro
- Referencia: [197-pipeline-video-vdp-modos-graficos-master-system.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m22/197-pipeline-video-vdp-modos-graficos-master-system.md)

### #198 — input Master System no bridge USB-HID
- Desafio: mapear pad de 2 botoes e pause/reset no pipeline atual sem introduzir confusao com a matriz de input do MSX.
- Solucao adotada: criar estado/logica propria de SMS e manter o bridge USB-HID como camada de traducao.
- Status: Futuro
- Referencia: [198-input-master-system-bridge-usb-hid.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m22/198-input-master-system-bridge-usb-hid.md)

### #199 — audio SN76489 no pipeline HDMI
- Desafio: integrar o chip de audio do SMS ao host atual sem perder sincronismo global de A/V.
- Solucao adotada: isolar bring-up do SN76489 e validar no mix/fila atual antes de perseguir fidelidade fina.
- Status: Futuro
- Referencia: [199-audio-sn76489-pipeline-hdmi-msxbarepi.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m22/199-audio-sn76489-pipeline-hdmi-msxbarepi.md)

### #200 — smoke suite e matriz de compatibilidade SMS
- Desafio: evitar “funciona na minha ROM” e fechar a milestone com validacao repetivel no hardware real.
- Solucao adotada: exigir conjunto pequeno de ROMs de referencia, roteiro de smoke test e matriz documentada de compatibilidade/limites.
- Status: Futuro
- Referencia: [200-smoke-suite-matriz-compatibilidade-roms-master-system.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m22/200-smoke-suite-matriz-compatibilidade-roms-master-system.md)
