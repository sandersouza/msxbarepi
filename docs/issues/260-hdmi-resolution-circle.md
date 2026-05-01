# Melhorar deteccao HDMI, escala e troca de resolucao on-the-fly via Circle

Issue remota: #260
URL: https://github.com/sandersouza/msxbarepi/issues/260

## Contexto

O pipeline atual de video precisa evoluir para detectar melhor a resolucao HDMI disponivel, ajustar escala de forma previsivel e permitir mudanca de resolucao em runtime usando os recursos do Circle quando tecnicamente viavel.

Essa trilha deve preservar o alvo baremetal no Raspberry Pi 3B, sem modificar diretamente `third_party/circle`, e deve consultar as APIs/classes de video do Circle antes de introduzir logica propria.

## Objetivo

- Auditar como o projeto inicializa framebuffer/HDMI hoje e onde a resolucao e a escala sao decididas.
- Consultar `third_party/circle` para identificar APIs ou padroes existentes de deteccao de modo HDMI, configuracao de framebuffer e troca de modo.
- Melhorar a selecao inicial de resolucao HDMI com fallback deterministico.
- Ajustar a escala para manter proporcao e area util coerente nos modos suportados.
- Investigar e implementar, se viavel, mudanca de resolucao on-the-fly sem reinicializar o sistema.
- Documentar limites tecnicos quando alguma troca on-the-fly depender de reinit parcial, flush especifico ou nao for segura no estado atual.

## Escopo tecnico inicial

- Area principal: video/framebuffer/HDMI.
- Integracao esperada com configuracoes de runtime e menu, se a troca de resolucao for exposta ao usuario.
- Debug: usar UART e/ou overlay HDMI quando necessario para registrar modo detectado, modo aplicado, escala efetiva e fallback usado.
- Referencia obrigatoria: `third_party/circle` para APIs e comportamento de video.

## Fora de escopo inicial

- Reescrever o backend de renderizacao do emulador.
- Modificar diretamente `third_party/circle`.
- Garantir suporte universal a todo modo HDMI/TV antes de validar os modos prioritarios no Raspberry Pi 3B.

## Definition of Ready

- Mapear os pontos atuais de inicializacao de video/framebuffer no codigo do projeto.
- Identificar as classes/APIs relevantes do Circle para deteccao/configuracao de modos HDMI.
- Definir uma lista curta de modos prioritarios para validacao inicial, incluindo fallback seguro.
- Confirmar como a escala atual e aplicada no blit/render final.

## Definition of Done

- Resolucao HDMI inicial e escolhida com fallback claro e rastreavel.
- Escala efetiva preserva proporcao e evita corte/truncamento inesperado nos modos validados.
- Mudanca de resolucao on-the-fly implementada quando viavel, ou documentada com restricoes tecnicas e alternativa segura quando nao viavel.
- Telemetria minima registra modo detectado, modo aplicado, escala e fallback.
- Documentacao tecnica atualizada com comportamento, comandos/flags afetados e referencias do Circle consultadas.
- Build local passa e artefatos esperados da branch de issue sao gerados.

## Checklist

- [x] Auditar inicializacao atual de HDMI/framebuffer.
- [x] Auditar referencias relevantes em `third_party/circle`.
- [x] Definir modelo de modos suportados e fallback.
- [x] Ajustar calculo/aplicacao de escala.
- [x] Validar estrategia de troca on-the-fly.
- [x] Implementar telemetria de modo/escala.
- [x] Atualizar docs e handoff da branch.
- [x] Rodar build local.

## Atualizacao 2026-04-29

