# Roadmap e Backlog (Port fMSX + Circle no Raspberry Pi 3B)

## Contexto e leitura do scaffold

Esta análise foi feita a partir de:

- `README.md` (raiz)
- `AGENTS.md`
- `scripts/check-toolchain.sh`
- `scripts/make-initramfs.sh`
- `scripts/prepare-sd.sh`
- `docs/debug-overlay-hdmi-template.md`
- `docs/legal/fmsx-authorization.md`
- `docs/legal/email.md`
- `roms/msx1/README.md`
- `third_party/README.md`
- `third_party/circle/README.md`
- `third_party/circle/sample/08-usbkeyboard/README`
- `third_party/circle/sample/34-sounddevices/README`
- `third_party/fmsx/README.md`

Referências de base conceitual já identificadas para o port:

- Circle USB/HID teclado: `third_party/circle/sample/08-usbkeyboard/README`
- Circle áudio HDMI/PWM: `third_party/circle/sample/34-sounddevices/README`
- Circle backend HDMI sound (implementação): `third_party/circle/lib/sound/hdmisoundbasedevice.cpp`
- fMSX core (CPU/VDP/áudio etc.): `third_party/fmsx/fMSX`, `third_party/fmsx/EMULib`, `third_party/fmsx/Z80`, `third_party/fmsx/NukeYKT`

## Diagnóstico rápido do scaffold (importante)

O scaffold descreve um estágio avançado (fMSX + áudio HDMI + presets), porém neste diretório:

- `src/` e `include/` estão vazios (apenas `.DS_Store`)
- `artifacts/` não contém imagens prontas
- o diretório atual não está como repositório Git (`.git` ausente na raiz)

Isso indica que este snapshot está **incompleto** (docs + `Makefile` + third_party + utilitários), então o planejamento abaixo considera:

1. Reconstituição do baseline mínimo primeiro.
2. Depois bring-up M0/M1.
3. Depois integração fMSX.

## Análise dos scripts (scripts/)

### `scripts/check-toolchain.sh`
- Objetivo: validar `gcc`, `ld`, `objcopy` do prefixo `CROSS`.
- Ponto forte: simples e determinístico.
- Ação futura: opcionalmente validar `g++` também, pois Circle requer C++ no caminho de integração.

### `scripts/make-initramfs.sh`
- Objetivo: gerar `cpio` (`newc`) a partir de um diretório de ROMs.
- Ponto forte: ordena arquivos (`sort`) e usa diretório temporário (reprodutibilidade básica).
- Ação futura: opcionalmente validar nomes esperados (`MSX.ROM`, `CARTA.ROM`, etc.) quando usado em preset MSX1.

### `scripts/prepare-sd.sh`
- Objetivo: preparar microSD (macOS), copiar kernel/config/initramfs/firmware.
- Pontos fortes:
  - `DRY_RUN=1`
  - seleção segura com `fzf`
  - CAPTCHA de confirmação
  - cópia automática de `rpi-firmware`
  - geração automática de `msx.cpio`
- Ações futuras:
  - validar presença do `kernel8.img` alvo antes da etapa de formatação (para falhar cedo)
  - adicionar preset/profile explícito (ex.: `PROFILE=hello|fmsx|debug-overlay`)

## Riscos e inconsistências a tratar no backlog

- `roms/msx1/README.md` menciona `scripts/prepare-roms.sh`, mas esse script não existe.
- O README do projeto descreve base avançada, mas o código-fonte local correspondente não está presente.
- `AGENTS.md` orienta não versionar BIOS/ROMs protegidos, porém há ROMs em `roms/msx1/` neste snapshot.
- Como a raiz não está em Git, o backlog abaixo é entregue em formato pronto para criar Issues/Milestones manualmente.

## Estratégia de execução (macro)

### Fase A: Reconstituir baseline
- Garantir árvore mínima compilável (boot, UART, HDMI texto, timer).
- Fechar pipeline de build + deploy SD + boot hardware.

