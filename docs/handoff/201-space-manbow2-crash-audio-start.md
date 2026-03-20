# Handoff — branch `201-space-manbow2-crash-audio-start`

## Contexto
- Issue remota: #201
- Objetivo: corrigir crash em gameplay do `SMANBOW2` e restaurar voice `START` antes da gameplay.

## Iteracao atual (20/03/2026 09:16 -03)
- Novo foco:
  - com a gameplay novamente estavel, atacar a ausencia da voz `START!` sem reabrir a regressao de stall.
- Analise executada:
  - revisado `third_party/openMSX/src/memory/RomManbow2.cc` e o disassembly local do `SMANBOW2`;
  - confirmado que a referencia `RomManbow2` expõe SCC somente em `9800h-9FFFh` tanto para leitura quanto para escrita;
  - no core local, a escrita ja estava restrita por `fmsx_scc_window_match()`, mas a leitura ainda usava a janela larga antiga (`(A&0xD800)==0x9800`), mantendo alias indevido de `B800h-BFFFh` para registradores SCC/SCC+ no `Manbow2`.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`
    - caminho de leitura de memoria do SCC passou a usar o mesmo gate do write path:
      - `ROMData[I] ? fmsx_scc_window_match(ROMType[I], A) : ((A&0xD800)==0x9800)`;
    - efeito pratico:
      - `MAP_MANBOW2/MAP_MANBOW2_2`: SCC so responde em `9800h-9FFFh`;
      - `B800h-BFFFh` volta a enxergar Flash/ROM como na referencia.
- Justificativa tecnica:
  - manter write/read em janelas diferentes para o mesmo cart cria alias funcional que nao existe no `RomManbow2` da referencia;
  - essa discrepancia e suficiente para o cart ler registradores SCC onde ainda deveria ler dados do mapper/Flash, no tipo de rotina curta usada na transicao da voz `START!`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-c47a83471ed4d71e7d02d03bac27e3933934cefb`
  - `BUILD_BID:202603200916-68fd7fb`
  - `BUILD_ID (TXTDBG): 2FE2`
- Proximo passo:
  - validar em hardware se a voz `START!` reaparece mantendo o baseline estavel de gameplay;
  - se ainda faltar audio, a proxima frente fica no caminho de amostragem SCC/wavetable streaming, nao mais no mapper windowing.

## Iteracao atual (20/03/2026 09:15 -03)
- Solicitacao do usuario:
  - criar uma milestone dedicada `Game Master+` e abrir as issues necessarias para suportar carregamento de cheats pelo menu principal.
- Analise executada:
  - lidas as instrucoes obrigatorias em `.github/instructions/*.instructions.md`, com foco nas regras de project management e docs sync;
  - revisado o menu atual (`src/tools/menu/combo_menu*.{h,cpp}`), o browser desacoplado (`src/tools/file_browser/combo_file_browser*.{h,cpp}`) e a infraestrutura de cheats ja existente no core (`src/fmsx_local/MSX.c`);
  - confirmado que o fMSX local ja possui `CHT`/`MCF`, `AddCheat()`, `ResetCheats()`, `ApplyCheats()` e `ApplyMCFCheat()`, mas nao uma sessao interativa com multiplos toggles independentes no menu.
- Decisao tecnica registrada:
  - para o catalogo `gamemaster.cht`, a diretriz inicial adotada na milestone foi evitar parser JSON/XML generico no runtime baremetal;
  - o planejamento passou a assumir um formato texto declarativo de baixo custo, com blocos `game`, `cheat` e `poke`, cobrindo diretamente `Address`, `Value` e `Size` (`8-bit`/`16-bit`) e suporte a multi-POKE por cheat.
- Acao aplicada:
  - milestone remota criada: `#23` `Game Master+`;
  - issues remotas criadas e vinculadas a milestone/projeto `MSX BarePI`:
    - `#204` `[P2] Definir formato canonico de gamemaster.cht e parser baremetal`;
    - `#205` `[P2] Criar catalogo navegavel de jogos com cheat no estilo file browser`;
    - `#206` `[P2] Implementar menu Game Master+ e tela Active Cheats com ON/OFF`;
    - `#207` `[P2] Integrar sessao de cheats ao core fMSX com multi-POKE e restore seguro`;
    - `#208` `[P2] Documentar fluxo Game Master+ e validar catalogo/UX em hardware`.
