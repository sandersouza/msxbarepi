# Issue #235 - Validar corpus dinâmico do V9958 stock com telemetria já existente

- URL: https://github.com/sandersouza/msxbarepi/issues/235
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:video`, `area:emulation`, `documentation`
- Estado local atual: IN PROGRESS
- Branch ativa: `235-validar-corpus-dinamico-v9958-stock`

## Objetivo
Usar apenas a instrumentação já existente no projeto para fechar ou bloquear explicitamente as linhas `disputed` e as divergências mais importantes da matriz comparativa do V9958 stock.

## Contexto técnico
- O projeto já tem observabilidade útil em hardware sem precisar de harness novo:
  - overlays `TM2`, `TM3`, `TM4`, `TM6`
  - eventos `VDP EVT` na UART
  - contadores e traces em `src/fmsx_local/MSX.c` e `src/fmsx_runtime.c`
- A `#82` já usou esse caminho para vários achados sobre:
  - `S#1`
  - `S#2`
  - `IE1`
  - multipage
  - boot logo `MSX2+`
- O objetivo desta issue é transformar isso em evidência formal da matriz, não inventar um novo ambiente de teste.

## Corpus fixo
- boot logo `MSX2+`
- `MSXDIAG`
- `Gradius2E/Nemesis2E`
- `Knightmare Gold`

## Regra de execução
- Usar apenas infraestrutura existente:
  - overlay `TM2/TM3/TM4/TM6`
  - UART `VDP EVT`
  - contadores/trace já disponíveis no runtime
- Telemetria nova só entra se uma linha crítica da matriz não puder ser fechada sem ela.

## Fora de escopo
- Criar harness novo
- Corrigir o core nesta issue
- Abrir novos repros fora do corpus definido sem necessidade comprovada

## Desvio controlado de escopo
- Em 31/03/2026, a issue sofreu um desvio controlado e minimo desse escopo:
  - o stress repro `UNKNOWN1.DSK` expôs um congelamento repetivel com `SM:05`, `CE=1`, `TR=1` e ultimo write indireto em `R#44`;
  - a comparacao direta com o `blueMSX` mostrou uma divergencia concreta no write-side sync da VDP;
  - por isso, um ajuste pequeno de core foi aceito nesta branch para realinhar o path de write com a referencia primaria do projeto e destravar a validacao dinamica.

## DoR
- [x] Matriz canônica criada
- [x] Linhas `disputed` e gaps prioritários já identificados
- [x] Corpus dinâmico fixo escolhido
- [x] Telemetria existente mapeada

## DoD
- [ ] Toda linha `disputed` importante tem evidência dinâmica anexada ou bloqueio explícito
- [ ] Nenhum harness novo foi criado
- [ ] Nenhuma telemetria nova foi adicionada sem justificativa objetiva
- [ ] Cada repro do corpus está ligado a linhas concretas da matriz

## Checklist operacional
- [ ] Mapear quais linhas exigem evidência dinâmica
- [ ] Executar o corpus base com telemetria existente
- [ ] Anexar evidências relevantes no diretório da `#82` e na matriz
- [ ] Registrar bloqueios explícitos quando a evidência não puder ser coletada
- [x] Materializar pacote de repros dirigidos para hardware em `docs/reverse-engineering/issues/issue-82/dynamic-capture-recipes.md`

## Mapeamento preliminar de evidência

### Corte de observabilidade real (30/03/2026)
- A telemetria existente cobre bem:
  - `S#1` / `S#2`
  - `R#19` / `R#23`
  - `R#25` / `R#26` / `R#27`
  - início/fim de comando (`CS/CE`)
  - writes em `0x98` e `0x99`
  - delta por frame de `0x9B` via `P9BW`
- A telemetria existente **não** expõe hoje, de forma direta:
  - `S#8` / `S#9`
  - valor corrente de `R#17`
  - alvo efetivo do write indireto via `0x9B`
- Telemetria mínima adicionada nesta rodada:
  - o overlay ganhou `TM6D` com `R17`, último caminho de `0x9B` (`before > target > after`), último valor escrito em `0x9B` e conteúdo bruto atual de `S#8/S#9`
- Implicação:
  - `IRQ-001`, `IRQ-003`, `CMD-004` e `REN-002..REN-008` continuam plenamente alinhados ao escopo desta issue
  - `STS-006` e o residual de `REG-004` deixam de estar bloqueados por invisibilidade bruta, mas ainda dependem de repro dirigido/captura em hardware

### IRQ e command engine
- `IRQ-001`:
  - repro principal: `Knightmare Gold`
  - overlay: `TM2` (`I1/F1`) e `TM4` (`I1:a/b`, `IA`, `IH`)
  - trace: `TM6B` (`I1A`, `I1F`, `S1`) e UART `VDP EVT`
  - objetivo: provar se o latch de `S#1 bit0` continua sticky mesmo com `IE1` desabilitado
- `STS-006`:
  - repro principal: `MSXDIAG` sintético de `SRCH` com captura de `TM3` + `TM6D`
  - overlay: `TM3` (`CE/TR`) enquadra a janela do comando; `TM6D` mostra `S#8/S#9` brutos
  - trace: `TM6B`/UART `VDP EVT` também não carregam `S#8/S#9`
  - objetivo: desempatar se `S#8/S#9` expõem `SXTMP` live durante o `SRCH` ou só o valor latched ao fim do comando
  - bloqueio atual: a invisibilidade bruta foi removida, mas a linha ainda precisa de repro dirigido aceito pela trilha; sem isso, `TM6D` só mostra estado interno do nosso core
- `IRQ-003`:
  - repro principal: `Knightmare Gold`
  - overlay: `TM4B` (`TL/TD`, `EO`)
  - trace: `TM6B` (`R19`, `R23`, `I1A`, `I1F`) e UART `VDP EVT`
  - objetivo: correlacionar writes em `R#19/R#23` com o alvo lógico efetivo no frame corrente
- `CMD-004`:
  - repro principal: boot logo `MSX2+` e `MSXDIAG`
  - overlay: `TM3` (`CE/TR`)
  - trace: `TM6B` (`R25`, `CS`, `CE`, `S2`) e UART `VDP EVT`
  - objetivo: confirmar em runtime o `commandEnable` derivado de `R#25 bit6` fora de `SCR5..SCR12`

### Renderer e addressing
- `REN-002` (`SCREEN 4`):
  - repro principal: `Knightmare Gold` e `Gradius2E`
  - overlay: `TM2` (`R25/R26/R27`, `EP`, `I1/F1`)
  - trace: `TM6B` (`R25`, `R26`, `R27`, `S2`) e UART `VDP EVT`
  - objetivo: validar se o corte do core local entre path plain e compositor estendido acompanha o comportamento observado em raster hacks
- `REN-003` (`SCREEN 5`):
  - repro principal: boot logo `MSX2+`
  - overlay: `TM2` (`R25/R26/R27`, `EP`)
  - trace: `TM6B` (`R25`, `R26`, `R27`) e UART `VDP EVT`
  - objetivo: fechar multipage 256px, `SP2` e page flip em `0x8000`
