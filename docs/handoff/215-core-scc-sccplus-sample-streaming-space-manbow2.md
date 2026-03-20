# Handoff - branch `215-core-scc-sccplus-sample-streaming-space-manbow2`

Data: 2026-03-20

## Contexto atual
- Milestone ativa: `#24 - Melhorias audio cart SCC/SCC+`
- Branch ativa: `215-core-scc-sccplus-sample-streaming-space-manbow2`
- Issue ativa: `#215 - [P0] Implementar core SCC/SCC+ compativel para sample streaming do Space Manbow 2`
- Baseline funcional a preservar: `SMANBOW2` estavel recuperado no ciclo da `#201` e consolidado na trilha da `#176`.

## Estado operacional
- `#214` concluida e mesclada via PR `#218` (`910d31c39c9de7b20703f751047a237b4173569c`).
- `#215` esta em `In progress` no projeto `MSX BarePI`.
- Branch criada via `gh issue develop` e sincronizada com `main` apos o merge da `#214`.
- Ha uma alteracao local preexistente em `.gitignore` que nao foi tocada nesta issue.

## Implementacao atual da #215
### Referencias usadas nesta rodada
- `third_party/openMSX/src/sound/SCC.cc`
- `third_party/openMSX/src/sound/SCC.hh`
- `third_party/bluemsx/blueMSX/Src/SoundChips/SCC.c`
- `docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank06.asm`
- `src/fmsx_local/MSX.c` (caminho `Manbow2`/janela SCC preservado)

### Mudancas aplicadas em `src/fmsx_local_scc.c`
- Introduzida separacao local de modos `Real`, `Compatible` e `Plus` sem alterar a struct publica `SCC` do fMSX.
- Corrigida a semantica de janela SCC/SCC+:
  - SCC compativel le wave 5 em `0xA0-0xBF` e ignora write nessa faixa;
  - SCC+ expoe wave 1-5 em `0x00-0x9F` e freq/volume em `0xA0-0xBF`.
- Implementado `deformation register` com mascaramento de `bit7` fora do modo `Real` e regras de `read-only` alinhadas ao comportamento descrito por `openMSX`/`blueMSX`.
- Leitura do registrador de deformation mantida com side effect de `write 0xFF`, como nas referencias.
- Frequencia efetiva passou a usar `SCC_BASE / (period + 1)` com mute para `period <= 8`, aproximando o chip local do comportamento de `openMSX`/`blueMSX`.
- Write de frequencia passou a marcar reset do contador de wave via `SetWave()` no `SyncSCC`, para reproduzir o reinicio do byte corrente exigido por sample streaming.
- Volume SCC foi revertido para aplicacao imediata no backend local, apos regressao perceptivel no canal agudo durante os testes em hardware.
- Equalizacao SCC foi reduzida para usar PSG/FM-PAC como referencia (`MSXBARE_FMSX_SCC_BALANCE_PCT=60`).
- O mixer de audio foi migrado de `src/fmsx_upstream_sound.c` para uma copia local [src/fmsx_local_sound.c](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local_sound.c), preservando `third_party` intacto.
- O reforco antigo por frequencia da nota foi removido do SCC.
- O voicing atual passa a ser um conjunto de low-shelves `Harman-inspired` aplicados por bus somado, preservando a semantica do chip e tirando o ajuste de dentro da nota/canal.
- Parametros atuais por bus:
  - `PSG`: `+16%` no componente low-pass do bus;
  - `FM-PAC`: `+10%` no componente low-pass do bus;
  - `SCC`: `+26%` no componente low-pass do bus (mantendo o voicing que o usuario aprovou);
  - low-pass de controle compartilhado com alpha suave e consistente entre os buses;
  - aplicacao por bus somado, nunca por nota.
- O caminho `NukeYKT` do FM-PAC tambem passa pelo voicing do bus FM, para manter consistencia entre os dois backends de OPLL.
- UX/locales ajustados para exibir `Konami SCC+` no menu, sem mudar ainda o modelo interno de cartucho da futura `#216`.
- O caminho `Manbow2` do mapper em `src/fmsx_local/MSX.c` nao foi alterado nesta rodada.