- Sincronizacao local:
  - criado espelho em `docs/milestones/m23/` com `README.md`, `CHALLENGES.md` e arquivos locais das issues `#204..#208`;
  - atualizado `docs/milestones/README.md` para incluir `m23`.
- Proximo passo:
  - quando a milestone for iniciada em implementacao, atacar primeiro `#204` (formato/parser) e `#207` (ponte runtime), pois eles fecham o contrato que a UI vai consumir.

## Iteracao atual (20/03/2026 09:15 -03) - correcao de fluxo de gestao
- Correcao aplicada apos revisao do usuario:
  - issues recem-criadas nao devem entrar em `Ready`; devem nascer em `Backlog`;
  - `#204..#208` foram corrigidas no projeto `MSX BarePI` de `Ready` para `Backlog`;
  - regras de gestao/documentacao foram atualizadas para refletir:
    - ativacao de milestone move issues abertas para `Ready`;
    - toda issue precisa de `DoR/DoD` definidos ou sugeridos;
    - criar primeiro o espelho local e usar os `.md` como fonte da issue remota;
    - preferir GitHub MCP, com `gh` CLI apenas como fallback;
    - evitar comandos longos inline no terminal para criar issues.

## Iteracao atual (20/03/2026 08:26 -03)
- Solicitacao do usuario:
  - voltar com calma ao ultimo estado em que o `SMANBOW2` funcionava antes da trilha de boot/logo da `#176`, usando as referencias/disassemblys ja consolidados.
- Analise executada:
  - reconstituido o ponto estavel da `#176` a partir de `docs/handoff/176-fix-msx2p-boot-screen-slow.md`;
  - confirmado que a gameplay passou a entrar antes do pacote posterior de boot/logo consolidado em `d152483`;
  - comparado `cf021ce..68fd7fb` nos arquivos de core afetados, identificando que o delta posterior mexe em cadence do VDP (`LoopVDP()` em I/O de porta, `VdpOpsQuantum()`, `GetVdpTimingValue()`) e renderer de `SCREEN 6/7`, mas nao faz parte do ajuste essencial de cart/Flash que destravou o `SMANBOW2`.
- Acao aplicada:
  - restaurados para a base `cf021ce` os arquivos:
    - `src/fmsx_local/Common.h`
    - `src/fmsx_local/MSX.c`
    - `src/fmsx_local/V9938.c`
    - `src/fmsx_local/Wide.h`
  - reaplicado em `src/fmsx_local/MSX.c` o ajuste funcional documentado no inicio da `#201`:
    - helper `fmsx_scc_window_match()` para restringir `MAP_MANBOW2/MAP_MANBOW2_2` a `9800h-9FFFh`;
    - refatoracao para `fmsx_konami5_bank_write(..., scc_plus_enable)`;
    - `MAP_KONAMI5` preserva latch `SCC+` em `B000h`;
    - `MAP_MANBOW2` deixa de ativar `SCC+` em `B000h`, mantendo apenas a janela SCC esperada pelo cart.
- Justificativa tecnica:
  - a build `B768` confirmou que restaurar apenas para `HEAD` nao bastava, porque o estado funcional anterior da branch incluia ajustes locais de `Manbow2/SCC` que nao estavam commitados;
  - esta rodada recompõe o baseline mais proximo do estado em que a gameplay ainda entrava:
    - cart/Flash/classificacao do `cf021ce`;
    - sem o pacote posterior de timing/render do boot;
    - com o ajuste local de `MegaFlashROM SCC` especifico da `#201`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-ab9f9bec237dc017c77bc8f3665a3b7b4ab6a19a`
  - `BUILD_BID:202603200826-68fd7fb`
  - `BUILD_ID (TXTDBG): 7003`
- Proximo passo:
  - validar em hardware se o `SMANBOW2` volta ao comportamento anterior (gameplay entra e deixa de stallar precocemente);
  - se a gameplay voltar mas o crash tardio persistir, retomar a trilha original da `#201` focada em `voice START` e estabilidade longa, sem reabrir os experimentos de timing/VDP do boot.