- `REN-004` (`SCREEN 6/7`):
  - repro principal: `Gradius2E/Nemesis2E`
  - overlay: `TM2` (`R25/R26/R27`, `EP`)
  - trace: `TM6B` (`R25`, `R26`, `R27`) e UART `VDP EVT`
  - objetivo: fechar scroll high-res, troca de página e alinhamento do plano interleaved do `SCREEN 7`
  - estado operacional na `#235`: bloqueado por falta de evidência dinâmica útil no corpus atual
- `REN-005` (`SCREEN 8`):
  - repro principal: boot logo `MSX2+`
  - overlay: `TM2` (`R25/R26/R27`, `EP`)
  - trace: `TM6B` (`R25`, `R26`, `R27`) e UART `VDP EVT`
  - objetivo: confirmar o path interleaved 256px com palette expandida e page flip
- `REN-006` (`SCREEN 10/12`):
  - repro principal: boot logo `MSX2+`
  - overlay: `TM2` (`R25/R26/R27`, `EP`) e `TM3` (`CE/TR`)
  - trace: `TM6B` (`R25`, `R26`, `R27`, `CS`, `CE`) e UART `VDP EVT`
  - objetivo: fechar scroll em `YJK/YAE` sem telemetria nova
- `REN-007` (odd/even page por `S#2 bit1`):
  - repro principal: boot logo `MSX2+`
  - overlay: `TM2` (`EP`) e `TM4B` (`EO`)
  - trace: `TM6B` (`S2`) e UART `VDP EVT`
  - objetivo: correlacionar o `field` observado com a página efetiva usada pelo renderer
- `REN-008` (`R27`/mask/alinhamento de sprite):
  - repro principal: `Gradius2E/Nemesis2E` e boot logo `MSX2+`
  - overlay: `TM2` (`R25/R26/R27`, `EP`)
  - trace: `TM6B` (`R27`) e UART `VDP EVT`
  - objetivo: fechar o backdrop por telemetria existente e registrar explicitamente se o alinhamento prático de sprite continuar dependendo de evidência visual/screenshot
  - estado operacional na `#235`: bloqueado por falta de evidência dinâmica útil no corpus atual

## Riscos e bloqueios esperados
- `STS-006` continua dependente de repro dirigido:
  - `TM6D` passou a expor `S#8/S#9`, mas o corpus base ainda não tem um cenário fechado de `SRCH` que desempregue a linha sozinho
- Atualização 31/03/2026 - corte `IO-004`:
  - o repro estreitado do `STS-006`, reduzido ao caminho `OUT/IN 0x99` de `S2`, passou até o fim em hardware com a build experimental `E82F`
  - esse resultado destrava a trilha dinâmica: o gargalo anterior deixou de estar no primeiro write da `0x99`, então o disco `V9958_STS006_SRCH.DSK` voltou ao repro completo de `SRCH`
  - a próxima captura útil desta issue volta a ser a original:
    - `TM3` para `CE/TR`
    - `TM6D` para `S8/S9`
    - vídeo curto para decidir live vs latched em `STS-006`
- Ajuste incremental ainda em 31/03/2026:
  - o teste seguinte com o `SRCH` completo parou no vermelho, mas o próprio overlay capturado no vídeo já mostrava `CE=0`, `S2=00` e `S8/S9=00/00`
  - isso desloca o suspeito do comando em si para o primeiro polling pós-`R46=&H60`
  - consequência prática:
    - o disco `STS006` foi estreitado de novo
    - agora ele isola o primeiro select/read de `S2`, `S8` e `S9` logo após disparar o `SRCH`
- Ajuste incremental ainda em 31/03/2026, após o teste amarelo:
  - o narrowing seguinte confirmou travamento no amarelo, isto é, depois de selecionar `S9` e antes de concluir `S9=INP(&H99)`
  - como o `case 0x99` local não tem side effect especial para `S#9`, o overlay ganhou uma telemetria mínima extra em `TM6B`:
    - `SR:r/v` = último status register lido pela porta `0x99` e o valor efetivamente retornado
  - build local validada para esse corte:
    - `BUILD_BID=202603311840-issue82-status9-read-observe`
    - `BUILD_ID=F6A2`
    - `BUILD_HASH=7F2D898F`
  - consequência prática:
    - o próximo teste em hardware mantém o mesmo disco amarelo do `STS006`
    - o dado novo que fecha o próximo corte é ver se o overlay chega a mostrar `SR:9/xx` antes do freeze
- Ajuste incremental ainda em 31/03/2026, após o vídeo `F6A2`:
  - o quadro final mostrou `SR:2/0E`, então o amarelo capturado ainda pertencia ao pre-read residual anterior a `R46`
  - o repro em disco foi corrigido para remover esse bloco antigo e deixar o amarelo tardio exclusivo da seleção de `S9`
  - consequência prática:
    - o próximo teste com a build `F6A2` deve usar o `.DSK` regenerado
    - se voltar a parar no amarelo com esse disco novo, aí sim o corte cai de verdade entre `R15=9` e `S9=INP(&H99)`
- Ajuste incremental ainda em 31/03/2026, após o primeiro run completo sem pre-read residual:
  - o disco passou até o fim, mas retornou `S2=31 S8=31 S9=31 X=287`
  - como esse conjunto não bate com o modelo local esperado para `S#9`, a trilha mudou de foco:
    - não é mais “o script trava no primeiro polling”
    - é “o BASIC está lendo a porta `0x99` de forma confiável o bastante?”
  - consequência prática:
    - o repro `STS006` foi refeito para usar uma rotina Z80 curta com `DI/EI`, chamada via `USR`
    - `S2/S8/S9` passam a ser lidos de forma atômica, sem deixar BIOS/IRQ intercalar reads/writes na porta `0x99`
- Ajuste incremental ainda em 31/03/2026, após o run com `USR` repetido:
  - o vídeo parou no rosa, mas o overlay mostrou `SR:8/00` e `TM6D S:00/FE`
  - isso já basta para afirmar que:
    - a leitura atômica de `S8` aconteceu
    - o core local já mantinha `S9=FE` no backing store
  - consequência prática:
    - o próximo repro deixa de chamar `USR` três vezes
    - um único helper com `DI/EI` agora lê `S2/S8/S9` em um burst único e grava os três bytes em memória para `PEEK`
- Ajuste incremental ainda em 31/03/2026, após o `branco gelo`:
  - a inspeção do quadro útil confirmou que o tom pertencia ao `branco` da variante de helper único, isto é, ao estado imediatamente após o burst atômico `S2/S8/S9`
  - consequência prática:
    - o repro em disco deixou de usar o helper único
    - o bloco tardio passou a usar três helpers com `DI/EI`: `S2/S8`, `select S9` e `read S9`