## Validacao local
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- Build base: `HEAD 910d31c` + alteracoes locais da `#215`
- `BUILD_HASH:910d31c-410158d888e030b6762100fff06398c3d62cd887`
- `BUILD_BID:202603201605-910d31c`
- `BUILD_ID (TXTDBG): 26DC`

## Riscos e lacunas abertas
- Ainda nao existe telemetria SCC dedicada via UART nesta branch; ela continua prevista para a proxima iteracao se o teste de hardware nao destravar a voz `START!`.
- O backend de audio continua sendo o `Sound.c` do fMSX, portanto ainda pode haver diferenca residual de fase/rotacao frente a `openMSX`/`blueMSX`.
- Nao houve teste em hardware nesta rodada; falta validar se o latch de volume e o reset de contador sao suficientes para o sample do `Space Manbow 2`.
- Correcao de estado: o usuario confirmou que a voz `START!` nunca voltou; a trilha atual continua tendo como objetivo corrigir o chip/cartucho SCC+ justamente para destravar esse sample.
- Feedback mais recente de hardware: o SCC ficou mais alto que PSG/FM-PAC e houve percepcao de perda de canal agudo; isso precisa ser tratado como regressao potencial antes de abrir PR da `#215`.
- Na build `26DC`, o log UART parou logo apos `Overlay: ...`, sem chegar a `USB host ready`; como essa rodada so mudou label/locales, a suspeita atual e travamento entre `ApplyRuntimeSettingsToFmsx()` e a inicializacao do USB, nao no overlay em si.

## Instrumentacao adicional desta rodada
- Adicionados logs UART de boot em `src/kernel.cpp`:
  - `Boot step: apply runtime`
  - `Boot step: runtime OK`
  - `Boot step: init USB`
  - `Boot step: first blit`
  - `Boot step: blit OK`
  - `Boot step: main loop`
- Objetivo: fechar exatamente em qual etapa o boot para quando o problema reaparecer.

## Build de diagnostico
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- `BUILD_HASH:910d31c-6a9c53647a0ed4f9e37caa408cadb77f0fa0bd9e`
- `BUILD_BID:202603201632-910d31c`
- `BUILD_ID (TXTDBG): 89DD`

## Ajuste posterior: restaurar canal agudo SCC
- Hipotese de regressao confirmada como plausivel: o backend de audio do fMSX nao e sample-accurate como `openMSX`/`blueMSX`, entao segurar `nextVolume` ate o proximo write de frequencia pode deixar um canal musical praticamente mudo.
- Ajuste aplicado em `src/fmsx_local_scc.c`:
  - volume SCC voltou a ser aplicado imediatamente no backend local;
  - foi mantido o reset do contador de wave no write de frequencia, que continua sendo a parte relevante para o sample `START!`, ainda nao funcional.