### Fase B: Bring-up de plataforma com Circle como referência
- HDMI vídeo + áudio + USB/HID teclado em paralelo com utilitários de debug.
- Overlay de debug padronizado para diagnósticos de integração.

### Fase C: Integração fMSX
- Core inicial bootando BIOS/ROM via initramfs.
- Frontend de vídeo, input e áudio conectados ao baremetal.

### Fase D: Estabilização
- Performance, sincronismo, qualidade de áudio/vídeo, robustez de input, regressão.

## Convenções sugeridas (GitHub)

### Milestones (GitHub)
- `M0 - Bring-up Circle Base (HDMI+AUDIO+USB HID)`
- `M1 - Debug Overlay HDMI`
- `M2 - fMSX Core Integration (Baremetal + Circle runtime glue)`
- `M3 - Stabilization RC1`
- `M4 - Packaging, Compliance, Reproducibility` (sugestão adicional)

### Labels sugeridas
- `milestone:m0`
- `milestone:m1`
- `milestone:m2`
- `milestone:m3`
- `area:boot`
- `area:video`
- `area:audio`
- `area:input`
- `area:circle`
- `area:fmsx`
- `area:scripts`
- `area:docs`
- `area:legal`
- `type:task`
- `type:spike`
- `type:bug`
- `type:refactor`
- `risk:blocker`

### Branching sugerido
- Branch por issue: `feat/m0-<slug>`, `fix/m1-<slug>`, `spike/m2-<slug>`
- Exemplo:
  - `feat/m0-hdmi-text-console`
  - `feat/m0-hdmi-audio-smoketest`
  - `feat/m0-usb-hid-keyboard`
  - `feat/m1-debug-overlay-template-runtime`
  - `feat/m2-fmsx-core-bootstrap`

## Milestones e backlog (issues)

## M0 - Bring-up Circle Base (HDMI + AUDIO + USB/HID)

Objetivo: boot baremetal no RPi 3B com saída HDMI (vídeo + áudio) e teclado USB/HID funcional, usando Circle como referência conceitual e/ou integração controlada.

### M0.0 - Reconstituir baseline compilável (pré-condição)

#### Issue: Recriar base mínima de código (`boot`, `src`, `include`) compatível com `Makefile`
- Tipo: `type:task`
- Labels: `milestone:m0`, `area:boot`, `area:docs`
- Branch: `feat/m0-rebuild-minimal-baseline`
- Descrição:
  - Recriar arquivos mínimos referenciados no `Makefile` para build de Hello World.
  - Ajustar `Makefile` temporariamente para build incremental se necessário.
- Critérios de aceite:
  - `make clean && make` gera `build/kernel8.img`
  - `scripts/prepare-sd.sh` consegue copiar `kernel8.img` sem warnings críticos
- Dependências: nenhuma

#### Issue: Atualizar `README` e docs para refletir estado real do scaffold
- Tipo: `type:task`
- Labels: `milestone:m0`, `area:docs`
- Branch: `docs/m0-scaffold-state-sync`
- Descrição:
  - Separar “estado alvo” de “estado atual”.
  - Evitar documentação afirmar funcionalidades não presentes no snapshot.
- Critérios de aceite:
  - README deixa claro o que é scaffold vs implementado

### M0.1 - Boot + vídeo HDMI (texto/console)

#### Issue: Implementar boot AArch64 + UART + mailbox framebuffer (Hello HDMI)
- Tipo: `type:task`
- Labels: `milestone:m0`, `area:boot`, `area:video`
- Branch: `feat/m0-boot-uart-hdmi-hello`
- Descrição:
  - Bootstrap assembly (`kernel8.img`) e `kernel_main()` em C.
  - UART de debug auxiliar.
  - Framebuffer HDMI via mailbox com texto de boot na tela.