- Ajuste incremental ainda em 31/03/2026, após o vermelho da variante `split atomic S9`:
  - o quadro útil mostrou `CE=0`, `SR:2/1C` e `S:00/FE`
  - isso fecha o corte:
    - o `SRCH` já tinha terminado
    - o backing store local já mantinha `S9=FE`
    - o resíduo ainda não está no bloco de `S9`, e continua antes de concluir o helper inicial de `S2`
  - consequência prática:
    - o helper de `S2` foi quebrado em `select S2` e `read S2`
    - o bloco tardio agora usa cinco helpers com `DI/EI`: `select S2`, `read S2`, `read S8`, `select S9`, `read S9`
- Ajuste incremental ainda em 31/03/2026, após o rosa da variante `split S2 select/read`:
  - o quadro útil mostrou `CE=0`, `SR:8/00` e `S:00/00`
  - isso fecha o corte:
    - o fluxo já saiu de `S2`
    - o resíduo atual caiu no helper de `S8`
  - o relato de “pulos rápidos entre cores” também mostrou um defeito do próprio repro:
    - os marcadores tardios ainda não seguravam `delay` entre um helper e o seguinte
  - consequência prática:
    - o helper de `S8` foi quebrado em `select S8` e `read S8`
    - o bloco tardio agora usa seis helpers com `DI/EI`: `select S2`, `read S2`, `select S8`, `read S8`, `select S9`, `read S9`
    - cada marcador tardio agora segura um `delay` curto antes do próximo helper, para a captura humana não perder transições
- Ajuste incremental ainda em 31/03/2026, pivô de estratégia:
  - o narrowing por BASIC já rendeu o que precisava:
    - `SRCH` termina (`CE=0`)
    - o conflito inicial de latch em `0x99` colou em `IO-004`

- Atualização incremental ainda em 31/03/2026, primeiro round `Knightmare Gold`:
  - a primeira captura de `Knightmare Gold` na build `FFC6` mostrou `SM:04` estável e, nos quadros amostrados, `R25:00`, `R26:00`, `R27:00`, `EP:0`, `R19:0024`, `R23:0000` e `EO:42` sem variação relevante
  - visualmente, o jogo não apresentou corrupção óbvia em `SCREEN 4` durante movimento e transição de salas no trecho observado
  - leitura operacional:
    - `REN-002` ganha apenas suporte parcial fraco para o path plain de `SCREEN 4`
    - `IRQ-001` continua em aberto, porque o vídeo não capturou um momento decisivo de latch/clear de `S#1 bit0`
    - `IRQ-003` continua em aberto, porque `R19/R23` e `TL/TD` não mudaram de forma útil nos frames inspecionados
  - próximo passo útil:
    - repetir `Knightmare Gold` com o mesmo overlay, mas em trecho mais dinâmico e visando quadro onde `S1`, `I1A/I1F`, `TL/TD`, `R19` ou `R23` realmente mudem

- Atualizacao incremental ainda em 31/03/2026, `UNKNOWN1.DSK` e write-side sync:
  - o primeiro freeze util do `UNKNOWN1.DSK` ficou consistente em:
    - `SM:05`
    - `R2:5F`
    - `R25/R26/R27=00`
    - `CE:1`
    - `TR:1`
    - ultimo write indireto em `R#44` via `TM6D 9B:AC>2C>AC V:05`
  - leitura operacional:
    - o repro nao reforca `CMD-004`;
    - ele aponta para um caso de command engine/CPU-transfer handshake em `SCREEN 5`.
  - comparacao direta com `blueMSX`:
    - `blueMSX` sincroniza a VDP antes de writes de VRAM/registradores (`sync(vdp, now)` em `write()`/`vdpUpdateRegisters()`);
    - o core local so fazia command-slice flush no path de status read, nao no path de write-side VDP.
  - ajuste minimo aplicado:
    - `src/fmsx_local/V9938.c` ganhou `VdpSyncCommandSlice()`;
    - `VDPWrite()`, `VDPRead()` e `fmsx_vdp_sync_before_status_read()` passaram a compartilhar esse helper;
    - `src/fmsx_local/MSX.c:fmsx_vdp_sync_before_cpu_write()` passou a chamar `fmsx_vdp_sync_before_cpu_mutation()` em todos os writes da VDP, alem do freeze visual especifico do `Knightmare Gold`.
  - build validada:
    - `BUILD_BID=202603312345-issue235-vdp-write-sync`
    - `BUILD_ID=DD8E`
    - `BUILD_HASH=98891cf`
  - proximo passo:
    - repetir `UNKNOWN1.DSK` nessa build e verificar se ele ultrapassa o ponto anterior da trava.

- Atualização incremental ainda em 31/03/2026, segundo round `Knightmare Gold`:
  - o vídeo maior finalmente capturou uma transição útil entre gameplay, tela de `STAGE 01` e retorno ao jogo
  - nos quadros de gameplay amostrados:
    - `SM:04`
    - `R25:00`, `R26:00`, `R27:00`, `EP:0`
    - `I1:1`, `F1:0`
    - `R19:0024`, `R23:0000`
    - `EO:42`
  - no quadro de transição:
    - `I1:0`, `F1:0`
    - `R19:0000`, `R23:0000`
    - `EO:35`
    - `S0:1`
    - `TM6B` exibiu `SR:0/9F` e `99:R/1/0/01/9F`
  - leitura operacional:
    - `REN-002` ganha suporte parcial melhor, porque o `SCREEN 4` continuou visualmente estável no gameplay e na transição
    - `IRQ-003` ganha indício útil, porque `R19` muda de `0024` para `0000` e volta, mas ainda falta amarrar essa mudança ao comportamento de `TL/TD` no mesmo trecho
    - `IRQ-001` continua aberta, porque o vídeo ainda não mostrou o latch/clear decisivo de `S#1 bit0` com nitidez suficiente
  - próximo passo útil:
    - novo capture pass curto em `Knightmare Gold`, mirando especificamente a borda da transição onde `R19` troca de valor, para tentar pegar `TL/TD`, `I1A/I1F` e `S1` variando no mesmo trecho

- Atualização incremental ainda em 31/03/2026, terceiro round `Knightmare Gold`:
  - o corte curto seguinte capturou de novo a troca `R19:0000 <-> 0024`, mas com a borda contaminada por `PAU:1`
  - nos quadros inspecionados:
    - inicio/fim do corte: `PAU:1`, `R19:0000`
    - miolo de gameplay: `PAU:0`, `R19:0024`, `SM:04`, `R25/R26/R27=00`, `EP:0`, `I1:1`, `F1:0`
  - `TM4B` continuou sem variar de forma nitida o bastante para amarrar `TL/TD` ou `S1` ao mesmo evento
  - leitura operacional:
    - a alternancia de `R19` fica reforcada
    - `IRQ-003` continua em aberto porque a correlacao com `TL/TD` segue fraca
    - `IRQ-001` continua em aberto porque o latch/clear decisivo de `S#1 bit0` nao apareceu
  - próximo passo útil:
    - repetir `Knightmare Gold` sem `PAU:1` entrando no quadro e com 3-5s centrados em runtime ativo ao redor da transição

