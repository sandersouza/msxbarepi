# Handoff Persistente da Branch 235-validar-corpus-dinamico-v9958-stock

Ultima atualizacao: 31/03/2026 (23:45 -03)

## Objetivo da branch

Fechar a issue `#235` com a passada dinamica restante do `V9958 stock`, usando a instrumentacao ja aceita pela trilha para validar `IRQ-001`, `IRQ-003`, `CMD-004` e `REN-002..REN-008`.

## Vinculo de gestao

- Issue remota: [#235 - [P1] Validar corpus dinâmico do V9958 stock com telemetria já existente](https://github.com/sandersouza/msxbarepi/issues/235)
- Branch vinculada via `gh issue develop`: `235-validar-corpus-dinamico-v9958-stock`
- Branch base/umbrella: `82-auditar-registradores-v9958`
- Target de PR desta branch: `82-auditar-registradores-v9958`

## Estado herdado da umbrella

- `STS-006` ficou operacionalmente fechado do lado `blueMSX`:
  - no hardware, `S8/S9` ficaram estaveis durante `CE=1` e so saltaram ao fim do `SRCH`
  - build de referencia do fechamento: `FFC6`
- O residual local de `REG-004` tambem ficou operacionalmente fechado do lado `blueMSX`:
  - `TM6D` mostrou `R17:34 9B:33>33>34 V:A5`
  - o auto-incremento indireto via `0x9B` continuou acima de `2Fh`
- A issue `#235` continua aberta porque ainda faltam as linhas:
  - `CMD-004`
  - `REN-002..REN-008`

## Proximo passo objetivo

1. Executar `Knightmare Gold` com `TM2`, `TM4B`, `TM6B` e `TM6D` visiveis.
2. Coletar evidencia para:
   - `REN-002`
3. Reavaliar o boot logo `MSX2+` como repro de `CMD-004` e `REN-003/005/006/007`; se continuar preso em `SM:06`, mudar o foco para `MSXDIAG` e/ou outro repro do corpus.

## Orientacao operacional imediata

- Build candidata atual: `FFC6`
- Roteiro de captura: `docs/reverse-engineering/issues/issue-82/dynamic-capture-recipes.md`
- Issue local espelho: `docs/milestones/m11/235-validar-corpus-dinamico-v9958-stock-telemetria-existente.md`
- O worktree desta branch herdou mudancas locais de documentacao/fluxo da umbrella `#82` ainda nao commitadas.

## Atualizacao incremental de 31/03/2026 - primeiro round `Knightmare Gold`

- O primeiro video de `Knightmare Gold` na build `FFC6` trouxe sinal util, mas ainda insuficiente para fechar as linhas da matriz.
- Frames amostrados ao longo do gameplay mostraram:
  - `SM:04` estavel;
  - `R25:00`, `R26:00`, `R27:00`, `EP:0`;
  - `R19:0024`, `R23:0000`, `EO:42` sem variacao relevante nos quadros inspecionados;
  - `TM6D` ainda refletindo o ultimo estado residual do repro anterior (`R17:2F 9B:2E>2E>2F V:98 S:00/00`), sem novo sinal util do jogo;
  - ausencia de corrupcao visual obvia no `SCREEN 4` durante movimento/transicao de salas.
- Leitura operacional:
  - `REN-002` ganhou suporte parcial fraco para o path plain de `SCREEN 4`, mas ainda sem fechar raster/scroll hack;
  - `IRQ-001` nao fechou, porque a captura nao mostrou momento decisivo de latch/clear de `S#1 bit0` com `IE1` relevante;
  - `IRQ-003` nao fechou, porque `R19/R23` e `TL/TD` ficaram estaveis nos frames amostrados.
- Proximo capture pass para `Knightmare Gold`:
  - manter `TM2`, `TM4B`, `TM6B` e, se possivel, `TM4`;
  - priorizar trecho mais dinamico, com transicao de sala, raster mais agressivo ou momento em que `S1`, `I1A/I1F`, `TL/TD`, `R19` ou `R23` realmente mudem em quadro.

## Atualizacao incremental de 31/03/2026 - segundo round `Knightmare Gold`

- O video maior de `Knightmare Gold` finalmente capturou uma transicao de estado util entre gameplay, tela de `STAGE 01` e retorno ao jogo.
- Nos quadros de gameplay amostrados:
  - `SM:04`
  - `R25:00`, `R26:00`, `R27:00`, `EP:0`
  - `I1:1`, `F1:0`
  - `R19:0024`, `R23:0000`
  - `EO:42`
- No quadro de transicao de estagio:
  - `I1:0`, `F1:0`
  - `R19:0000`, `R23:0000`
  - `EO:35`
  - `S0:1`
  - `TM6B` mostrou `SR:0/9F` e `99:R/1/0/01/9F`
- Leitura operacional:
  - `REN-002` ganha suporte parcial melhor:
    - o `SCREEN 4` permaneceu visualmente estavel no gameplay e na transicao, sem corrupcao obvia de scroll/backdrop
  - `IRQ-003` ganha um indicio util:
    - `R19` realmente muda entre gameplay e transicao (`0024 -> 0000 -> 0024`)
    - mas ainda falta correlacao quadro-a-quadro entre essa mudanca e `TL/TD` para fechar a linha
  - `IRQ-001` continua aberta:
    - a captura ainda nao mostrou, com nitidez suficiente, o latch/clear decisivo de `S#1 bit0`
- Proximo capture pass:
  - manter `Knightmare Gold`, mas mirar especificamente a borda da transicao onde `R19` troca de valor
  - gravar curto, com foco em 3-5 segundos em torno da mudanca, para tentar pegar `TL/TD`, `I1A/I1F` e `S1` variando no mesmo trecho

## Atualizacao incremental de 31/03/2026 - terceiro round `Knightmare Gold`

- O corte curto adicional conseguiu pegar a troca `R19:0000 <-> 0024`, mas a borda veio contaminada por `PAU:1`.
- Nos quadros inspecionados:
  - inicio/fim do corte: `PAU:1`, `R19:0000`, `R2:10/11`
  - miolo de gameplay: `PAU:0`, `R19:0024`, `R2:11/10`, `SM:04`, `R25/R26/R27=00`, `EP:0`, `I1:1`, `F1:0`
  - `TM4B` continuou sem entregar uma variacao nitida de `TL/TD` ou `S1` no mesmo trecho
- Leitura operacional:
  - o video confirma que a linha de `R19` realmente alterna entre `0000` e `0024`
  - mas essa amostra ainda nao fecha `IRQ-003`, porque a correlacao com `TL/TD` ficou fraca e a borda principal esta misturada com estado de pausa
  - `IRQ-001` continua sem sinal decisivo de latch/clear
- Proximo capture pass:
  - repetir `Knightmare Gold` sem `PAU:1` entrando no quadro
  - mirar 3-5 segundos totalmente em runtime ativo, centrados na transicao de estagio ou outra mudanca equivalente de estado

## Decisao operacional de 31/03/2026 - `IRQ-001` e `IRQ-003`

- Por decisao da trilha, `IRQ-001` e `IRQ-003` passam a ser tratadas como estaveis operacionalmente para a `#235`.
- Justificativa:
  - a base estatica ja estava sustentada por `blueMSX` + `ocm-pld-dev`/lineage HDL;
  - os rounds de `Knightmare Gold` em hardware nao trouxeram sinal contrario;
  - a insistencia em novas capturas deixou de ter retorno pratico proporcional.
- Consequencia pratica:
  - a trilha para de perseguir novos videos de `Knightmare Gold` para essas duas linhas;
  - o veredito global da matriz continua `partial`, nao `match`;
  - o proximo foco operacional da `#235` passa a ser `CMD-004` e `REN-003..REN-008`.

## Atualizacao incremental de 31/03/2026 - boot logo `MSX2+`

- O video do boot logo na build `FFC6` trouxe evidencia util, mas nao fechou os alvos originalmente esperados para esse repro.
- Nos quadros amostrados ao longo do video:
  - `SM:06` permaneceu estavel;
  - `R2:3F` e `R25:03` permaneceram estaveis;
  - `R26` e `R27` oscilaram (`1B/00`, `2D/04`, `33/01`, `02/03`, `00/02`, `00/00`);
  - `EP:1` permaneceu estavel;
  - `EO:35` permaneceu estavel;
  - `CE:0` e `TR:0` permaneceram zerados nos quadros inspecionados;
  - `TM6D` mostrou `R17:1A 9B:1B>1B>1C`, sem novo sinal util para o residual de `REG-004`.
- Leitura operacional:
  - o video fornece suporte parcial incidental para o path high-res de `SM:06`, com `R26/R27` variando sem corrupcao visual obvia;
  - ele nao fecha `CMD-004`, porque nao mostrou burst util de `CE/TR` nem evidenciou `R25 bit6` fora do caso ordinario;
  - ele tambem nao fecha `REN-003`, `REN-005` ou `REN-006`, porque o repro observado nao entrou nesses modos;
  - ele nao fecha `REN-007`, porque `EP` e `EO` ficaram estaveis demais para amarrar a borda temporal de odd/even page.
- Consequencia pratica:
  - o boot logo atual deixa de ser o melhor repro para `CMD-004` e `REN-003/005/006/007`;
  - o proximo passo operacional da `#235` deve migrar para `MSXDIAG` para `CMD-004` e reavaliar os alvos `REN-*` com repros que realmente entrem nos modos desejados.

## Atualizacao incremental de 31/03/2026 - primeiro round `MSXDIAG`

- O video de `MSXDIAG` na build `FFC6` cobriu:
  - splash/boot da ROM;
  - menu `PAGE 1 OF 2`;
  - menu `PAGE 2 OF 2`;
  - tela de instrucoes de `MIXED MODE`;
  - `SYSTEM INFORMATION`.
- Nos quadros inspecionados:
  - splash inicial em `SM:01`, `R2:06`, `R25:00`, `R26:00`, `R27:00`, `EP:0`;
  - menus, `MIXED MODE` (instrucao) e `SYSTEM INFORMATION` em `SM:00`, `R2:00`, `R25:00`, `R26:00`, `R27:00`, `EP:0`;
  - `TM3` ficou em `CE:0`, `TR:0`, `CS:000`, `CP:000` nos quadros uteis;
  - `TM6B` continuou mostrando leituras ordinarias de status (`SR:0/...`) sem novo burst util do command engine;
  - o teste de `MIXED MODE` nao chegou a ser iniciado; a captura ficou na tela de instrucao e depois voltou ao menu.
- Leitura operacional:
  - este round nao exerceu `CMD-004`;
  - com `R25:00` o tempo todo, o video nao chegou a tocar o caminho `commandEnable` por `R25 bit6` fora de `SCR5..SCR12`;
  - o `MSXDIAG` segue viavel apenas se o proximo round entrar no teste real que mude modo/registradores de video; caso contrario, deixa de ser repro util para `CMD-004`.
- Proximo passo objetivo:
  - repetir `MSXDIAG`, entrar de fato em `MIXED MODE` com `ACCEPT`, deixar o teste rodando alguns segundos e capturar `TM2`, `TM3` e `TM6B`;
  - se ainda assim `R25` continuar zerado e `CE/TR` mortos, abandonar `MSXDIAG` como repro de `CMD-004` nesta issue.

## Atualizacao incremental de 31/03/2026 - segundo round `MSXDIAG`

- O segundo video finalmente entrou no teste real de `MIXED MODE`.
- Nos quadros uteis do teste:
  - `TM2` mostrou `SM:02`, `R2:15`, `R25:00`, `R26:00`, `R27:00`, `EP:0`;
  - `TM3` permaneceu em `CE:0`, `TR:0`, `CS:000`, `CP:000`;
  - `TM6A` ficou com `25:0000`, `26:0000`, `27:0000` durante o quadro estavel do teste;
  - `TM6B` seguiu mostrando apenas reads ordinarios de status, sem burst util do command engine.
- Houve um quadro transitorio azul ao sair do teste com `SM:00` e `TM6A 25/26/27=0002`, mas ele nao sustentou estado observavel e nao veio acompanhado de atividade em `CE/TR`.
- Leitura operacional:
  - mesmo com o `MIXED MODE` realmente em execucao, o `MSXDIAG` nao exerceu `CMD-004`;
  - o teste usa um path de video que muda modo/registradores basicos, mas continua sem tocar o caminho de `commandEnable` por `R25 bit6`;
  - nesta issue, `MSXDIAG` deixa de ser repro util para `CMD-004`.
- Proximo passo objetivo:
  - abandonar `MSXDIAG` como caminho principal de `CMD-004`;
  - mover a coleta remanescente para outro repro do corpus que realmente use command engine fora de `SCR5..SCR12`, ou registrar `CMD-004` como sustentada apenas pela base estatica se nao houver repro dinamico melhor disponivel nesta rodada.

## Atualizacao incremental de 31/03/2026 - candidato `UNKNOWN1.DSK`

- Surgiu um novo candidato de repro dinamico amplo:
  - `roms/games/disks/DEMOS/UNKNOWN1.DSK`
- Reverse engineering inicial do disco:
  - root FAT12 com cadeia de boot `AUTOEXEC.BAS -> UR.BAT -> BASIC UR.BAS`;
  - o `UR.BAS` carrega ao menos `SCRIPT.PRG`, `LOADER.PRG`, `MUSIC.PRG`, `INTRO.PRG` e `REPLAY.PRG`;
  - o payload inclui muitos assets de video e script:
    - `*.VRM`
    - `*.VDP`
    - `*.NPC`
    - `*.PRG`
  - o payload tambem inclui musica/sample pesados:
    - `*.MUS`
    - `LETBEAT.SAM` com ~256KB
- Evidencia textual do proprio disco:
  - `ALIVE.TXT` fala explicitamente em risco para o VDP e no uso dos drives durante a demo;
  - `INTRO.TXT` descreve uma parte com `225 stars in 4 bitplanes and 7 colours`;
  - `SCOOP.TXT` anuncia sample ADPCM de `256KB` e oscilloscope de `12.8kHz`.
- Leitura operacional:
  - o `UNKNOWN1.DSK` e um excelente repro de smoke/stress para VDP + carregamento em disco + audio;
  - ele e util para detectar travas e regressao macroscopica do pipeline VDP;
  - ele nao substitui sozinho os repros dirigidos da matriz, porque a atribuicao causal por linha (`CMD-004`, `REN-*`) fica mais fraca.
- Uso recomendado nesta branch:
  - tratar `UNKNOWN1.DSK` como repro complementar de campo;
  - se ele travar sempre no mesmo bloco/cena, usar o overlay para identificar o subsistema dominante no ponto da falha antes de promover qualquer correcao no core.

## Atualizacao incremental de 31/03/2026 - primeiro freeze em `UNKNOWN1.DSK`

- O video `22.27.31` ja pegou a demo travada.
- Sequencia util observada no overlay:
  - fase anterior ainda saudavel:
    - `SM:06`, `R2:1F`, `R25/R26/R27=00`, `CE:0`, `TR:0`
    - `TM6D` com ultimo caminho `9B:2B>2B>2C`
  - transicao para o bloco problematico:
    - `SM:05`, `R2:1F`, depois `SM:05`, `R2:5F`
    - `R25` continua `00`, entao o freeze nao esta no caminho `CMD-004` (`R25 bit6`)
  - estado congelado repetido por varios segundos:
    - `SM:05`
    - `R2:5F`
    - `R25/R26/R27=00`
    - `TM3`: `CE:1`, `TR:1`, `CS:001`, `CP:000`
    - `TM6B`: ultimo chamador relevante da porta `0x99` em `P9:2C02`
    - `TM6D`: `R17:AC 9B:AC>2C>AC V:05`
- Leitura operacional:
  - o freeze nao parece ser de renderer puro nem de carga de disco;
  - o quadro congelado aponta para command engine preso em `SCREEN 5`, com `CE/TR` ativos de forma persistente;
  - o ultimo write indireto via `0x9B` caiu em `R#44` (`0x2C`) com valor `05`, isto e, o software estava tocando o registrador `CLR/argumento de transferencia` imediatamente antes do congelamento;
  - como `R25=00`, este repro nao ajuda a fechar `CMD-004`; ele aponta mais para um caso de comando com handshake `TR`/CPU-transfer em `SCREEN 5`.

## Atualizacao incremental de 31/03/2026 - alinhamento write-side com `blueMSX`

- A comparacao direta contra `blueMSX` mostrou uma divergencia estrutural no path de write da VDP:
  - no `blueMSX`, `write()` e `vdpUpdateRegisters()` passam por `sync(vdp, now)` antes de mutar VRAM/registradores;
  - no core local, o path `fmsx_vdp_sync_before_cpu_write()` estava focado quase só no freeze visual do `Knightmare Gold` e nao fazia flush do command engine.
- Isso deixava a write-side path mais fraca que a read-side path:
  - `fmsx_vdp_sync_before_status_read()` ja fazia um command-slice flush coarse;
  - writes por `0x98/0x99/0x9A/0x9B` nao reutilizavam esse mesmo flush.
- Ajuste aplicado no core local:
  - `src/fmsx_local/V9938.c` agora concentra o flush em `VdpSyncCommandSlice()`;
  - `VDPWrite()`, `VDPRead()` e `fmsx_vdp_sync_before_status_read()` passaram a usar o mesmo helper;
  - foi exposto `fmsx_vdp_sync_before_cpu_mutation()` para o path de write-side;
  - `src/fmsx_local/MSX.c:fmsx_vdp_sync_before_cpu_write()` agora sempre chama o flush do command engine, mesmo fora da janela visual especial do `Knightmare Gold`.
- Justificativa de processo:
  - este foi um desvio controlado do escopo original da `#235` (`corrigir o core`) porque o `UNKNOWN1.DSK` deixou de ser apenas smoke test e passou a apontar uma divergencia concreta contra o `blueMSX` no handshake do command engine;
  - o ajuste permaneceu pequeno e diretamente rastreado a uma referencia primaria do projeto.
- Build validada desse corte:
  - `BUILD_BID=202603312345-issue235-vdp-write-sync`
  - `BUILD_ID=DD8E`
  - `BUILD_HASH=98891cf`
  - artefato: `artifacts/kernel8-issue235.img`
- Proximo passo objetivo:
  - repetir `UNKNOWN1.DSK` na build `DD8E`, com `TM2`, `TM3`, `TM6B` e `TM6D`;
  - se a demo passar do ponto antigo da trava, o ajuste vira candidato forte de causa real;
  - se congelar de novo, capturar um unico frame nitido do novo estado com o overlay legivel para fechar o proximo corte.
- Consequencia pratica:
  - `UNKNOWN1.DSK` passa a ser um excelente repro complementar de travamento do command engine;
  - mas ele sai do alvo principal da `#235` e passa a sugerir backlog tecnico proprio para investigar command transfer em `SCREEN 5`.

## Atualizacao incremental de 31/03/2026 - `UNKNOWN1.DSK` apos `DD8E`

- O video `23.00.32` mostrou que a demo realmente continuou parando no mesmo bloco visual, mas o estado interno mudou:
  - o freeze antigo de `SCREEN 5` com `CE=1` e `TR=1` nao voltou;
  - no quadro util, o overlay passou a mostrar:
    - `SM:07`
    - `R2:3F`
    - `R25/R26/R27=00`
    - `DP:1`, `EP:0`
    - `TM3`: `CE:0`, `TR:0`
    - `TM6B`: `P9:C516`, `S2:00`, `SR:1/04`, `99:R/1/1/01/04`
- Leitura operacional:
  - o ajuste write-side da build `DD8E` removeu o hang anterior do command engine;
  - o ponto novo de parada nao esta mais em `CE/TR`, e sim em um loop de polling de `S#1` (`R#15=1`) no chamador `C516h`;
  - o ultimo micro-op da `0x99` ja tinha concluido e devolvido `0x04`, isto e, o demo ficou esperando `S#1 bit0` sair de `0`.
- Comparacao direta com a referencia primaria:
  - no `blueMSX`, `S#1 bit0` tem dois comportamentos:
    - com `IE1` ligado, reflete o latch/IRQ pendente;
    - com `IE1` desligado, vira uma janela live de `HBlank/timeHint`, nao um latch sticky;
  - o core local ainda tratava `S#1 bit0` como latch sticky independentemente do enable.
- Ajuste aplicado na branch:
  - `src/fmsx_local/MSX.c:fmsx_vdp_status1_live()` foi realinhado ao `blueMSX`;
  - com `IE1` ligado, o caminho continua sticky/IRQ-backed para preservar a base raster ja estabilizada;
  - com `IE1` desligado, `S#1 bit0` agora e sintetizado como janela live na linha-alvo, usando a fase/tempo de linha local apos o fim da area visivel.
- Validacao local desse corte:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make BUILD_BID=202603312355-issue235-status1-live-window`: OK
- Build validada:
  - `BUILD_BID=202603312355-issue235-status1-live-window`
  - `BUILD_ID=1052`
  - `BUILD_HASH=287fe40e915f15a16dd10ddf7f34d258735b38af`
  - artefato: `artifacts/kernel8-issue235.img`
- Proximo passo objetivo:
  - repetir `UNKNOWN1.DSK` na build `1052`;
  - verificar se o demo passa do ponto atual de parada;
  - se ainda travar, capturar um unico frame nitido do novo estado com `TM2`, `TM3`, `TM6B` e `TM6D`.

## Atualizacao incremental de 01/04/2026 - `UNKNOWN1.DSK` aprovado na build `1052`

- O round de hardware da manha (`09.03.38`) confirmou o efeito esperado do ajuste em `S#1`:
  - o `UNKNOWN1.DSK` passou do ponto antigo de parada;
  - a demo seguiu rodando de forma estavel, sem voltar ao hang anterior nem ao loop novo de polling em `S#1`;
  - para a trilha atual, o repro deixa de ser um blocker e passa a ser um smoke/stress pass valioso de `VDP + disk + audio`.
- Leitura operacional:
  - o ajuste write-side da build `DD8E` resolveu o hang anterior de `CE/TR`;
  - o ajuste seguinte da build `1052`, alinhando `S#1 bit0` ao modelo live-window do `blueMSX` quando `IE1=0`, resolveu o segundo ponto de parada;
  - a combinação dos dois cortes sustenta que o `UNKNOWN1.DSK` estava exercendo duas divergencias diferentes do core local, ambas agora removidas.
- Consequencia pratica na `#235`:
  - `UNKNOWN1.DSK` passa a ser repro complementar aprovado, util como gate informal de regressao para `VDP9958` stock;
  - a branch deixa de perseguir esse demo como bug aberto;
  - o backlog principal da `#235` volta a ser o fechamento/encaminhamento de `CMD-004` e `REN-003..REN-008`.

## Atualizacao incremental de 01/04/2026 - repro sintético para `CMD-004`

- O sucesso do `UNKNOWN1.DSK` mostrou que o demo serve bem como smoke/stress pass, mas nao ajuda a fechar `CMD-004`:
  - ele passa por `SM:05/06/07/08`;
  - porem os frames amostrados ficaram com `R25/R26/R27=00`, sem exercitar o path de `commandEnable`.
- Como boot logo `MSX2+` e `MSXDIAG` tambem nao entregaram sinal decisivo, a branch ganhou um repro sintético novo:
  - `sdcard/disks/DEBUG/V9958_CMD004_R25.DSK`
  - `CMD004.BAS`
  - `CMD004_RUNNER.asm`
- O runner faz um A/B direto em `SCREEN 4`:
  - dispara o mesmo `HMMV` com `R25 bit6=0`;
  - repete o comando com `R25 bit6=1`;
  - devolve em memoria se `CE` chegou a ficar ativo em cada caso.
- Resultado esperado:
  - `OFF LOOPS=0`
  - `ON LOOPS>0`
- Consequencia pratica:
  - `CMD-004` deixa de depender de repro oportunista em software de terceiros;
  - o proximo round de hardware da `#235` deve usar esse `.DSK` novo antes de voltar aos `REN-*`.

## Atualizacao incremental de 01/04/2026 - hotfix do `CMD004`

- O primeiro round do disco `V9958_CMD004_R25.DSK` voltou com `Syntax error 120`.
- Causa do proprio repro:
  - o runner foi carregado em `D200h`, mas o buffer de resultado estava em `D120h`;
  - isso deixava o runner escrevendo abaixo do `HIMEM` definido por `CLEAR 200,&HD200`, contaminando o workspace do BASIC.
- Correcao aplicada:
  - `CMD004_RUNNER.asm` moveu `RESULTS` para `D500h`;
  - `CMD004.BAS` passou a ler o resumo em `D500h`;
  - o `.DSK` foi regenerado sem mudar o kernel.
- Consequencia pratica:
  - para testar `CMD-004`, e obrigatorio recopy do `V9958_CMD004_R25.DSK` novo;
  - nao e necessaria build nova do kernel para esse hotfix.

## Atualizacao incremental de 01/04/2026 - segundo hotfix do `CMD004`

- O round seguinte ainda voltou com `Syntax error`, agora apontando para a linha `180`.
- Causa provavel do proprio repro:
  - o `CMD004.BAS` usava nomes como `OFFL` e `ONL`;
  - em `RUN "CMD004.BAS"` via ASCII BASIC, isso pode ser tokenizado de forma ambigua pelo parser do MSX BASIC por comecar com lexemas reservados.
- Correcao aplicada:
  - o `CMD004.BAS` foi simplificado para variaveis curtas e neutras (`L0`, `L1`, `S0`, `S1`, `FG`);
  - o `.DSK` foi regenerado novamente, sem mudar o kernel.
- Consequencia pratica:
  - continua obrigatorio recopy do `V9958_CMD004_R25.DSK`;
  - a build de kernel permanece a mesma (`1052`).

## Atualizacao incremental de 01/04/2026 - repro `CMD004` migra de `CE` para side effect em VRAM

- O primeiro round funcional do `CMD004` finalmente executou, mas devolveu `OFF LOOPS=0`, `ON LOOPS=0`, `FLAGS=0`.
- Leitura tecnica:
  - isso deixa de apontar para bug de kernel ou de BASIC;
  - o runner antigo dependia de observar `CE` via polling de `S#2`, e o `HMMV` pode encerrar antes do primeiro probe do CPU mesmo quando o path esta correto.
- Correcao de metodo aplicada:
  - o `CMD004_RUNNER.asm` agora mede efeito final em `VRAM[0]`, nao mais só janela de `CE`;
  - ele limpa `VRAM[0]`, roda `HMMV` com `R25 bit6=0`, lê `VRAM[0]`, repete com `R25 bit6=1` e devolve os dois bytes, `S#2` final e flags auxiliares.
- Novo criterio esperado:
  - `OFF BYTE=0`
  - `ON BYTE=165`
  - `bit0/bit1` das flags marcam mudanca real em `VRAM[0]`;
  - `bit2/bit3` ficam só como telemetria auxiliar de `CE`.
