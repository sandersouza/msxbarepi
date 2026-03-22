# Issue #220 - Instrumentar UART para rastrear writes SCC do `START!` em `Space Manbow 2`

- URL: https://github.com/sandersouza/msxbarepi/issues/220
- Milestone: Melhorias audio cart SCC/SCC+ (m24)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:audiochip`, `area:debug`, `area:emulation`
- Estado local atual: CONGELADA / FUTURO

## Objetivo
Adicionar instrumentacao UART cirurgica e debug-gated para rastrear writes SCC na janela `9800h-9FFFh` durante a rotina real de voz do `SMANBOW2`, de modo a reconstruir `START!`/`CONTINUE!` em execucao.

## Estado atual
- A investigacao foi congelada para retomada futura.
- A instrumentacao UART (`SCC EVT` / `AUD EVT`) foi desabilitada por compile-time para remover custo e ruido desta fase.
- As alteracoes uteis de base (`timing`, `renderer dedicado`, `sync por write`, `refresh guiado por R#9` e afins) seguem elegiveis para merge parcial.

## Contexto
- O disassembly local ja aponta uma ancora forte de SCC comum em `bank06.asm:1740` com `ld de,09800h`.
- Isso identifica o chip alvo, mas ainda nao fecha a sequencia real de writes que produz a voz.
- O usuario confirmou em hardware que a voz nao ocorre na apresentacao:
  - `START!` vem apos escolher um slot de save em novo jogo;
  - `CONTINUE!` vem apos escolher um slot de save de jogo salvo.
- O `openMSX` classifica o `SMANBOW2.ROM` canonico (`SHA1 00a81872d548a7278b8901608bf12e8f79009bee`) como `Manbow2`, nao `Manbow2_2`; isso confirma que o mapper local certo para esta ROM e `MAP_MANBOW2` (`T=09`).
- O trace UART ja deixou de ser o gargalo: ele ja alcanca o bloco dinamico `13FF..143D` sem `DROP`.

## Escopo tecnico
- Manter os logs UART para writes SCC do `Manbow2` na janela `9800h-9FFFh`.
- Registrar, no minimo:
  - `Q=<sessao>`
  - `PC`
  - endereco SCC
  - valor escrito
  - tipo (`wave`, `freq`, `volume`, `enable`, `deform`)
  - contexto minimo de `slot/chip/PS/SS/mapper`
- Usar o trace para fechar o alvo do renderer da voz.
- Validar o novo renderer SCC dedicado em hardware.

## Fora de escopo
- Alterar a topologia `Konami SCC+`/`DUAL`
- Mudar voicing/EQ de `PSG` ou `FM-PAC`
- Adicionar novas linhas no overlay HDMI

## DoR
- [x] Baseline estavel atual do `SMANBOW2` preservado
- [x] Formato de log UART definido para nao causar flood
- [x] Ponto(s) de hook em `MSX.c` e/ou `kernel.cpp` mapeados

## DoD
- [x] Captura UART do caminho SCC do `SMANBOW2` obtida sem stall induzido por debug
- [ ] Sequencia de writes SCC de `START!`/`CONTINUE!` reconstruida com base na execucao real
- [ ] Correlacao minima entre telemetria e disassembly documentada
- [ ] Proximo alvo tecnico da correcao de voz fechado
- [ ] Renderer SCC dedicado validado em hardware
- [ ] Retomada futura da issue com nova rodada de hipoteses

## Implementacao atual
- O hook util segue em `MapROM()` de `src/fmsx_local/MSX.c`, antes de `WriteSCC()/WriteSCCP()`, porque ali o runtime ainda tem:
  - endereco MSX completo;
  - `PC` de origem;
  - `slot`/`PS`/`SS`;
  - tipo efetivo do mapper/cartucho.
- A instrumentacao captura apenas writes SCC do `Manbow2`.
- A politica atual do trace no codigo local e:
  - iniciar no primeiro `ENABLE!=0` do SCC;
  - atravessar todas as sessoes SCC necessarias ate o inicio da gameplay;
  - carregar a janela atual em cada evento (`W=TI|SV|SD|--`);
  - parar automaticamente no primeiro write SCC ja fora do fluxo `SAVE_SELECT/STARDATE`, sem depender de `bank16`;
  - preservar ring de `4096` eventos;
  - agregar apenas bursts contiguos de `volume`, preservando `wave`, `freq`, `enable` e `deform` sem agregacao destrutiva.