- Nova validacao local:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1`: OK
  - `BUILD_HASH:910d31c-ebb96322f42e0426bf31415116c021977c60436b`
  - `BUILD_BID:202603201640-910d31c`
  - `BUILD_ID (TXTDBG): F3AD`

## Ajuste posterior: equalizacao SCC vs PSG/FM-PAC
- Pedido do usuario: usar PSG e FM-PAC como referencia de volume, porque o SCC estava perceptivelmente mais alto no mix.
- Ajuste aplicado em `src/fmsx_local_scc.c`:
  - `MSXBARE_FMSX_SCC_BALANCE_PCT` introduzido com default `60`;
  - o ganho do SCC deixa de operar praticamente em `full scale` (`98%`) e passa a um patamar mais proximo do FM-PAC/PSG no mixer local.
- Intencao tecnica:
  - separar o problema de equalizacao do problema funcional do `START!`;
  - manter o SCC audivel, mas sem dominar o PSG e o FM-PAC.

## Ajuste posterior: voicing `Harman-inspired` no bus SCC
- Pedido do usuario: abandonar o reforco por pitch e seguir uma abordagem de equalizacao mais previsivel, inspirada no principio da curva Harman.
- Ajuste aplicado:
  - removido o reforco dependente da frequencia da nota em `src/fmsx_local_scc.c`;
  - criada copia local do mixer [src/fmsx_local_sound.c](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local_sound.c) baseada em `third_party/fmsx/EMULib/Sound.c`;
  - o bus SCC agora e somado separadamente e passa por um low-shelf suave antes de entrar no mix final;
  - a semantica do chip SCC/SCC+ permanece separada do voicing do bus.

## Ajuste de tooling: `update-sd-incremental.sh`
- Pedido do usuario: garantir que a atualizacao incremental do SD sincronize a escrita e desmonte o cartao ao final.
- Ajuste aplicado em `scripts/update-sd-incremental.sh`:
  - resolve `TARGET_PART_DEVICE`/`TARGET_DISK_DEVICE` a partir de `TARGET_VOLUME` e/ou `SD_DEVICE`;
  - executa `sync` antes do teardown final;
  - desmonta automaticamente o volume ao final, mesmo sem `EJECT_AT_END`;
  - quando `EJECT_AT_END=1` e o disco e conhecido, faz ejeção segura; caso contrario, cai para desmontagem simples.

## Validacao local da rodada atual
- `bash -n scripts/update-sd-incremental.sh scripts/prepare-sd.sh scripts/sdcard-common.sh`: OK
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- Build base: `HEAD 910d31c` + alteracoes locais acumuladas da `#215`
- `BUILD_HASH:910d31c-77afb85b43d560846d6cc9260344ef4963eac21c`
- `BUILD_BID:202603201704-910d31c`
- `BUILD_ID (TXTDBG): 0F0D`

## Validacao local da rodada Harman-inspired
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- Build base: `HEAD 910d31c` + alteracoes locais acumuladas da `#215`
- `BUILD_HASH:910d31c-dcea186d5663642d3d8361719452726f3fbf9d43`
- `BUILD_BID:202603201713-910d31c`
- `BUILD_ID (TXTDBG): E26B`
- Estado tecnico:
  - boost de graves dependente da frequencia da nota removido;
  - ganho global SCC mantido em referencia a PSG/FM-PAC;
  - voicing grave passa a ser aplicado no bus SCC somado, antes do master volume.

## Validacao local da rodada multi-bus
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- Build base: `HEAD 910d31c` + alteracoes locais acumuladas da `#215`
- `BUILD_HASH:910d31c-ee6f3c58e7091d1c471543d95aa7c443be8129be`
- `BUILD_BID:202603201723-910d31c`
- `BUILD_ID (TXTDBG): 162E`
- Estado tecnico:
  - voicing `Harman-inspired` generalizado para `PSG`, `FM-PAC` e `SCC`;
  - `PSG` e `FM-PAC` entram com shelves mais conservadores do que o SCC;
  - caminho `NukeYKT` coberto pelo shelf do bus FM.

## Proximo passo imediato
- Testar a build `162E` para validar:
  - volume relativo entre `PSG`, `FM-PAC` e `SCC`;
  - se o voicing grave ficou natural nos tres buses;
  - se o canal agudo do SCC continua presente;
  - se `PSG` e `FM-PAC` ganharam corpo sem embolar o mix.
- Validar o novo encerramento do `update-sd-incremental.sh` com `bash -n` e documentacao sincronizada.
- O `START!` segue em aberto como item funcional separado.

## Nota de gestao
- A trilha paralela de fidelidade de render para `PSG/FM-PAC` foi desmembrada para a issue `#219` na milestone `#17 - FIX: Minor Issues / Other Issues`, para nao contaminar o escopo da milestone `#24 - Melhorias audio cart SCC/SCC+`.
- A trilha diagnostica de instrumentacao UART para reconstruir a rotina real do `START!` em runtime foi desmembrada para a issue `#220` dentro da propria milestone `#24`, preservando a branch atual focada no core SCC/SCC+.

## Rodada posterior: inicio da #216 na mesma branch
- O usuario aprovou o voicing multi-bus (`PSG`/`FM-PAC`/`SCC`) e pediu continuidade nas tarefas de `SCC+`.
- Como a branch da `#215` ainda concentra alteracoes locais nao promovidas, a trilha da `#216` foi iniciada sobre a mesma branch para manter o baseline funcional atual intacto.