- Critérios de aceite:
  - Boot em RPi 3B sem OS
  - Mensagem visível em HDMI
  - UART 115200 8N1 com logs de boot
- Referências:
  - Circle screen/framebuffer samples: `third_party/circle/sample/03-screentext/README`

### M0.2 - Timer/loop de atualização estável

#### Issue: Base de timing (system timer/ARM timer) para tick de runtime
- Tipo: `type:task`
- Labels: `milestone:m0`, `area:boot`
- Branch: `feat/m0-timer-runtime-tick`
- Descrição:
  - Implementar timer para pacing de loop e timestamps de debug.
- Critérios de aceite:
  - Tick periódico estável (exibir contador na HDMI/UART)
  - Sem travamento após alguns minutos

### M0.3 - Áudio HDMI (smoke test)

#### Issue: Implementar pipeline PCM mínimo + tom de teste em HDMI
- Tipo: `type:spike`
- Labels: `milestone:m0`, `area:audio`, `area:circle`
- Branch: `spike/m0-hdmi-audio-smoketest`
- Descrição:
  - Reproduzir tom de teste via HDMI (sem depender do fMSX).
  - Base conceitual em `CHDMISoundBaseDevice`.
- Critérios de aceite:
  - Tom audível em monitor/TV com áudio HDMI
  - Logs de estado da init MAI/DMA
- Referências:
  - `third_party/circle/sample/34-sounddevices/README`
  - `third_party/circle/lib/sound/hdmisoundbasedevice.cpp`

#### Issue: Fallback de áudio P2/PWM para diagnóstico (opcional mas recomendado)
- Tipo: `type:task`
- Labels: `milestone:m0`, `area:audio`
- Branch: `feat/m0-audio-pwm-fallback`
- Descrição:
  - Implementar tom de teste em PWM/P2 para isolar falhas de HDMI.
- Critérios de aceite:
  - Tom em P2 com preset de smoketest
- Referências:
  - `third_party/circle/sample/34-sounddevices/README`

### M0.4 - USB Host + HID teclado

#### Issue: Bring-up USB host + enumeração de dispositivos
- Tipo: `type:task`
- Labels: `milestone:m0`, `area:input`, `area:circle`
- Branch: `feat/m0-usb-host-enumeration`
- Descrição:
  - Inicializar host USB e logar dispositivos encontrados.
- Critérios de aceite:
  - Vendor/Product ID visíveis em HDMI/UART
  - Hotplug básico (se suportado na etapa)
- Referências:
  - `third_party/circle/sample/05-usbsimple/README`

#### Issue: Teclado USB/HID funcional (echo + mapa de teclas)
- Tipo: `type:task`
- Labels: `milestone:m0`, `area:input`, `area:circle`
- Branch: `feat/m0-usb-hid-keyboard`
- Descrição:
  - Capturar teclas e exibir eventos/ASCII na HDMI.
  - Definir mapa inicial (US/ABNT provisório documentado).
- Critérios de aceite:
  - Digitação aparece em tela
  - Teclas especiais principais documentadas
- Referências:
  - `third_party/circle/sample/08-usbkeyboard/README`

### M0.5 - Integração operacional (SD workflow)

#### Issue: Integrar fluxo de SD (`prepare-sd`) com presets M0
- Tipo: `type:task`
- Labels: `milestone:m0`, `area:scripts`, `area:docs`
- Branch: `feat/m0-sd-workflow-presets`
- Descrição:
  - Garantir que `scripts/prepare-sd.sh` copie todos os arquivos do boot M0.
  - Documentar uso de `DRY_RUN=1`.
- Critérios de aceite:
  - Procedimento M0 documentado em `docs/`
  - Dry-run e execução real com passos claros

## M1 - Debug Overlay HDMI (runtime)

Objetivo: criar overlay visual padronizado para depuração em runtime, sem depender de UART, preservando legibilidade com MMU/cache ativos.

### M1.1 - Infraestrutura do overlay