- A rodada atual adiciona um segundo trace UART para correlacao de outros chips de audio:
  - `AUD EVT`/`AUD DROP` para portas `PSG` (`A0/A1`) e `FM-PAC` (`7C/7D`);
  - mesmo gate temporal do trace SCC;
  - `CTRL` sai bruto; `DATA` agrega por `frame+PC+chip+reg+janela+sessao`.
- A rodada atual adiciona um terceiro eixo de telemetria ao `SCC EVT`:
  - `R=<samples>` mostra quantas amostras foram efetivamente renderizadas pelo host imediatamente antes do write SCC;
  - isso serve para confirmar se o mixer local esta colapsando varios writes criticos no mesmo estado temporal.
- O log mais recente mostrou uma nova pista concreta:
  - `AUD EVT` agora registra programacao real de `PSG` em `R0..R10` na mesma janela do slot de save;
  - por isso, `START!/CONTINUE!` podem depender total ou parcialmente de sintese rapida via `PSG`, e nao apenas do `SCC`.
- A rodada atual corrige a lacuna temporal correspondente:
  - `OutZ80()` passa a chamar `fmsx_audio_render_to_cpu_now()` antes de writes de `PSG` (`0xA0/0xA1`) e `FM-PAC` (`0x7C/0x7D`);
  - antes disso, apenas o `SCC` tinha esse tratamento de sync por write.
- A rodada atual fecha um segundo gap do `PSG`:
  - o `AY8910` local ainda acumulava `Changed` e so fazia `Sync8910(AY8910_FLUSH)` a cada 8 scanlines em `LoopZ80()`;
  - `OutZ80()` agora chama `Sync8910(&PSG,AY8910_FLUSH)` imediatamente apos `WrData8910()`, evitando colapso de sequencias rapidas de programacao do `PSG` no mesmo bloco de audio.
- A rodada atual sobe o `PSG` para um renderer dedicado:
  - `src/fmsx_local_sound.c` agora renderiza o `AY8910` num caminho `blueMSX-like` proprio do bus `PSG`;
  - o `PSG` sai do renderer generico `SND_MELODIC/SND_NOISE`;
  - o novo caminho usa `16x` oversampling, geracao propria de `tone/noise/envelope` e filtro mono baseado no `blueMSX`.
- O trace mais recente ja chega ao bloco dinamico `13FF..143D`, portanto a observabilidade deixou de ser o gargalo principal.
- Se o proximo log mostrar `R=0` ou valores muito baixos nos blocos criticos, a issue muda de foco: sai de semantica do renderer SCC e entra em sincronizacao temporal do host.
- A rodada atual troca o caminho de render do SCC:
  - `src/fmsx_local_scc_render.h` define um estado lateral dedicado por chip;
  - `src/fmsx_local_scc.c` passa a manter esse estado a cada write SCC;
  - `src/fmsx_local_sound.c` passa a renderizar o SCC diretamente desse estado, sem depender do `SND_WAVE` generico.
- A rodada mais recente fecha um gap temporal importante:
  - `openMSX/blueMSX` sincronizam o mixer no instante de cada write SCC;
  - o host local agora tambem renderiza audio ate o timestamp atual do Z80 antes de aplicar cada write SCC, em vez de deixar varios writes colapsarem no mesmo bloco de scanline.
- O host local continua renderizando audio ao longo do frame via `PlayAllSound(uSec)` e mantem fallback por frame quando o hook scanline nao produzir amostras.
- A rodada atual troca o renderer dedicado de novo, desta vez para um modelo mais proximo do `blueMSX/openMSX`:
  - acumulador de fase por canal;
  - `nextVolumeNibble` separado do volume ativo;
  - volume promovido apenas na troca de indice;
  - `freq write` reiniciando a borda util do byte corrente;
  - `period<=8` mantendo o byte atual latched.