- Decisão operacional ainda em 31/03/2026:
  - `IRQ-001` e `IRQ-003` passam a ser tratadas como estáveis operacionalmente para a `#235`
  - justificativa:
    - a base estática já estava sustentada por `blueMSX` + `ocm-pld-dev`/lineage HDL
    - os rounds de `Knightmare Gold` não trouxeram sinal contrário
    - insistir em novos vídeos deixou de ter retorno prático proporcional
  - consequência prática:
    - a issue deixa de depender de novas capturas de `Knightmare Gold` para `IRQ-001/003`
    - as linhas continuam `partial` na matriz, não `match`
    - o próximo foco operacional passa a ser `CMD-004` e `REN-003..REN-008`

- Atualização incremental ainda em 31/03/2026, boot logo `MSX2+`:
  - o vídeo do boot logo na build `FFC6` mostrou um comportamento estável, porém menos abrangente do que o roteiro previa
  - nos quadros amostrados:
    - `SM:06` permaneceu estável
    - `R2:3F` e `R25:03` permaneceram estáveis
    - `R26/R27` oscilaram (`1B/00`, `2D/04`, `33/01`, `02/03`, `00/02`, `00/00`)
    - `EP:1` e `EO:35` permaneceram estáveis
    - `CE:0` e `TR:0` ficaram zerados nos quadros inspecionados
    - `TM6D` mostrou `R17:1A 9B:1B>1B>1C`, sem novo sinal útil do residual `REG-004`
  - leitura operacional:
    - o vídeo só dá suporte parcial incidental ao path high-res de `SM:06`, com `R26/R27` variando sem corrupção visual óbvia
    - não fecha `CMD-004`, porque não mostrou burst útil de `CE/TR`
    - não fecha `REN-003`, `REN-005` ou `REN-006`, porque o repro observado não entrou nesses modos
    - não fecha `REN-007`, porque `EP` e `EO` ficaram estáveis demais
  - próximo passo útil:
    - migrar `CMD-004` para `MSXDIAG`
    - reavaliar `REN-003/005/006/007` com repros que realmente entrem nos modos de vídeo alvo

- Atualização incremental ainda em 31/03/2026, primeiro round `MSXDIAG`:
  - o vídeo de `MSXDIAG` na build `FFC6` cobriu apenas:
    - splash/boot da ROM;
    - menus `PAGE 1 OF 2` e `PAGE 2 OF 2`;
    - tela de instruções de `MIXED MODE`;
    - `SYSTEM INFORMATION`
  - nos quadros úteis inspecionados:
    - splash em `SM:01`, `R2:06`, `R25:00`, `R26:00`, `R27:00`, `EP:0`;
    - menus, `MIXED MODE` (instrução) e `SYSTEM INFORMATION` em `SM:00`, `R2:00`, `R25:00`, `R26:00`, `R27:00`, `EP:0`;
    - `TM3` ficou em `CE:0`, `TR:0`, `CS:000`, `CP:000`;
    - `TM6B` seguiu em reads ordinários de status (`SR:0/...`), sem burst novo do command engine;
    - o teste de `MIXED MODE` não foi iniciado; a captura ficou na tela de instrução e depois voltou ao menu
  - leitura operacional:
    - o round não exerceu `CMD-004`;
    - com `R25:00` o tempo todo, o vídeo não chegou a tocar o path `commandEnable` por `R25 bit6` fora de `SCR5..SCR12`;
    - o `MSXDIAG` só continua como repro útil desta linha se o próximo round entrar no teste real que altere modo/registradores de vídeo
  - próximo passo útil:
    - repetir `MSXDIAG`, entrar de fato em `MIXED MODE` com `ACCEPT`, deixar o teste rodando alguns segundos e capturar `TM2`, `TM3` e `TM6B`
    - se mesmo assim `R25` continuar zerado e `CE/TR` mortos, abandonar `MSXDIAG` como repro de `CMD-004` nesta issue

- Atualização incremental ainda em 31/03/2026, segundo round `MSXDIAG`:
  - o segundo vídeo finalmente entrou no teste real de `MIXED MODE`
  - nos quadros úteis do teste:
    - `TM2` mostrou `SM:02`, `R2:15`, `R25:00`, `R26:00`, `R27:00`, `EP:0`
    - `TM3` permaneceu em `CE:0`, `TR:0`, `CS:000`, `CP:000`
    - `TM6A` ficou com `25:0000`, `26:0000`, `27:0000` no quadro estável do teste
    - `TM6B` seguiu mostrando apenas reads ordinários de status, sem burst útil do command engine
  - houve um quadro transitório azul ao sair do teste com `SM:00` e `TM6A 25/26/27=0002`, mas ele não sustentou estado observável e não veio acompanhado de atividade em `CE/TR`
  - leitura operacional:
    - mesmo com o `MIXED MODE` realmente em execução, o `MSXDIAG` não exerceu `CMD-004`
    - o teste usa um path de vídeo que muda modo/registradores básicos, mas continua sem tocar o caminho de `commandEnable` por `R25 bit6`
    - nesta issue, `MSXDIAG` deixa de ser repro útil para `CMD-004`
  - próximo passo útil:
    - abandonar `MSXDIAG` como caminho principal de `CMD-004`
    - mover a coleta remanescente para outro repro do corpus que realmente use command engine fora de `SCR5..SCR12`, ou registrar `CMD-004` como sustentada apenas pela base estática se não houver repro dinâmico melhor disponível nesta rodada

- Atualização incremental ainda em 31/03/2026, candidato `UNKNOWN1.DSK`:
  - novo repro candidato amplo:
    - `roms/games/disks/DEMOS/UNKNOWN1.DSK`
  - reverse engineering inicial do root FAT12:
    - cadeia de boot `AUTOEXEC.BAS -> UR.BAT -> BASIC UR.BAS`
    - o `UR.BAS` carrega ao menos `SCRIPT.PRG`, `LOADER.PRG`, `MUSIC.PRG`, `INTRO.PRG` e `REPLAY.PRG`
    - o disco inclui muitos assets de video/script (`*.VRM`, `*.VDP`, `*.NPC`, `*.PRG`) e audio (`*.MUS`, `LETBEAT.SAM` com ~256KB)
  - textos internos do proprio disco reforcam o perfil tecnico:
    - `ALIVE.TXT` fala explicitamente do uso dos drives e brinca com “hazardous to your VDP”
    - `INTRO.TXT` descreve uma parte com `225 stars in 4 bitplanes and 7 colours`
    - `SCOOP.TXT` anuncia sample ADPCM de `256KB` e oscilloscope de `12.8kHz`
  - leitura operacional:
    - o disco e um excelente smoke/stress repro para VDP + disco + audio
    - ele e util para localizar travas macroscopicas e regressao ampla de pipeline
    - ele nao substitui sozinho os repros dirigidos da matriz, porque a atribuicao causal por linha fica mais fraca
  - uso recomendado:
    - tratar `UNKNOWN1.DSK` como repro complementar de campo
    - se a demo travar sempre no mesmo bloco/cena, usar o overlay para identificar primeiro o subsistema dominante antes de promover qualquer ajuste no core