## Iteracao atual (20/03/2026 08:01 -03)
- Solicitacao do usuario:
  - revisar o historico da #176 e retornar ao ultimo estado estavel conhecido para `SMANBOW2.ROM` (rollback ate commit estavel, se necessario).
- Analise executada:
  - revisado `docs/handoff/176-fix-msx2p-boot-screen-slow.md` e logs recentes de hardware;
  - confirmado que as regressões atuais vieram de alteracoes locais nao commitadas durante a depuracao da #201 (instrumentacao e ajustes experimentais no core).
- Acao de rollback aplicada:
  - restaurados para `HEAD` (`68fd7fb`, baseline consolidado da #176 no `main`) os arquivos de runtime/core alterados nesta trilha de depuracao:
    - `src/fmsx_local/MSX.c`
    - `src/fmsx_local/V9938.c`
    - `src/fmsx_local/Z80.c`
    - `src/fmsx_runtime.c`
    - `src/fmsx_runtime.h`
    - `src/kernel.cpp`
    - `src/kernel.h`
- Validacao local:
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-786b33df810105a021df3f44e84d419b2b122d2a`
  - `BUILD_BID:202603200801-68fd7fb`
  - `BUILD_ID (TXTDBG): B768`

## Iteracao atual (19/03/2026 23:16 -03)
- Hipotese consolidada:
  - o caminho `Manbow2` local ainda aceitava janela SCC/SCC+ espelhada (`9800h-9FFFh` + `B800h-BFFFh`) e latch SCC+ por write em `B000h`, comportamento que nao bate com a referencia `MegaFlashROM SCC` usada pelo `Manbow2` no BlueMSX.
- Ajustes aplicados em `src/fmsx_local/MSX.c`:
  - criado `fmsx_scc_window_match()` para diferenciar janela SCC por mapper;
  - para `MAP_MANBOW2/MAP_MANBOW2_2`, janela SCC passou a ser somente `9800h-9FFFh`;
  - para outros mappers, comportamento legado SCC/SCC+ espelhado foi preservado;
  - refatorado bank-switch para `fmsx_konami5_bank_write(..., scc_plus_enable)`:
    - `MAP_KONAMI5` mantém latch SCC+ em `B000h`;
    - `MAP_MANBOW2` nao aplica latch SCC+ em `B000h`.
- Impacto esperado:
  - evitar roteamento indevido de acesso `B800h-BFFFh` para registradores SCC no `Manbow2`;
  - estabilizar estado de `SCCOn` durante bank-switch do `SMANBOW2`;
  - recuperar reproduçao da voice `START` e reduzir chance de crash tardio em gameplay.

## Validacao local
- `scripts/check-third-party-pristine.sh` OK
- `make -j4 DEBUG=1` OK
- Artefatos:
  - `artifacts/kernel8-issue201.img`
  - `artifacts/kernel8-default.img`
- BUILD_HASH: `68fd7fb-ec053051fe659707b65ac185b6e737da7fc1c430`

## Proximos passos
- Validar em hardware com `SMANBOW2.ROM`:
  - confirmar voice `START` na transicao para gameplay;
  - rodar ate o primeiro boss em `MSX2` e `MSX2+` para confirmar estabilidade.
- Se o crash persistir, capturar `TM6C/AC1/AC2` no ponto da falha para fechar se o remanescente e flash state-machine ou mixer/audio.

## Atualizacao de hardware (20/03/2026)
- Evidencia enviada pelo usuario (print HDMI):
  - `TXTDBG BUILD:D3E4` (ID visual de 4 digitos em campo).
  - `SMANBOW2` travou em gameplay, mas o Raspberry Pi permaneceu responsivo.
  - `TM6C` no print indica tipo efetivo de cart em estado nao esperado para `Manbow2` (`T:00/2` no frame capturado), com `A:A1ED O:4A1ED`.
- Diretriz adicionada para os proximos ciclos:
  - usar UART como trilha complementar de debug quando houver freeze com RPi responsivo;
  - registrar sempre o `BUILD_ID` (`TXTDBG BUILD:XXXX`) junto do `BUILD_HASH`.

## Iteracao atual (19/03/2026 23:33 -03)
- Objetivo da rodada:
  - aprofundar diagnostico do freeze de gameplay com RPi responsivo sem aumentar ruido no overlay HDMI.
- Mudancas aplicadas:
  - `src/kernel.h`:
    - novo helper privado `LogFmsxLoopDebugUart()`.
  - `src/kernel.cpp`:
    - no gatilho de loop (`m_FmsxPcRepeatCount >= 1200`), alem do aviso atual, passa a emitir dump UART estruturado com:
      - `PC/repeat/build`;
      - `A8`, `P1`, `cart slot`, `cart type/source`, bancos `P1/P2`;
      - ultimo tipo classificado, estado/op de flash e ultimo addr/offset/value;
      - nomes dos carts A/B carregados.
- Motivacao tecnica:
  - o print HDMI mostrou `TM6C` em estado ambiguo (`T:00/2`) no momento do freeze;
  - a trilha UART no exato gatilho de loop reduz risco de perder estado transiente entre frames.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-9119bc1d5cbb222c40135434583caa1acefec9b1`
  - `BUILD_BID:202603192333-68fd7fb`
  - `BUILD_ID (TXTDBG): DADF`
- Proximo passo:
  - testar em hardware e coletar o trecho UART contendo linhas `LOOP ...` no instante do freeze para fechar a causa raiz do `SMANBOW2`.

## Iteracao atual (19/03/2026 23:40 -03)
- Analise do log UART recebido (`/tmp/msx2p-boot-serial.log`):
  - freeze em `PC=5248` com `repeat=1200`;
  - snapshot de loop no freeze:
    - `A8:FF P1:3-0 C:2 T:00/2 B:FF/FF/FF/FF`;
    - ultimo mapeamento classificado ainda aponta `slot0=09/5` (Manbow2 via fallback SHA) e ultimo acesso de flash em `A:A1ED O:4A1ED`.
- Leitura tecnica:
  - no instante do travamento, o page1 ativo nao estava mais no cart classificado como `Manbow2`, apesar da classificacao global ainda reter `09/5`;
  - o proximo alvo passa a ser capturar o momento da transicao de slot/tipo imediatamente antes do loop.
- Mudancas aplicadas nesta rodada:
  - `src/fmsx_runtime.h` / `src/fmsx_runtime.c`:
    - adicionado snapshot de tipo/fonte para slots `0/1/2` em `TFmsxTimingDebug`.
  - `src/kernel.h` / `src/kernel.cpp`:
    - novo tracker UART `TrackMapperTransitionsUart()` chamado a cada frame;
    - emite logs `MAP CHG ...` e `MAP S0/S1/S2 ...` somente quando ha mudanca real de `A8`, `P1`, cart slot/tipo/fonte ou tipos por slot.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-45ca6583216898975a50f87b2749f792fe76703c`
  - `BUILD_BID:202603192340-68fd7fb`
  - `BUILD_ID (TXTDBG): CCA9`
- Proximo passo:
  - rodar essa build no hardware e enviar trecho UART contendo:
    - linhas `MAP CHG ...` e `MAP S0...` imediatamente antes do freeze;
    - linhas `LOOP ...` do mesmo evento.

## Iteracao atual (19/03/2026 23:47 -03)
- Analise do novo log:
  - a execucao alterna entre contexto `P1:1-0 C:0 T:09/5` e `P1:3-0 C:2 T:00/2`;
  - no travamento mais recente, o log para em `PC=52C1` sem chegar a emitir `LOOP ...`, indicando lock interno antes de o detector de repeticao externo disparar.
- Hipotese fechada para este ciclo:
  - em caminhos de opcode/prefixo nao implementado, tabelas de ciclos do Z80 contem entradas `0`;
  - quando executado nesse caminho, `ICount` pode nao decrementar e `RunZ80()` pode entrar em spin infinito.
- Correcao aplicada:
  - `src/fmsx_local/Z80.c`:
    - adicionado helper `SafeCycleCost()` com fallback minimo (`4`) para custos de ciclo zerados;
    - aplicado em todos os pontos de debitacao de ciclos:
      - base (`Cycles[]`);
      - `CB` (`CyclesCB[]`);
      - `ED` (`CyclesED[]`);
      - `DD/FD` (`CyclesXX[]`);
      - `DDCB/FDCB` (`CyclesXXCB[]`);
      - incluindo `ExecZ80()` e `RunZ80()`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-89e0a3f02c950dc2779fe0a209b5774ebc29ca22`
  - `BUILD_BID:202603192347-68fd7fb`
  - `BUILD_ID (TXTDBG): DEE4`
- Proximo passo:
  - testar em hardware com essa build e reenviar o log UART completo para confirmar se o lock em `PC=52C1` deixa de congelar o frame-step.

## Iteracao atual (20/03/2026 00:18 -03)
- Contexto do hardware:
  - comportamento atual reportado: `trava e solta` (freeze intermitente com recuperacao parcial).
  - print de campo mostrou `TXTDBG BUILD:DEE4` e apontou overflow visual na linha `TM6C`.
- Ajustes aplicados nesta rodada:
  - `src/kernel.cpp`:
    - `TM6C` encurtada para respeitar limite de 64 caracteres visiveis:
      - formato novo: `TM6C A8:%02X E:%u C:%u T:%02X/%u B:%02X/%02X/%02X/%02X F:%s S:%u M:%u`;
      - campos `A/O/V` removidos do overlay (mantidos na UART em `LOOP MAP ...`).
    - adicionada trilha UART focada em VDP (`TrackVdpTransitionsUart()`), chamada a cada frame junto do tracker de mapper:
      - `VDP CHG` (comando/flags/scanline/fase),
      - `VDP IRQ` (IE1/IE0/VBlank/HR/VR/target line),
      - `VDP RG` (`R1/R19/R23/R25/R26/R27`),
      - `VDP IO` (delta `S1/S2/P99/P9B/CS/CP`),
      - `VDP LOOP` (snapshot em buckets de repeticao de PC: 200, 400, ...).
    - `LogFmsxLoopDebugUart()` ganhou linhas extras de contexto VDP (`LOOP VDP` e `LOOP VIO`) no gatilho de loop.
  - `src/kernel.h`:
    - novo helper privado: `TrackVdpTransitionsUart()`.
  - `docs/debug-layer.md`:
    - atualizado formato/semantica de `TM6C` e documentada a nova telemetria UART de VDP.
- Objetivo tecnico:
  - manter `TM6C` legivel/segura no overlay HDMI;
  - capturar a transicao exata de estado do VDP durante o ciclo de `trava e solta` para fechar causa raiz.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-f13eba7cee922621f1def58a96f137695a267ade`
  - `BUILD_BID:202603200730-68fd7fb`
  - `BUILD_ID (TXTDBG): 11D6`

## Iteracao atual (20/03/2026 00:36 -03)
- Novo feedback de hardware (build `TXTDBG 11D6`):
  - ocorreu `stall`, glitch de tela e recuperacao parcial;
  - durante o problema, `TM2` mostrou `R25:00` e o jogo voltou sem `MASK` de `R25`.
- Objetivo da rodada:
  - capturar com precisao o `PC` e os valores no instante de escrita em `R25/R26/R27`.
- Mudancas aplicadas:
  - `src/fmsx_runtime.h`:
    - novos eventos de trace: `FMSX_VDP_EVENT_R25_WRITE`, `R26_WRITE`, `R27_WRITE`;
    - novos campos no snapshot: `trace_last_reg25/26/27`.
  - `src/fmsx_local/MSX.c`:
    - `VDPOut()` passou a registrar eventos dedicados quando `R25/R26/R27` mudam;
    - evento agora e emitido apos commit em `VDP[R]=V`, mantendo valor final coerente no trace.
  - `src/fmsx_runtime.c`:
    - export dos novos campos `trace_last_reg25/26/27`.
  - `src/kernel.cpp`:
    - `TM6B` passa a reconhecer tags `R25/R26/R27`;
    - nova linha UART `VDP EVT ...` emitida quando o ultimo evento do trace for write em `R25/R26/R27`, com `PC` de origem e valores `R25/R26/R27`.
  - `docs/debug-layer.md`:
    - atualizado catalogo de eventos de `TM6B` e documentada a linha `VDP EVT`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-1ca790d44203497ca43d50847b5244bd5d0df14c`
  - `BUILD_BID:202603200736-68fd7fb`
  - `BUILD_ID (TXTDBG): 0445`

## Iteracao atual (20/03/2026 00:45 -03)
- Novo feedback de hardware (build `TXTDBG 0445`):
  - slowdown vertical severo + stall intermitente;
  - logs mostraram flood UART no hot path (`~1099` linhas de cada: `VDP CHG/IRQ/RG/IO` em uma unica captura), com impacto direto em runtime.
- Analise do log:
  - no trecho de stall: `PC=52C1` com repeticao crescente e `R25=00`;
  - em seguida aparece `MAP CHG PC=0457 A8:F0 P1:0-0 C:255 T:FF/0`, sinalizando estado invalido de cart em `P1`.
- Correcao aplicada nesta rodada:
  - `src/kernel.cpp` (`TrackVdpTransitionsUart`):
    - removido log continuo `VDP CHG/IRQ/RG/IO`;
    - mantidos apenas logs cirurgicos:
      - `VDP ST` (transicao compacta de estado/mapper e mudanca de `R25`);
      - `VDP EVT` (writes `R25/R26/R27` com `PC`);
      - `VDP LOOP` (bucket de repeticao).
  - objetivo: preservar performance e ainda capturar causa raiz de `R25=00` + `C:255/T:FF`.
  - `docs/debug-layer.md` atualizado para refletir o novo contrato de telemetria UART.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-350d100511f4c4ff76ff4c75dcdd1c0f8d0024fa`
  - `BUILD_BID:202603200745-68fd7fb`
  - `BUILD_ID (TXTDBG): C3B7`

## Iteracao atual (20/03/2026 00:52 -03)
- Novo log de hardware (build `TXTDBG C3B7`) confirmou:
  - stall em loop (`VDP LOOP PC=52C1 ... CE:1 CS:2`);
  - degradacao posterior para mapper invalido (`MAP CHG ... C:255 T:FF/0`);
  - sem flood UART (telemetria ja estava reduzida), logo o gargalo voltou ao command engine.
- Causa tecnica prioritaria:
  - cadence do command engine no core local estava abaixo do baseline de referencia;
  - `src/fmsx_local/V9938.c` usava `VdpOpsQuantum()` em `2048/1024`, enquanto o upstream fMSX roda `12500` por `LoopVDP()`.
- Correcao aplicada:
  - `src/fmsx_local/V9938.c`:
    - `VdpOpsQuantum()` alinhado para `12500` (baseline upstream) para recuperar throughput de comandos VDP em gameplay;
    - mantida a aceleracao restrita de boot em `GetVdpTimingValue()` (faixas BIOS), sem reabrir tuning global.
- Referencia tecnica usada:
  - `third_party/fmsx/fMSX/V9938.c` (`LoopVDP()` com `VdpOpsCnt=12500`).
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-16a130b44255321d5080b825e37abb64047ab2bc`
  - `BUILD_BID:202603200752-68fd7fb`
  - `BUILD_ID (TXTDBG): 62BA`

## Iteracao atual (20/03/2026 00:59 -03)
- Novo log de hardware com `TXTDBG 62BA`:
  - stall persiste; screenshot mostra tela azul com `TM6C ... C:2 T:00/2 B:FF/FF/FF/FF`.
  - no log nao houve `VDP EVT` (sem write novo em `R25/R26/R27`) e o fluxo entra em `PC=52BF/52C1` no contexto `P1:3-0`.
- Leitura tecnica:
  - `P1:3-0` estava apontando para topologia de subslot do perfil MSX2+ customizado (mudancas do ciclo de boot), nao para cart valido de gameplay.
  - como prioridade da issue #201 e estabilidade do `SMANBOW2`, foi aplicado rollback da topologia para baseline de compatibilidade fMSX.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`:
    - `IsExpandedPrimarySlot()` voltou para comportamento upstream (apenas `slot 3` expandido);
    - `RAMMapperSubSlot()` fixado em `3-2`;
    - `DiskROMSubSlot()` fixado em `3-1`.
  - objetivo: remover regressao introduzida pelo layout `HB-F1XDJ` durante investigacao de boot e recuperar o caminho de memoria esperado pelo `SMANBOW2`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `BUILD_HASH:68fd7fb-16a130b44255321d5080b825e37abb64047ab2bc`
  - `BUILD_BID:202603200759-68fd7fb`
  - `BUILD_ID (TXTDBG): DF35`