### Escopo implementado nesta rodada
- Runtime/config:
  - `g_scc_cart_enabled` deixou de mascarar os canais SCC no mixer e passou a representar presenca do cartucho interno `Konami SCC+` via `fmsx_runtime_set/get_scc_plus_enabled()`.
  - adicionadas APIs para `Dual SCC+`:
    - `fmsx_runtime_set_scc_dual_cart_enabled()`
    - `fmsx_runtime_get_scc_dual_cart_enabled()`
    - `fmsx_runtime_get_scc_dual_cart_available()`
  - novas chaves persistidas:
    - `scc_plus`
    - `scc_dual`
  - compatibilidade de entrada preservada para `scc_cart`.
- Menu/UI:
  - a primeira versao da UI expunha `Dual SCC+` como item separado abaixo de `Konami SCC+`;
  - esse desenho foi depois consolidado para um unico item `Konami SCC+` com estados `OFF/ON/DUAL`;
  - tentativa de carregar ROM no `SLOT2` enquanto o estado `DUAL` esta ativo passou a ser bloqueada explicitamente.
- Core/MSX:
  - `SCCOn[]` e `SCCIMode[]` foram ampliados de `2` entradas para `MAXSLOTS`.
  - o caminho `SCC(-I)` sem ROM deixou de ficar preso a `slot<2` e passa a respeitar slots virtuais controlados pelo runtime:
    - um `Konami SCC+` interno em slot livre da faixa interna (`5 -> 4 -> 3 -> 2`);
    - um segundo `SCC+` reservado em `slot 1` quando o estado `DUAL` esta habilitado e sem conflito com cartucho do usuario.
  - save-state agora serializa `SCCOn[]` e `SCCIMode[]` completos dentro do bloco `State[256]`, sem alterar o formato global do snapshot.

### Validacao local desta rodada
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- `BUILD_HASH:910d31c-f15c12ece2aa19d2fbe54c8ffcdfa80bd290ab2c`
- `BUILD_BID:202603201755-910d31c`
- `BUILD_ID (TXTDBG): FFCE`

### Riscos e proximos passos
- Falta validacao em hardware para confirmar:
  - ativacao do `Konami SCC+` interno no boot;
  - bloqueio correto de `Konami SCC+ DUAL` com `SLOT2` ocupado;
  - ausencia de regressao no baseline estavel do `SMANBOW2`.
- A voz `START!` continua em aberto; esta rodada tratou topologia/runtime/menu de `SCC+`, nao o comportamento final do sample.

## Rodada atual: correção estrutural do `Dual SCC+` a partir do `GRADIUS1E.ROM`
- O usuario reportou um sintoma claro com `roms/games/roms/GRADIUS1E.ROM`:
  - o jogo usa `2 SCC+` simultaneos;
  - um cartucho faz a musica;
  - o segundo faz as vozes;
  - quando a voz entra, ela distorce e aparenta roubar canais do primeiro chip.

### Causa raiz confirmada
- A implementacao inicial da `#216` criou a topologia de `Konami SCC+` interno + `Dual SCC+`, mas o core ainda mantinha:
  - um unico `SCChip` global em `src/fmsx_local/MSX.c`;
  - um unico bloco de `5` canais SCC no mixer;
  - `Layer 3` mascarando apenas esse bloco unico.
- Isso fazia os dois cartuchos virtuais compartilharem:
  - os mesmos registradores SCC;
  - a mesma waveform RAM;
  - as mesmas frequencias/volumes;
  - os mesmos `5` canais de audio.

### Referencias tecnicas usadas
- `openMSX`:
  - `src/sound/SCC.cc`: cada dispositivo instancia seu proprio `SCC`, registrado como `ResampledSoundDevice` de `5` canais;
  - `src/memory/MegaFlashRomSCCPlus.cc`: o cartucho possui um membro `scc` proprio;
  - `src/memory/RomManbow2.cc`: o cartucho `Manbow2` tambem usa seu proprio `scc`.