- `Resolution [720/768]` foi substituido por `Proportion [16:9/4:3]`.
- `16:9` aplica framebuffer `960x540`; `4:3` aplica framebuffer `640x480`.
- O resize e feito via Circle (`CComboScreenDevice::Resize()`) no boot, antes do start do emulador, e tambem ao alternar pelo menu.
- `proportion=16:9|4:3` passa a ser salvo em `msx.cfg`/RAW; `config.txt` nao e alterado por essa opcao.
- Leitura defensiva aceita `resolution=720/768` como migracao.
- `Save to Disk` foi removido do `Settings`; ao sair de `Settings` com `ESC` ou fechar o menu com `F12` dentro de `Settings`, as alteracoes sao salvas automaticamente em `msx.cfg`/RAW.
- O header `SETTINGS` foi removido da view `Settings`, mantendo margens superior/inferior simetricas para reduzir a altura do menu sem reduzir a fonte.
- O fullscreen do viewport agora escolhe o maior fator que cabe em largura e altura em passos de `1/16x`, preservando proporcao e mantendo o presenter em escala cacheavel.
- Validacao local passou em `DEBUG=1`, `DEBUG=0` e `make -n sdcard`.
- Build final para teste: `BUILD_BID: 202604291401-c386661`, `TXTDBG BUILD:3260`, `BUILD_HASH:c386661`.

## Atualizacao 2026-04-30

- `Settings -> Proportion` foi removido.
- O runtime mantem sempre `4:3` via Circle (`640x480`).
- `msx.cfg`/RAW nao gravam mais `proportion=`.
- Chaves antigas `proportion=`/`resolution=` sao ignoradas e normalizadas para `4:3`.
- `config.txt` nao e alterado por essa mudanca.
- Teste anterior: framebuffer Circle `768x576`, area ativa MSX `256x192` com scale fullscreen `3.00x`.
- Build final para teste: `BUILD_BID: 202604301855-f66027e`, `TXTDBG BUILD:E04E`, `BUILD_HASH:f66027e`.

## Atualizacao 2026-04-30 - framebuffer fixo 640x480

- O framebuffer Circle volta a ficar fixo em `640x480`.
- O presenter escala a area ativa selecionada do emulador para preencher `640x480`.
- V9990/GFX9000 nao usa crop classico `256x192`; B4 `768x480` e reduzido horizontalmente para `640x480`.
- `config.txt` nao e alterado.
- Build final para teste: `BUILD_BID: 202604301940-f66027e`, `TXTDBG BUILD:0D37`, `BUILD_HASH:f66027e`.

## Atualizacao 2026-04-30 - framebuffer fixo 720x576

- O framebuffer Circle passa a ficar fixo em `720x576`.
- O presenter escala a area ativa selecionada do emulador para preencher `720x576`.
- Modos comuns de `192` linhas usam base vertical `3.00x`.
- V9990/GFX9000 continua sem crop classico `256x192`; B4 e redimensionado para `720x576`.
- `config.txt` nao e alterado.
- Build final para teste: `BUILD_BID: 202604301950-f66027e`, `TXTDBG BUILD:CFEC`, `BUILD_HASH:f66027e`.

## Atualizacao 2026-04-30 - audio Rally-X

- O teste de pacing foi revertido em hardware por causar musica picotada em `RALLYX.ROM`.
- O runtime de audio agora completa o saldo de amostras do frame quando ja houve renderizacao parcial por escrita no PSG.
- Isso evita underproduction do ring buffer em jogos que atualizam PSG durante o frame.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=1`.
- Build DEBUG=1: `BUILD_BID: 202604302034-f66027e`, `TXTDBG BUILD:8D39`, `BUILD_HASH:f66027e`, artefato `artifacts/kernel8-default.img`.

## Atualizacao 2026-04-30 - audio sem zero-fill

- A gravacao da build `8D39` ainda apresentou picotes.
- `RefillAudioQueue()` passou a limitar o pull ao `ring_level` do backend e a escrever na HDMI somente as amostras recebidas do fMSX.
- O kernel nao completa mais com zeros os lotes em que o backend entrega menos amostras que o pedido.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=1`.
- Build DEBUG=1: `BUILD_BID: 202604302120-f66027e`, `TXTDBG BUILD:7276`, `BUILD_HASH:f66027e`, artefato `artifacts/kernel8-default.img`.

## Atualizacao 2026-04-30 - audio por relogio de ciclos