- Atualização incremental ainda em 31/03/2026, primeiro freeze em `UNKNOWN1.DSK`:
  - o vídeo `22.27.31` já pegou a demo travada
  - sequência útil observada:
    - fase anterior ainda saudável com `SM:06`, `R2:1F`, `R25/R26/R27=00`, `CE:0`, `TR:0`, e `TM6D 9B:2B>2B>2C`
    - transição para o bloco problemático em `SM:05`, primeiro com `R2:1F` e depois `R2:5F`
    - estado congelado repetido por vários segundos:
      - `SM:05`
      - `R2:5F`
      - `R25/R26/R27=00`
      - `TM3: CE:1 TR:1 CS:001 CP:000`
      - `TM6B` com último chamador relevante de `0x99` em `P9:2C02`
      - `TM6D: R17:AC 9B:AC>2C>AC V:05`
  - leitura operacional:
    - o freeze não parece ser de renderer puro nem de carga de disco
    - o quadro congelado aponta para command engine preso em `SCREEN 5`, com `CE/TR` ativos de forma persistente
    - o último write indireto via `0x9B` caiu em `R#44` (`0x2C`) com valor `05`, isto é, o software estava tocando `CLR/argumento de transferência` imediatamente antes do congelamento
    - como `R25=00`, este repro não ajuda a fechar `CMD-004`; ele aponta mais para um caso de comando com handshake `TR`/CPU-transfer em `SCREEN 5`
  - consequência prática:
    - `UNKNOWN1.DSK` passa a ser excelente repro complementar de travamento do command engine
    - mas ele sai do alvo principal da `#235` e passa a sugerir backlog técnico próprio para investigar command transfer em `SCREEN 5`
    - o resíduo atual mora no caminho de status da `0x99`, não no command engine
  - o ganho marginal de continuar trocando cores caiu demais
  - consequência prática:
    - a trilha passou a depender de telemetria direta do core sobre o último micro-op da `0x99`
    - `TM6B` agora exibe `99:o/k/r/a/v` = operação, `VKey`, `R#15`, `ALatch` e byte associado
  - build local validada para esse corte:
    - `BUILD_BID=202603311955-issue82-port99-microop`
    - `BUILD_ID=B6CB`
    - `BUILD_HASH=98891cf-2e6fdccb7cdbd1682e1fe031365f23616ee02734`
  - próximo passo útil:
    - subir a build `B6CB`
    - rodar o `STS006` atual
    - capturar um único quadro com `TM6B 99:` no freeze
- Ajuste incremental ainda em 31/03/2026, guiado por `blueMSX`:
  - a comparação direta entre o `readStatus()/writeLatch()` do `blueMSX` e o `case 0x99` local confirmou que:
    - o reset do latch já estava semanticamente alinhado
    - a diferença estrutural remanescente era a ausência de um equivalente local ao `sync(vdp, now)` do read-path de `blueMSX`
  - como não existe um `sync()` global equivalente na arquitetura line-based local, foi aplicado o análogo seguro mais próximo:
    - `fmsx_vdp_sync_before_status_read()` em `src/fmsx_local/V9938.c`
    - chamada desse helper no `case 0x99` de `src/fmsx_local/MSX.c` para perfis `V9938/V9958`
  - build local validada para esse corte:
    - `BUILD_BID=202603312030-issue82-port99-readstatus-sync`
    - `BUILD_ID=4A34`
    - `BUILD_HASH=98891cf-b06a5dd80e0ee69695cd3b5b978948791d7052b7`
  - próximo passo útil:
    - subir a build `4A34`
    - repetir o `STS006`
    - capturar `TM6B 99:` no freeze para ver se o resíduo mudou de micro-op
- Ajuste incremental ainda em 31/03/2026, após o frame da `4A34`:
  - o print útil mostrou `TM6B SR:2/1C 99:R/1/2/02/1C` com `CE=0`
  - isso fecha que:
    - a mudança alinhada ao `blueMSX` afetou o valor efetivamente retornado por `S#2`
    - o travamento remanescente continua depois de um `read S2` já concluído
  - a ambiguidade residual deixou de ser o micro-op e passou a ser o chamador desse micro-op (`helper USR` vs `BIOS/runtime`)
  - consequência prática:
    - `TM6B` agora expõe `P9:%04X`, o `PC` do chamador no último micro-passo concluído da porta `0x99`
  - build local validada para esse corte:
    - `BUILD_BID=202603312145-issue82-port99-caller-pc`
    - `BUILD_ID=3360`
    - `BUILD_HASH=98891cf-7a6da3c038b872fe3143f50c434fec73ebbe958c`
  - próximo passo útil:
    - subir a build `3360`
    - repetir o `STS006`
    - capturar um único frame com `TM6B P9:` e `99:` juntos
- Ajuste incremental ainda em 31/03/2026, após o frame da `3360`:
  - o print útil mostrou `TM6B P9:148E SR:2/1C 99:R/1/2/02/1C`
  - isso fecha que o último `read S2` observado naquele disco ainda vinha de ROM/BASIC, não do helper temporário em `D000h`
  - consequência prática:
    - o narrowing anterior por `USR` deixa de ser confiável como repro do caminho crítico da `0x99`
    - o `STS006` foi trocado para um runner binário único (`STS006.BIN`) acionado por `BLOAD ...,R`
    - o runner escreve `R46=&H60`, faz o polling de `S2` até `CE=0`, lê `S8/S9` sem voltar ao interpretador e grava o resumo em `D100..D10B`
  - próximo passo útil:
    - manter a build `3360`
    - copiar só o `.DSK` novo
    - rodar `RUN "STS006.BAS"` e me devolver os valores impressos ao final
- Ajuste incremental ainda em 31/03/2026, após a primeira execução do runner binário:
  - o resumo em tela voltou com `CE LOOPS=0`, `FLAGS=0`, `FINAL S2=60`, `FINAL S8=0`, `FINAL S9=254`, `FINAL X=0`
  - a comparação direta contra o `blueMSX` e o core local fechou a causa:
    - em `SRCH`, `ARG bit1` (`R45 & 0x02`) seleciona a busca por `!=`
    - então o `R45=2` antigo encerrava imediatamente no primeiro pixel de fundo em `X=0`
  - consequência prática:
    - o repro do `STS006` foi ajustado de novo, sem tocar no runner `STS006.BIN`
    - `STS006.BAS` agora prepara `SCREEN 7`, fixa o alvo em `X=511` e usa `R45=0` para forçar um `SRCH ==` longo
    - isso preserva a remoção do interpretador da trilha crítica da `0x99`, mas volta a dar chance real de observar `CE=1` e mudanças em `S8/S9`
  - próximo passo útil:
    - manter a build `3360`
    - copiar só o `.DSK` regenerado
    - rodar `RUN "STS006.BAS"` e devolver o novo resumo final impresso