- `blueMSX`:
  - `Src/Memory/romMapperSCCplus.c`: cada mapper cria seu proprio chip com `rm->scc = sccCreate(boardGetMixer());`.

### Correcao aplicada
- Mixer local:
  - criada copia local de `EMULib.h` em `src/fmsx_compat/EMULib.h` para expandir `SND_CHANNELS` de `20` para `25`;
  - novo layout local em `src/fmsx_audio_layout.h`;
  - `src/fmsx_local_sound.c` passa a tratar `10` canais SCC no mesmo bus de voicing (`5` do SCC primario + `5` do SCC secundario).
- Runtime/audio mask:
  - `src/fmsx_runtime.c` atualiza `Layer 3` para mascarar ambos os blocos SCC.
- Core/MSX:
  - `src/fmsx_local/MSX.c` passa a manter `SCChip[2]` em vez de um unico `SCChip`;
  - `ResetMSX`, `SyncSCC`, flush de frame e dirty flags passaram a operar nos dois chips;
  - reads/writes de SCC/SCC+ agora escolhem o chip pelo slot/origem:
    - `chip0`: cartucho SCC do `slot A` quando existir; caso contrario, `Konami SCC+` interno;
    - `chip1`: cartucho SCC do `slot B` quando existir; caso contrario, `Dual SCC+`.

### Observacao de projeto
- A prioridade atual do roteamento e:
  - cartuchos reais do usuario em `slot A/B` primeiro;
  - cartuchos SCC+ virtuais depois.
- Isso resolve o caso do `GRADIUS1E` e preserva carts SCC do usuario como prioridade de audio/estado.

### Validacao local desta rodada
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- Build base: `HEAD 910d31c` + alteracoes locais acumuladas da `#215/#216`
- `BUILD_HASH:910d31c-e9f1a6b9368e4ceb3a2e95be49b78e867a792250`
- `BUILD_BID:202603201820-910d31c`
- `BUILD_ID (TXTDBG): 9B61`

### Proximo passo imediato
- Teste em hardware com `GRADIUS1E.ROM` para confirmar:
  - voz no segundo `SCC+` sem distorcer;
  - musica do primeiro `SCC+` preservada quando a voz entra;
  - `Layer 3` silenciando ambos os chips ao mesmo tempo quando mutado.

## Rodada atual: segundo SCC+ efetivo no mixer e menu `OFF/ON/DUAL`
- O teste seguinte com `GRADIUS1E.ROM` indicou regressao diferente: a voz do segundo `SCC+` sumiu, sugerindo que o segundo chip nao estava chegando ao mixer final.

### Causa raiz
- O core/runtime ja tinham sido atualizados para `2` chips SCC e `10` canais SCC.
- Mas o caminho efetivo de audio ainda pegava `Sound.h` da arvore original do fMSX em vez do header local, mantendo `SND_CHANNELS=20`.
- Com isso, o segundo bloco SCC ficava fora do mixer real, apesar de o roteamento por slot/chip ja estar pronto.

### Correcao aplicada
- Criada copia local de `Sound.h` em `src/fmsx_compat/Sound.h`, ligada ao `src/fmsx_compat/EMULib.h`.
- `src/fmsx_runtime.c`, `src/fmsx_local/MSX.c` e `src/fmsx_local_sound.c` passam a resolver `Sound.h` pelo include path local.
- Validacao por preprocessador confirmou `SND_CHANNELS=25` no build efetivo.

### Ajuste de UX/menu
- O menu `Settings` foi consolidado em um unico item `Konami SCC+`.
- Ciclo atual:
  - `OFF`
  - `ON`
  - `DUAL`
- O estado `DUAL` ativa os `2 SCC+`.
- Se o `slot B` estiver ocupado, o menu pula `DUAL` e permanece em `ON`.
- A acao residual de `Dual SCC+` separado foi removida do fluxo de menu para nao manter UI morta.

### Validacao local desta rodada
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- `BUILD_HASH:910d31c-5024ca6bb8bb73dc59165d7db173e89c730f692d`
- `BUILD_BID:202603201831-910d31c`
- `BUILD_ID (TXTDBG): 156E`