- A build `7276` ainda apresentou quebra leve em intervalos fixos de frames no `RALLYX.ROM`.
- O teste de zero-fill no kernel foi revertido.
- O fechamento de audio no fim do frame agora usa `fmsx_audio_render_to_cpu_now()`, mantendo o mesmo carimbo/carry de ciclos das escritas PSG.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=1`.
- Build DEBUG=1: `BUILD_BID: 202604302136-f66027e`, `TXTDBG BUILD:688E`, `BUILD_HASH:f66027e`, artefato `artifacts/kernel8-default.img`.

## Atualizacao 2026-04-30 - V-SYNC pos flip

- Sintoma: tearing visual similar a V-SYNC desligado.
- `CComboScreenDevice::PresentIfDirty()` agora espera V-SYNC antes e depois de `SetVirtualOffset()`.
- A segunda espera acontece antes de reutilizar a pagina antiga como backbuffer, reduzindo risco de escrita em pagina ainda visivel.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=1`.
- Build DEBUG=1: `BUILD_BID: 202604302143-f66027e`, `TXTDBG BUILD:975E`, `BUILD_HASH:f66027e`, artefato `artifacts/kernel8-default.img`.

## Atualizacao 2026-04-30 - MSX1 sempre NTSC no boot

- O perfil `MSX1` agora ignora persistencia de `refresh=` ao normalizar settings, voltando sempre para `NTSC` no boot.
- Ao salvar `msx.cfg` com `machine=0`, o payload nao grava mais `refresh=`.
- O toggle `Debug -> Standard` em `DEBUG=1` passa a alterar efetivamente o MSX1 em runtime, forçando `MSX_PAL/MSX_NTSC`, `VDP R#9` e `VPeriod`.
- `MSX2/MSX2+` nao tiveram a semantica alterada: seguem usando `R#9 bit1` e podem manter `refresh=` persistido.
- `config.txt` nao foi alterado.

## Atualizacao 2026-04-30 - Settings Overscan

- `Settings -> Overscan [ON/OFF]` foi adicionado acima de `Scanline`.
- `OFF` e o default quando nao houver configuracao em `msx.cfg`: framebuffer `672x504`, com imagem do emulador centralizada em `640x480`, mantendo a area util e a area fonte do backend sem compensacao no eixo X/Y.
- `ON` usa framebuffer `640x480` e imagem preenchendo toda a area.

## Atualizacao 2026-05-01 - Overscan ON em 4:3

- Pelas capturas `ovoff.png`/`ovon.png`, o modo `OFF` estava em proporcao correta (`1372x1030`, aspecto `1.332`), enquanto o modo `ON` estava estreito no eixo X (`1351x1080`, aspecto `1.251`).
- O framebuffer de `Overscan ON` foi ajustado de `720x576` para `768x576`.
- O modo `Overscan OFF` nao foi alterado: segue com framebuffer `672x504` e viewport do emulador `640x480`.
- `overscan=0|1` passa a ser persistido em `msx.cfg`/RAW e nos templates dos scripts de SD/package.
- `config.txt` nao foi alterado.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=1 BUILD_BID=202605010045-overscan-on-768x576`.
- Build DEBUG=1 final para teste: `BUILD_BID: 202605010045-overscan-on-768x576`, `TXTDBG BUILD:CD17`, `BUILD_HASH:f66027e`, artefato `artifacts/kernel8-default.img`.

## Atualizacao 2026-05-01 - Regra final Overscan

- Regra aplicada: `Overscan ON` usa framebuffer `640x480`, com emulador preenchendo o framebuffer.
- `Overscan OFF` usa framebuffer `672x504` e mantem o emulador em `640x480`; X/Y ficam em 4:3 para preservar a proporcao do quadro azul do modo `640x480`.
- `config.txt` nao foi alterado.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=1 BUILD_BID=202605010105-overscan-final-640-672`.
- Build DEBUG=1 final para teste: `BUILD_BID: 202605010105-overscan-final-640-672`, `TXTDBG BUILD:C9A0`, `BUILD_HASH:f66027e`, artefato `artifacts/kernel8-default.img`.