- Ajuste incremental ainda em 31/03/2026, após o primeiro run da variante `SCREEN 7 + X=511 + ARG=0`:
  - o resumo ainda voltou com `CE LOOPS=0`, `FLAGS=0` e `FINAL X=0`
  - isso revelou um segundo defeito do próprio repro:
    - os marcadores visuais em BASIC continuavam usando fills de tela inteira depois do `PSET`
    - o padrão de teste era destruído antes do `SRCH`
  - consequência prática:
    - o BASIC deixou de usar fills destrutivos depois de pintar o padrão
    - o BASIC deixou de escrever `R32..R45`
    - o `STS006.BIN` agora espera `CE=0`, reprograma `R32..R45` e só então dispara `R46=&H60`
  - próximo passo útil:
    - manter a build `3360`
    - copiar só o `.DSK` regenerado
    - rodar `RUN "STS006.BAS"` e devolver o novo resumo final impresso
- Ajuste incremental ainda em 31/03/2026, após o runner binário sem ruído de setup:
  - o resumo finalmente voltou com um `SRCH` válido:
    - `CE LOOPS=1`
    - `FIRST CE S2/S8/S9 = FF/FF/FF`
    - `LAST CE S8/S9 = FF/FF`
    - `FINAL S2/S8/S9 = 14/FF/FF`
    - `FINAL X = 511`
  - o mesmo quadro de hardware ainda mostrava `TM6D S:FF/FF`
  - leitura prática:
    - o repro em disco está corrigido
    - o alvo em `X=511` foi realmente encontrado
    - durante a janela observada com `CE=1`, `S8/S9` não mostraram caminhada intermediária visível
    - como a janela útil ainda foi de apenas um loop, a linha segue `disputed` e não fecha sozinha `live vs latched`
    - o `FLAGS=129` bruto deve ser lido como `F0=1` e `F1/F2=0`; o bit `0x80` ainda é só marcador interno do primeiro sample
  - consequência prática:
    - o próximo passo útil saiu do disco e voltou ao core
    - `src/fmsx_local/V9938.c` foi alinhado ao modelo do `blueMSX` para o start do command engine: o write de `R46` agora só arma `CE/state` e não consome mais um slice imediatamente
  - build local validada para esse corte:
    - `BUILD_BID=202603312330-issue82-vdpdraw-deferred-start`
    - `BUILD_ID=FFC6`
    - `BUILD_HASH=98891cf-98891cfce0e7f23f86a7269f492eff639b106655`
  - próximo passo útil:
    - subir a build `FFC6`
    - manter o mesmo `.DSK` atual do `STS006`
    - repetir `RUN "STS006.BAS"` e observar se `CE LOOPS` aumenta ou se `S8/S9` passam a mostrar diferença entre `first-CE`, `last-CE` e `final`
- Ajuste incremental ainda em 31/03/2026, após o teste em hardware da build `FFC6`:
  - o `STS006` voltou com:
    - `CE LOOPS=1`
    - `FIRST CE S2/S8/S9 = 00/00/00`
    - `LAST CE S8/S9 = 00/00`
    - `FINAL S2/S8/S9 = 14/FF/FF`
    - `FINAL X = 511`
  - o mesmo quadro ainda mostrava `TM6D S:FF/FF`
  - leitura prática:
    - a mudança em `VDPDraw()` não abriu uma janela maior de `CE=1`
    - mas ela removeu a ambiguidade residual do experimento: durante `CE=1`, `S8/S9` ficaram em `00/00` e só saltaram para `FF/FF` no final
    - para o alvo de convergência desta branch, isso fecha operacionalmente o comportamento do lado `blueMSX`/`latched-on-complete`
    - a linha global da matriz continua `disputed` apenas porque o `V9958-Super` segue divergindo com `SXTMP` live
  - consequência prática:
    - `STS-006` deixa de ser o gargalo imediato da issue
    - o próximo teste útil volta a ser o residual de `REG-004` com `V9958_REG004_R17.DSK`
- Ajuste incremental ainda em 31/03/2026, após o teste em hardware de `REG004` na build `FFC6`:
  - o quadro final mostrou em `TM6D`:
    - `R17:34`
    - `9B:33>33>34`
    - `V:A5`
  - leitura prática:
    - o write indireto via `0x9B` não travou em `2Fh`
    - o core local continuou incrementando `R#17` acima de `R#47`
    - isso converge com o `blueMSX`, cujo `writeRegister()` também faz `vdpRegs[17] = (reg + 1) & 0x3f`
  - consequência prática:
    - o residual local de `REG-004` deixa de ser gargalo imediato da issue
    - a linha global da matriz continua `partial` apenas porque o snapshot/lineage HDL ainda não fecha esse detalhe com a mesma nitidez
- O residual de `REG-004` (auto-incremento indireto acima de `R#47`) também continua dependente de captura orientada:
  - `TM6D` agora expõe `R#17` e o último caminho do `0x9B`
  - o boot logo `MSX2+` continua sendo um bom repro natural porque usa `OTIR` para `0x9B`, mas o veredito fino ainda depende de captura em hardware
- `REN-008` pode continuar parcialmente bloqueada sem captura visual:
  - a telemetria atual observa bem `R27`, page source e writes do pipeline
  - ela nao expõe diretamente um contador dedicado do deslocamento final de sprite na saida HDMI
- `REN-002` pode exigir leitura cuidadosa de `Knightmare Gold`:
  - o core local tem path plain proposital em `SCREEN 4` quando o scroll está inativo
  - a evidência dinâmica precisa distinguir “scroll realmente inativo” de “raster hack esperando o compositor estendido”

## Testes e cenários
- Boot logo `MSX2+`: `S#2`, multipage, odd/even, command engine
- `MSXDIAG`: identificação do VDP e polling/status básicos
- `Gradius2E/Nemesis2E`: `R25/R26/R27` e scroll
- `Knightmare Gold`: `IE1`, `S#2 bit5`, raster e renderer

## Decisão operacional desta rodada
- Próxima coleta dinâmica com telemetria já existente:
  - `CMD-004`
  - `REN-002..REN-008`
- Próxima coleta dinâmica agora também pode incluir:
  - `STS-006`
  - residual de `REG-004` acima de `R#47`
- O bloqueio remanescente deixou de ser invisibilidade do runtime e passou a ser disponibilidade de repro/captura orientada

## Atualização 30/03/2026 - Roteiros dirigidos
- A trilha ganhou um pacote executável de captura em:
  - `docs/reverse-engineering/issues/issue-82/dynamic-capture-recipes.md`
- O material novo fecha duas lacunas práticas da `#235`:
  - `STS-006` deixou de depender de “algum `SRCH` futuro” e passou a ter um repro sintético concreto em BASIC com `TM3 + TM6D`
  - o residual de `REG-004` deixou de depender só do boot logo e passou a ter um repro direto de `R17/0x9B` em BASIC