### Proximo teste objetivo
- Validar `GRADIUS1E.ROM` com `Konami SCC+ = DUAL`:
  - confirmar se a voz do segundo `SCC+` voltou;
  - confirmar se a musica do primeiro `SCC+` nao perde canais;
  - confirmar se o menu mostra apenas `Konami SCC+` com `OFF/ON/DUAL`.

## Rodada atual: inteligibilidade do `SCC+` secundario
- O teste de hardware seguinte confirmou que os dois chips passaram a tocar, mas a voz do `SCC+` secundario ficou baixa e abafada quando misturada com a musica do `SCC+` primario.

### Causa tecnica mais provavel
- O mixer local ainda tratava os `10` canais SCC como um unico bus de voicing.
- Isso faz o low-shelf aprovado para a musica do `SCC` primario tambem atuar sobre a voz/sample do `SCC` secundario, agravando mascaramento espectral quando os dois chips tocam ao mesmo tempo.

### Correcao aplicada
- `src/fmsx_local_sound.c` agora separa:
  - `SCC primario`
  - `SCC secundario`
  em buses independentes antes do voicing final.
- Perfil atual:
  - `SCC primario`: mantem o shelf aprovado anteriormente;
  - `SCC secundario`: shelf bem mais suave e ganho moderado adicional, para priorizar inteligibilidade de voz.
- O objetivo desta rodada foi preservar a assinatura sonora do `SCC` principal sem soterrar o segundo chip.

### Validacao local desta rodada
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- `BUILD_HASH:910d31c-7b33f28ab3e827303746f029faa9a2723e497652`
- `BUILD_BID:202603201845-910d31c`
- `BUILD_ID (TXTDBG): 21A8`

### Proximo teste objetivo
- `GRADIUS1E.ROM` com `Konami SCC+ = DUAL`:
  - verificar se a voz do segundo `SCC+` ficou mais alta e inteligivel;
  - verificar se a musica do primeiro `SCC+` continua com o voicing aprovado;
  - verificar se nao houve nova perda de canais.

## Rodada atual: correção estrutural do `SND_WAVE`
- A comparacao direta de audio entre `OpenMSX.aac` e `MSXBarePI.aac` confirmou que o problema remanescente nao era apenas ganho:
  - `MSXBarePI` com menos extensao de agudos/medios altos;
  - menor centroide/rolloff;
  - menor dinamica (`LRA`);
  - voz do segundo `SCC+` ainda abafada.

### Achado tecnico
- O gerador generico `SND_WAVE` em `src/fmsx_local_sound.c` ainda herdava o comportamento do `Sound.c` original do fMSX:
  - quando a taxa efetiva de avancar a waveform ficava alta (`K < 0x8000`), o renderer simplesmente abandonava o canal;
  - isso e especialmente nocivo para voz/sample em `SCC+`, mas tambem afeta qualquer uso rapido de `SND_WAVE`, inclusive caminhos futuros de `PSG` e `FM-PAC`.

### Correcao aplicada
- O bloco `SND_WAVE` foi reescrito para usar acumulador de fase `Q16`.
- Agora ele:
  - continua renderizando mesmo quando avanca mais de um byte de waveform por amostra de saida;
  - preserva opcionalmente interpolacao linear quando habilitada;
  - deixa de cortar justamente o conteudo que carregava a articulacao da voz.

### Escopo
- A correcao vale para todo uso de `SND_WAVE` no backend local:
  - `SCC`
  - futuros/indiretos de `PSG`
  - futuros/indiretos de `FM-PAC`
- O voicing por bus continua separado desta mudanca.

### Validacao local desta rodada
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- `BUILD_HASH:910d31c-e5e75ad868e6f41146d7c95d8db43e2a84e279d5`
- `BUILD_BID:202603201917-910d31c`
- `BUILD_ID (TXTDBG): B777`

### Proximo teste objetivo
- Revalidar `GRADIUS1E.ROM` com `Konami SCC+ = DUAL`:
  - inteligibilidade da voz;
  - manutencao da musica do primeiro `SCC+`;
  - ausencia de nova perda de canais.