#### Issue: Implementar painel de debug HDMI seguindo template validado
- Tipo: `type:task`
- Labels: `milestone:m1`, `area:video`, `area:docs`
- Branch: `feat/m1-debug-overlay-runtime`
- Descrição:
  - Implementar painel 4 linhas conforme `docs/debug-overlay-hdmi-template.md`.
  - Desenho pós-frame, caixa opaca, flush por retângulo com throttle.
- Critérios de aceite:
  - Overlay legível sem corromper framebuffer
  - Sem uso concorrente de `console_puts()` no runtime visual
- Referências:
  - `docs/debug-overlay-hdmi-template.md`

### M1.2 - Canais de diagnóstico (input/audio/main loop)

#### Issue: Expor getters escalares para debug (input/audio/loop)
- Tipo: `type:task`
- Labels: `milestone:m1`, `area:input`, `area:audio`
- Branch: `feat/m1-debug-getters-scalars`
- Descrição:
  - Evitar getters que copiam structs grandes.
  - Expor counters/flags para overlay.
- Critérios de aceite:
  - Overlay mostra estados de input, eventos HID e loop sem travar

#### Issue: Criar presets de debug visual e text-only
- Tipo: `type:task`
- Labels: `milestone:m1`, `area:video`, `area:scripts`
- Branch: `feat/m1-debug-presets`
- Descrição:
  - Presets de build para overlay completo e modo `text-only`.
- Critérios de aceite:
  - `make` com presets gera imagens distintas e documentadas

## M2 - fMSX em baremetal com Circle (mantendo M0)

Objetivo: fazer o fMSX bootar e rodar em baremetal no RPi 3B com vídeo, áudio e teclado, preservando o que foi estabelecido em M0.

### M2.1 - Integração do core e bootstrap do fMSX

#### Issue: Definir estratégia de integração do fMSX (upstream vs cópia adaptada)
- Tipo: `type:task`
- Labels: `milestone:m2`, `area:fmsx`, `area:legal`, `area:docs`
- Branch: `feat/m2-fmsx-integration-strategy`
- Descrição:
  - Manter `third_party/fmsx` intacto.
  - Criar camada glue/adapter fora de `third_party`.
  - Documentar arquivos upstream consultados.
- Critérios de aceite:
  - Documento de arquitetura de integração
  - Lista de arquivos upstream referenciados

#### Issue: Portar bootstrap do fMSX para runtime baremetal (sem libc/OS)
- Tipo: `type:task`
- Labels: `milestone:m2`, `area:fmsx`, `area:boot`
- Branch: `feat/m2-fmsx-core-bootstrap`
- Descrição:
  - Inicialização do core, hooks de IO, vídeo, input, timing e áudio.
  - Remover dependências de host/RetroArch/libc não suportadas.
- Critérios de aceite:
  - Core inicializa sem crash
  - Entra no loop de emulação

### M2.2 - Carregamento de BIOS/ROM via initramfs

#### Issue: Loader de initramfs CPIO para BIOS/cartuchos/discos
- Tipo: `type:task`
- Labels: `milestone:m2`, `area:fmsx`, `area:scripts`
- Branch: `feat/m2-initramfs-rom-loader`
- Descrição:
  - Ler `msx.cpio` e localizar BIOS/ROMs por nome.
  - Integrar com `scripts/make-initramfs.sh` e `prepare-sd.sh`.
- Critérios de aceite:
  - fMSX consegue carregar `MSX.ROM`
  - Cartucho `CARTA.ROM` opcional detectado

#### Issue: Política de ROMs (compliance) e fluxo local não-versionado
- Tipo: `type:task`
- Labels: `milestone:m2`, `area:legal`, `area:docs`, `area:scripts`
- Branch: `docs/m2-rom-compliance-workflow`
- Descrição:
  - Remover necessidade de ROMs versionadas no repositório.
  - Padronizar uso de pasta local ignorada + geração de `msx.cpio`.