- A mesma peça também fixa a ordem de captura do corpus já aceito:
  - `Knightmare Gold` para `IRQ-001`, `IRQ-003` e `REN-002`
  - boot logo `MSX2+` para `CMD-004`, `REN-003`, `REN-005`, `REN-006`, `REN-007` e o residual de `REG-004`
  - `Gradius2E/Nemesis2E` para `REN-004` e `REN-008`
- Consequência operacional:
  - o próximo avanço útil desta issue já não é escrever mais telemetria
  - é executar os roteiros em hardware e anexar a evidência bruta correspondente

## Atualização 30/03/2026 - Discos de repro
- Os dois repros sintéticos em BASIC agora também existem como discos MSX FAT12 720KB em:
  - `sdcard/disks/DEBUG/V9958_STS006_SRCH.DSK`
  - `sdcard/disks/DEBUG/V9958_REG004_R17.DSK`
- Cada imagem tem `AUTOEXEC.BAS` no root e chama automaticamente:
  - `STS006.BAS`
  - `REG004.BAS`
- Os fontes host ficaram em:
  - `sdcard/disks/DEBUG/src/STS006.BAS`
  - `sdcard/disks/DEBUG/src/REG004.BAS`
- O gerador reprodutível ficou em:
  - `scripts/build-v9958-debug-disks.py`
- Validação local desta rodada:
  - os dois `.DSK` foram gerados com tamanho padrão de `720KB`
  - o root de cada imagem foi verificado localmente com:
    - `AUTOEXEC.BAS`
    - programa alvo (`STS006.BAS` ou `REG004.BAS`)
    - `README.TXT`
- Observação operacional:
  - `make sdcard` / `scripts/prepare-sd.sh` ignoram `sdcard/disks/` por design
  - esses discos são artefatos dirigidos de debug/hardware e precisam ser copiados para a mídia de forma consciente, fora do payload automático do boot

## Atualização 30/03/2026 - TM6D
- A instrumentação mínima necessária para destravar observabilidade foi implementada no core local:
  - `src/fmsx_local/MSX.c`: snapshot do último write indireto em `0x9B` (`R17 before`, alvo efetivo, `R17 after`, valor)
  - `src/fmsx_runtime.c` / `src/fmsx_runtime.h`: exposição de `R17`, `S#8`, `S#9` e snapshot de `0x9B` no `TFmsxTimingDebug`
  - `src/kernel.cpp`: nova linha `TM6D`
  - `docs/debug-layer.md`: documentação da nova telemetria
- Validação local desta rodada:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1 BUILD_BID=202603301455-issue82-vdp-observability`: OK
- Build desta rodada:
  - `BUILD_BID=202603301455-issue82-vdp-observability`
  - `BUILD_ID=16D6`
  - `BUILD_HASH=98891cfc-9e23387dc2ea0bf0542319be174b90aa3febb6af`
- Teste em hardware: pendente

## Atualizacao incremental de 31/03/2026 - `UNKNOWN1.DSK` reclassificado para `S#1`

- O round com a build `DD8E` confirmou que o demo continuou parando no mesmo bloco visual, mas nao no mesmo estado interno:
  - o hang anterior de `CE/TR` em `SCREEN 5` desapareceu;
  - o quadro nitido passou a mostrar:
    - `SM:07`
    - `R2:3F`
    - `R25/R26/R27=00`
    - `DP:1`, `EP:0`
    - `CE:0`, `TR:0`
    - `TM6B P9:C516 ... SR:1/04 99:R/1/1/01/04`
- Leitura da evidencia:
  - o `UNKNOWN1.DSK` deixou de ser repro de hang do command engine e virou repro de polling em `S#1`;
  - o chamador em `C516h` ficou repetindo leitura de `S#1` com `R#15=1`, recebendo `0x04` e esperando `bit0=1`.
- Convergencia aplicada com a referencia primaria:
  - o `blueMSX` expoe `S#1 bit0` como:
    - latch/IRQ quando `IE1` esta ligado;
    - janela live de `HBlank/timeHint` quando `IE1` esta desligado;
  - o core local foi ajustado em `src/fmsx_local/MSX.c:fmsx_vdp_status1_live()` para seguir essa divisao:
    - `IE1=1`: caminho sticky/IRQ-backed preservado;
    - `IE1=0`: bit0 live por linha/fase apos o fim da area visivel da linha-alvo.
- Validacao local do corte:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make BUILD_BID=202603312355-issue235-status1-live-window`: OK
- Build desta rodada:
  - `BUILD_BID=202603312355-issue235-status1-live-window`
  - `BUILD_ID=1052`
  - `BUILD_HASH=287fe40e915f15a16dd10ddf7f34d258735b38af`
- Proximo passo:
  - repetir `UNKNOWN1.DSK` na build `1052`;
  - confirmar se o demo sai do loop atual de `S#1`;
  - se ainda parar, anexar um unico frame nitido com `TM2`, `TM3`, `TM6B` e `TM6D`.

## Atualizacao incremental de 01/04/2026 - `UNKNOWN1.DSK` passou na build `1052`

- O teste em hardware da build `1052` confirmou o ganho completo:
  - o `UNKNOWN1.DSK` passou do ponto antigo de freeze;
  - a demo seguiu rodando normalmente, sem regressar nem ao hang de `CE/TR` nem ao loop de `S#1`.
- Leitura da evidencia:
  - o repro complementar de campo agora funciona como smoke/stress pass da stack `VDP + disk + audio`;
  - a semantica `blueMSX` para `S#1 bit0` com `IE1=0` deixou de ser apenas hipotese estatica e ganhou sustentacao pratica nesta branch.
- Consequencia operacional:
  - `UNKNOWN1.DSK` deixa de ser um bug aberto dentro da `#235`;
  - o demo passa a ser um gate util de regressao para os proximos ajustes do `V9958`;
  - o foco principal da issue volta para os itens remanescentes do corpus dirigido (`CMD-004` e `REN-003..REN-008`).

## Atualizacao incremental de 01/04/2026 - disco novo para `CMD-004`

- O estado da branch mostrou que:
  - boot logo `MSX2+` nao fechou `CMD-004`;
  - `MSXDIAG` tambem nao exerceu `R25 bit6`;
  - `UNKNOWN1.DSK` e um bom smoke/stress pass, mas os frames uteis ficaram com `R25/R26/R27=00`.
- Para remover essa dependencia de repro oportunista, a trilha ganhou um disco sintético novo:
  - `sdcard/disks/DEBUG/V9958_CMD004_R25.DSK`
  - fontes host:
    - `sdcard/disks/DEBUG/src/CMD004.BAS`
    - `sdcard/disks/DEBUG/src/CMD004_RUNNER.asm`
- O runner compara o mesmo `HMMV` em `SCREEN 4` com `R25 bit6`:
  - desligado
  - ligado
- O veredito esperado do core alinhado ao `blueMSX` e:
  - `OFF LOOPS=0`
  - `ON LOOPS>0`