## Achados atuais
- O mapper local correto para a ROM canonica e `MAP_MANBOW2`, nao `MAP_MANBOW2_2`.
- O trace UART provou que a sessao util de SCC ja esta sendo capturada.
- O problema restante deixou de ser observabilidade e passou a ser semantica de render.
- A rodada atual e a primeira que troca efetivamente o render SCC por um caminho dedicado inspirado em `openMSX`.
- O primeiro teste desse renderer dedicado mostrou audio SCC lento; a rodada seguinte corrigiu a unidade temporal do passo de fase para o dominio do mixer local, usando `SCC_BASE` e `SndRate` para calcular o passo Q16 por byte.
- Mesmo com o trace correto, `START!` e `CONTINUE!` ainda nao apareceram no hardware; isso confirma que o proximo gap e exclusivamente de compatibilidade do renderer.
- A rodada atual fecha um desvio objetivo do renderer dedicado:
  - no `freq write`, o estado lateral do SCC deixava `Pos=0xFF` e `Out=0`;
  - `openMSX` e `blueMSX` mantem o byte corrente vivo imediatamente apos o write;
  - agora o renderer local preserva o sample corrente e recalcula `Out` no ato do `freq write`, o que e especialmente relevante para os trechos em que o `SMANBOW2` usa `period<=8` como DAC/hold.
- A rodada atual de instrumentacao fecha o gargalo de correlacao:
  - o log mostrou que o trace ja armava no primeiro `ENABLE`;
  - cada `SCC EVT` agora carrega explicitamente `W=TI|SV|SD|--`;
  - a parada do trace na entrada de gameplay nao depende mais do banco `27`.
- O foco tecnico atual mudou:
  - a ausencia da voz nao pode mais ser atribuida apenas ao renderer SCC;
  - existe agora uma hipotese forte de colapso temporal no caminho `PSG`, porque a mesma janela de slot/save programa `PSG` intensamente e esse chip ainda nao recebia `render-to-now` antes dos writes.

## Validacao local
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- `HEAD`: `ab38eb9` + alteracoes locais da `#220`
- `BUILD_BID`: `202603211030-ab38eb9`
- `BUILD_HASH`: `ab38eb9-0199db29d2ff05dab9f13b94b110f845e9194498`
- `BUILD_ID (TXTDBG)`: `1F22`
- Build da rodada atual:
  - `BUILD_BID`: `202603211120-ab38eb9`
  - `BUILD_HASH`: `ab38eb9-9d2da78db8fbcc6ba4725600190ace9aea3619ad`
  - `BUILD_ID (TXTDBG)`: `16DA`
- Build da rodada atual de instrumentacao:
  - `BUILD_BID`: `202603211345-ab38eb9`
  - `BUILD_HASH`: `ab38eb9-cdb056009713f25248d25020e3d80e116f25ec5a`
  - `BUILD_ID (TXTDBG)`: pendente de validacao em hardware
- Build da rodada atual de correlacao `PSG/FM`:
  - `BUILD_BID`: `202603211430-ab38eb9`
  - `BUILD_HASH`: `39c2193e7bbd25673d199ab1d9146636a97a152b`
  - `BUILD_ID (TXTDBG)`: `54A0`
- Build da rodada atual de telemetria interna de sync:
  - `BUILD_BID`: `202603211520-ab38eb9`
  - `BUILD_HASH`: `ab38eb9-62c4a435ad318a53fc2f2e64778d0f49486852d7`
  - `BUILD_ID (TXTDBG)`: `1F7F`
- Build da rodada atual de sync por write para `PSG/FM`:
  - `BUILD_BID`: `202603221030-ab38eb9`
  - `BUILD_ID (TXTDBG)`: `EED4`
- Build da rodada atual de flush imediato do `PSG`:
  - `BUILD_BID`: `202603221100-ab38eb9`
  - `BUILD_HASH`: `ab38eb9-a62e2308de46b28f18a098bd04c19f9a36d45084`
  - `BUILD_ID (TXTDBG)`: `C6D8`
- Build da rodada atual de renderer dedicado do `PSG`:
  - `BUILD_BID`: `202603221145-ab38eb9`
  - `BUILD_HASH`: `ab38eb9-77c92597282d481a7a4d359a9b5b6c226b164e4f`
  - `BUILD_ID (TXTDBG)`: `B461`
- Build de congelamento / merge parcial:
  - `BUILD_BID`: `202603221230-ab38eb9`
  - `BUILD_HASH`: `ab38eb9-2a7c93a50bbf9c6f656e589b62770ec3cd9bb0ba`
  - observacao: validacao local com a telemetria UART desta trilha totalmente desabilitada por compile-time.

## Referencias iniciais
- `docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank06.asm`
- `src/fmsx_local/MSX.c`
- `src/kernel.cpp`
- `docs/debug-layer.md`
- `third_party/openMSX/src/sound/SCC.cc`
- `third_party/bluemsx/blueMSX/Src/SoundChips/SCC.c`