- Critérios de aceite:
  - `README`/`roms/msx1/README.md` atualizados
  - Sem instruções contraditórias com `AGENTS.md`

### M2.3 - Frontend de vídeo/input/áudio do emulador

#### Issue: Frontend de vídeo (blit framebuffer, escala, bordas)
- Tipo: `type:task`
- Labels: `milestone:m2`, `area:video`, `area:fmsx`
- Branch: `feat/m2-fmsx-video-frontend`
- Descrição:
  - Converter saída do VDP para framebuffer HDMI.
  - Implementar escala e letterbox previsíveis.
- Critérios de aceite:
  - BIOS MSX exibida corretamente
  - Sem artefatos graves de stride/alinhamento

#### Issue: Mapeamento teclado USB/HID -> matriz de teclado MSX
- Tipo: `type:task`
- Labels: `milestone:m2`, `area:input`, `area:fmsx`
- Branch: `feat/m2-msx-keyboard-matrix`
- Descrição:
  - Traduzir eventos HID para matriz do MSX.
  - Documentar layout e limitações iniciais.
- Critérios de aceite:
  - Navegação no BASIC e digitação funcional

#### Issue: Áudio do fMSX para backend HDMI/PWM (pipeline PCM)
- Tipo: `type:task`
- Labels: `milestone:m2`, `area:audio`, `area:fmsx`
- Branch: `feat/m2-fmsx-audio-pipeline`
- Descrição:
  - Integrar mixagem do fMSX ao backend PCM do projeto.
  - Primeiro alvo: PSG; expansão FM/SCC depois.
- Critérios de aceite:
  - Som audível em jogo/BIOS compatível
  - Sem underrun contínuo

### M2.4 - Presets e diagnóstico

#### Issue: Presets de build para integração fMSX (safe/debug/perf)
- Tipo: `type:task`
- Labels: `milestone:m2`, `area:scripts`, `area:docs`
- Branch: `feat/m2-build-presets`
- Descrição:
  - Criar presets explícitos para bring-up, debug overlay e performance.
- Critérios de aceite:
  - `README` documenta knobs e presets com objetivo de uso

## M3 - Estabilização da primeira release minimamente funcional (RC1)

Objetivo: consolidar uma release utilizável em hardware real com velocidade aceitável, vídeo sem artefatos, áudio estável e teclado confiável.

### M3.1 - Performance e pacing

#### Issue: Medir FPS/tempo de boot e criar baseline de desempenho
- Tipo: `type:task`
- Labels: `milestone:m3`, `area:video`, `area:docs`
- Branch: `feat/m3-performance-baseline`
- Descrição:
  - Medir tempo até BASIC e throughput de frames.
  - Registrar resultados em hardware RPi 3B.
- Critérios de aceite:
  - Tabela de métricas em `docs/`
  - Método de medição reproduzível

#### Issue: Otimizar blit/render + knobs de build documentados
- Tipo: `type:task`
- Labels: `milestone:m3`, `area:video`, `area:fmsx`
- Branch: `feat/m3-render-optimization-knobs`
- Descrição:
  - Manter trade-offs explícitos no `Makefile`.
  - Otimizar hot paths sem perder estabilidade.
- Critérios de aceite:
  - Ganho mensurável com preset otimizado
  - Preset estável mantido

### M3.2 - Qualidade de vídeo e estabilidade visual

#### Issue: Corrigir artefatos de framebuffer/cache/flush
- Tipo: `type:bug`
- Labels: `milestone:m3`, `area:video`, `risk:blocker`
- Branch: `fix/m3-framebuffer-artifacts`
- Descrição:
  - Tratar coerência de cache e flushing por região.
- Critérios de aceite:
  - Sem tearing/corrupção textual recorrente no overlay
  - Blit estável por sessão de teste prolongada

### M3.3 - Qualidade de áudio