- Consequencia operacional:
  - o proximo teste da `#235` deve abrir esse disco e validar `CMD-004` de forma dirigida;
  - so depois faz sentido voltar aos `REN-003..REN-008`.

## Atualizacao incremental de 01/04/2026 - hotfix do `CMD004`

- O primeiro uso do `V9958_CMD004_R25.DSK` retornou `Syntax error 120`.
- A causa estava no proprio repro:
  - o runner em `D200h` gravava o buffer de resultado em `D120h`;
  - esse endereco fica abaixo da area protegida pelo `CLEAR`, e o runner podia corromper o workspace do BASIC ao voltar.
- Ajuste aplicado:
  - `RESULTS` foi movido para `D500h`;
  - `CMD004.BAS` foi sincronizado para ler `D500..D509`;
  - o `.DSK` foi regenerado, sem build nova do kernel.

## Atualizacao incremental de 01/04/2026 - segundo hotfix do `CMD004`

- O round imediatamente seguinte ainda voltou com `Syntax error`, agora na linha `180`.
- Causa provavel do proprio repro:
  - o `CMD004.BAS` ainda usava nomes como `OFFL` e `ONL`;
  - no fluxo `RUN "CMD004.BAS"` isso deixa margem para tokenizacao ambigua do parser do MSX BASIC.
- Ajuste aplicado:
  - o BASIC foi reescrito com variaveis curtas e neutras (`L0`, `L1`, `S0`, `S1`, `FG`);
  - o `.DSK` foi regenerado novamente, sem build nova do kernel.

## Atualizacao incremental de 01/04/2026 - `CMD004` deixa de medir só `CE`

- O primeiro round funcional do `CMD004` devolveu `OFF LOOPS=0`, `ON LOOPS=0`, `FLAGS=0`.
- Interpretação:
  - o repro finalmente executou;
  - mas a métrica ainda era fraca demais, porque dependia de ver `CE` em polling de `S#2`, e o `HMMV` pode concluir antes do primeiro probe do runner.
- Ajuste aplicado:
  - o `CMD004_RUNNER.asm` agora mede side effect em `VRAM[0]`, não apenas `CE`;
  - o teste limpa `VRAM[0]`, executa `HMMV` com `R25 bit6` desligado e depois ligado, e devolve os bytes finais observados em `VRAM[0]`.
- Novo critério esperado:
  - `OFF BYTE=0`
  - `ON BYTE=165`
  - flags `bit0/bit1` marcam mudança real de VRAM, e `bit2/bit3` ficam só como telemetria auxiliar de `CE`.

## Atualizacao incremental de 01/04/2026 - helper asm do `CMD004` descartado

- O round seguinte do `CMD004` ainda voltou inconclusivo:
  - `OFF CLR=64 BYTE=64`
  - `ON CLR=64 BYTE=64`
  - isso mostrou que o helper asm ainda contaminava a propria leitura base de VRAM.
- Ajuste aplicado:
  - o `CMD004.BAS` deixou de depender do helper asm para a leitura/escrita de VRAM;
  - a variante atual usa `VPOKE 0,0` / `VPEEK(0)` diretamente no BASIC para medir o byte-base e o byte final;
  - o armamento do `HMMV` continua via `OUT &H99`, com polling de `S#2`.
- Novo critério esperado:
  - `OFF CLR=0`
  - `OFF BYTE=0`
  - `ON CLR=0`
  - `ON BYTE=165`

## Atualizacao incremental de 01/04/2026 - `CMD004` bloqueado como repro dinâmico

- O round seguinte da variante pura em BASIC também travou antes do resumo final.
- O quadro congelado mostrou:
  - `SM:04`
  - `R25:00`
  - `CE=0`, `TR=0`
  - último status lido em `TM6B`: `SR:2/0C 99:R/1/2/02/0C`
- Interpretação:
  - o `HMMV` do caso `OFF` já tinha terminado;
  - o congelamento não ficou no command engine nem chegou ao caso `R25 bit6 = 1`;
  - o repro passou a esbarrar em um caminho pós-comando de VRAM/BASIC em `SCREEN 4`.
- Decisão operacional:
  - `CMD004` deixa de ser repro dinâmico útil desta issue;
  - `CMD-004` volta a ficar sustentada apenas pela base estática e deixa de bloquear a `#235`;
  - o freeze pós-comando em `SCREEN 4` pode virar uma trilha separada se continuar relevante depois do fechamento desta issue.

## Atualizacao incremental de 01/04/2026 - round `Gradius2E/Nemesis2E` ficou em `SCREEN 4`

- O vídeo de `01/04/2026 15:57:10` trouxe gameplay estável e overlay legível, mas não entrou no path high-res que esta issue ainda precisa.
- Nos frames úteis observados:
  - `SM:04` permaneceu estável;
  - `R25:00`, `R26:00`, `R27:00`, `EP:0` ficaram estáveis;
  - `CE:0` e `TR:0` permaneceram zerados;
  - `TM6B` mostrou só reads ordinários de status (`SR:0/9F` e `SR:1/04`);
  - não houve corrupção visual óbvia no trecho de gameplay e scroll observado.
- Leitura operacional:
  - o round reforça estabilidade prática de `SCREEN 4`, não `REN-004`/`REN-008`;
  - ele não fecha `REN-004`, porque o repro não entrou em `SM:06/07`;
  - ele não fecha `REN-008`, porque `R27` ficou zerado e o path de mask/alinhamento de sprite em high-res não foi exercitado.
- Consequencia operacional:
  - este vídeo não avança os itens remanescentes da issue;
  - o próximo round da `#235` precisa de um repro do corpus que realmente entre no modo alvo, ou de bloqueio explícito dessas linhas por falta de evidência dinâmica dentro do corpus atual.

## Decisao operacional de 01/04/2026 - `REN-004` e `REN-008` bloqueadas

- Por decisão da trilha, `REN-004` e `REN-008` passam a ficar explicitamente bloqueadas nesta issue por falta de evidência dinâmica útil dentro do corpus atual.
- Justificativa:
  - o vídeo mais recente de `Gradius2E/Nemesis2E` permaneceu em `SM:04`, com `R25/R26/R27=00`, `EP:0`, `CE/TR=0` e sem evento útil em `TM6B`;
  - os outros repros do corpus (`boot logo`, `MSXDIAG`, `UNKNOWN1.DSK`) também não forneceram uma janela high-res confiável com `SM:06/07` e `R27` relevante;
  - insistir em rounds adicionais sem mudar de corpus deixou de produzir evidência nova.
- Consequencia operacional:
  - essas duas linhas deixam de bloquear o fechamento prático da `#235`;
  - a matriz canônica preserva o estado técnico de implementação, mas a issue local passa a tratá-las como `blocked by missing dynamic evidence`;
  - qualquer fechamento futuro por captura deve partir de repro melhor ou de trilha específica.

## Referências iniciais
- `docs/debug-layer.md`
- `docs/reverse-engineering/msxdiag/`
- `src/fmsx_local/MSX.c`
- `src/fmsx_runtime.c`
- `src/kernel.cpp`