#### Issue: Estabilizar bufferização de áudio HDMI (DMA/latência)
- Tipo: `type:task`
- Labels: `milestone:m3`, `area:audio`, `risk:blocker`
- Branch: `feat/m3-audio-hdmi-stability`
- Descrição:
  - Ajustar tamanho de buffers, pacing e tratamento de underrun/overrun.
- Critérios de aceite:
  - Sem glitches frequentes em teste de 10+ min
  - Logs/overlay com métricas de underrun

### M3.4 - Input e usabilidade

#### Issue: Mapeamento de teclado MSX refinado (incluindo teclas especiais)
- Tipo: `type:task`
- Labels: `milestone:m3`, `area:input`
- Branch: `feat/m3-keymap-refinement`
- Descrição:
  - Refinar mapeamento de teclas especiais (SHIFT/CTRL/GRAPH/F-keys).
- Critérios de aceite:
  - Checklist de teclado aprovado em BASIC e pelo menos 1 jogo

### M3.5 - RC1 e regressão

#### Issue: Checklist de release RC1 (boot, vídeo, áudio, input)
- Tipo: `type:task`
- Labels: `milestone:m3`, `area:docs`
- Branch: `docs/m3-rc1-checklist`
- Descrição:
  - Checklist manual objetivo por feature.
  - Procedimento de validação em hardware antes de release.
- Critérios de aceite:
  - `make clean && make` (ou preset principal) validado
  - Teste em RPi 3B registrado

## M4 - Packaging, Compliance, Reproducibility (sugestão adicional)

Objetivo: tornar o projeto reproduzível por terceiros e alinhado às restrições legais.

#### Issue: Inventário fixado de `third_party` com commits e licenças
- Tipo: `type:task`
- Labels: `milestone:m4`, `area:docs`, `area:legal`
- Branch: `docs/m4-third-party-locks`
- Descrição:
  - Registrar commits usados (`circle`, `fmsx`) e obrigações de licença.
  - Atualizar `third_party/README.md`.
- Critérios de aceite:
  - Commits fixados documentados
  - Licenças/restrições listadas

#### Issue: Fluxo clean-room para ROMs/BIOS (sem versionar assets)
- Tipo: `type:task`
- Labels: `milestone:m4`, `area:legal`, `area:scripts`, `area:docs`
- Branch: `feat/m4-rom-import-workflow`
- Descrição:
  - Criar fluxo de import local (`roms.local/` ou similar) ignorado por Git.
  - `make-initramfs.sh` e `prepare-sd.sh` aceitam caminho configurável.
- Critérios de aceite:
  - Projeto roda sem exigir ROMs no repositório
  - Docs de setup ficam consistentes

#### Issue: CI local/smoke (lint de scripts + validação de assets esperados)
- Tipo: `type:task`
- Labels: `milestone:m4`, `area:scripts`
- Branch: `feat/m4-local-smoke-checks`
- Descrição:
  - Script simples para validar toolchain, presença de third_party, firmware e ROMs (sem expor conteúdo).
- Critérios de aceite:
  - Um comando retorna checklist de pré-requisitos

## Ordem recomendada de execução (prática)

1. `M0.0` reconstituir baseline compilável
2. `M0.1` boot + HDMI Hello
3. `M0.4` USB/HID teclado (enumeração + teclado)
4. `M0.3` áudio HDMI smoketest (+ fallback PWM)
5. `M1` overlay de debug
6. `M2` integração fMSX (core -> initramfs -> vídeo/input -> áudio)
7. `M3` estabilização e RC1
8. `M4` compliance/reprodutibilidade (pode rodar em paralelo parcialmente)

## Próximo passo sugerido (imediato)

Abrir as primeiras issues de execução:

1. `M0.0` Recriar baseline compilável
2. `M0.1` Boot+UART+HDMI Hello
3. `M0.4` USB host enumeração
4. `M0.3` HDMI audio smoketest
5. `M1.1` Overlay debug HDMI (template)

