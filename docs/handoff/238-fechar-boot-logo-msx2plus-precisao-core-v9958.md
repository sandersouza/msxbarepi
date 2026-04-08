# Handoff Persistente da Branch 238-fechar-boot-logo-msx2plus-precisao-core-v9958

Ultima atualizacao: 06/04/2026 (01:19 -03)

## Objetivo da branch

Fechar a issue `#238` implementando a precisao minima de core do `V9958 stock` necessaria para fazer o boot logo do `MSX2+` rodar com cadencia, paginacao e composicao coerentes com a referencia principal `blueMSX`.

## Vinculo de gestao

- Issue remota: [#238 - [P1] Fechar boot logo do MSX2+ com precisão de core no V9958](https://github.com/sandersouza/msxbarepi/issues/238)
- Branch vinculada via `gh issue develop`: `238-fechar-boot-logo-msx2plus-precisao-core-v9958`
- Branch base/umbrella: `82-auditar-registradores-v9958`
- Target de PR desta branch: `82-auditar-registradores-v9958`
- PR remoto desta branch: ainda nao aberto

## Guardrail operacional desta rodada

- Nem `git commit` local nem `git push` devem acontecer durante os cortes experimentais desta branch.
- Commit/push so voltam a ser permitidos quando o usuario declarar explicitamente que a `#238` ficou estavel.
- Prioridade operacional corrente:
  1. tempo total ate o BASIC via hot path `S#2/0x99` do `KANJIBASIC`
  2. cadencia residual do logo
  3. `odd/even` apenas se voltar a aparecer como gargalo real
  4. `MASK` fica explicitamente para depois

## Atualizacao incremental de 06/04/2026 - presenter reaproveita samples horizontais repetidos

- Depois do primeiro corte de FPS por reaproveitamento de linhas verticais repetidas, o presenter ainda tinha um custo redundante claro no eixo horizontal.
- O `xmap` do nearest-neighbor e monotono e, com viewport grande, repete a mesma `src_x` varias vezes na mesma scanline. O path antigo relia o mesmo pixel e reaplicava o mesmo dim/black-lift em toda repeticao.
- Corte local desta rodada:
  - `src/kernel.cpp`
    - `BlitMappedLineRgb565()` e `BlitMappedLineRgb565NoDim()` agora mantem `prev_src_x/prev_sample`
    - quando `xmap[x]` repete a mesma origem da iteracao anterior, o sample processado e reutilizado
    - isso preserva exatamente a mesma imagem e ataca custo puro de presenter
- Objetivo:
  - espremer mais performance no viewport automatico ja aprovado
  - com ganho especialmente esperado em `HIRES`, onde o custo horizontal por linha pesa mais
- Build local validada:
  - `BUILD_BID=202604062015-issue238-blit-xmap-sample-reuse`
  - `BUILD_ID=AFAF`
  - `BUILD_HASH=35411b2-d626e9ee1cfd42edaff198525136a4ea54a68c90`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 06/04/2026 - presenter reaproveita linhas escaladas repetidas

- A politica nova de viewport automatico/pixel-perfect ficou aprovada visualmente, mas introduziu uma regressao forte de performance: o emulador caiu para media de ~37 FPS.
- A causa mais provavel nao era mais geometria do viewport, e sim custo puro de presenter:
  - com a mailbox maior, varios `dst_y` repetem a mesma `src_y` 3-4 vezes no nearest-neighbor vertical
  - o path antigo em `src/kernel.cpp:BlitFmsxFrame()` recalculava a linha inteira em toda repeticao
- Corte local desta rodada:
  - `src/kernel.cpp`
    - o blit RGB565 com mapas (`m_BlitYMap`) e o fallback sem mapas agora detectam repeticao de `src_rel_y + dim_mode`
    - quando a linha de origem e o modo de escurecimento sao os mesmos da linha anterior, a scanline escalada e reaproveitada por `memcpy` a partir da linha ja pronta
    - isso preserva exatamente a mesma imagem e ataca so o custo redundante do presenter
- Objetivo:
  - manter a politica visual aprovada (`viewport automatico`, `DEBUG=1x`, `HIRES` sem widescreen)
  - recuperar framerate sem voltar a um viewport menor
- Build local validada:
  - `BUILD_BID=202604061930-issue238-blit-row-reuse`
  - `BUILD_ID=C35C`
  - `BUILD_HASH=35411b2-5da9183318418f7775668d582f6ea8b338909ab1`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 06/04/2026 - viewport automatico + save/load fechando o `F12`

- Antes de fechar a `#238`, a branch recebeu dois ajustes finais de UX/host:
  - `Save State` / `Load State` agora fecham o menu `F12` imediatamente e executam no tick seguinte
  - o item manual `Scale` deixou de ser usado; o kernel agora escolhe o viewport automaticamente
- Politica nova do viewport:
  - `DEBUG OFF`: mailbox no maior tamanho disponivel preservando a proporcao
  - `DEBUG ON`: mailbox reduzida automaticamente ao menor perfil util equivalente a `1x`
  - modos `HIRES` (`>=512` colunas) sempre usam largura logica de mailbox normal, mesmo com `Widescreen` ligado
  - `Widescreen [ON]` so expande modos nao-`HIRES`
- Glitch de apresentacao corrigido:
  - ao ativar ou desativar o debug, o kernel limpa completamente a tela antes da nova apresentacao
  - isso inclui framebuffer visivel e staging/present buffer
- Corte aplicado em:
  - `src/kernel.cpp`
  - `src/kernel.h`
  - `src/tools/menu/combo_menu_items.cpp`
  - `docs/debug-layer.md`
- Build local validada:
  - `BUILD_BID=202604061130-issue238-menu-state-pixelperfect`
  - `BUILD_ID=0969`
  - `BUILD_HASH=408c7e1-706a7f181059b14f0ea414d6f7b55bbaadac3a3a`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 06/04/2026 - presenter hi-res passa a tecer campos por padrao

- A regressao no demo `UNKNOWN REALITY` recolocou `interlace` no centro da trilha, mas com um sintoma diferente do boot logo:
  - no modo `512x512`, as linhas apareciam com espaco entre elas
  - isso indica problema no presenter hi-res do host, nao no mesmo bloco de `R26/R27` que guiou o boot logo
- A comparacao aprofundada mostrou o desvio estrutural:
  - `src/fmsx_host_stubs.c` ainda herdava de `third_party/fmsx/libretro.c` o default `HIRES_INTERLACED`
  - esse path do fMSX/libretro desenha um campo e deixa o outro preto
  - em HDMI progressivo, isso se manifesta exatamente como "linhas com espacamento"
- As referencias secundarias reforcaram o diagnostico:
  - o `blueMSX` apresenta o resultado interlaced como quadro hi-res composto
  - o `V9958-Super` usa `vdp_double_buffer` even/odd, lendo um campo enquanto escreve o outro, em vez de apagar o campo oposto
- Corte local desta rodada:
  - `src/fmsx_host_stubs.c`
    - `g_hires_mode` passa do default `HIRES_INTERLACED` para `HIRES_PROGRESSIVE`
    - comentario expandido registra explicitamente a diferenca entre o path herdado do fMSX/libretro e o alvo de apresentacao progressiva/tecida
- Objetivo:
  - corrigir o presenter para demos interlaced reais sem reabrir o boot logo
  - deslocar o foco da trilha de `SCREEN 6/7` para o contrato correto de apresentacao hi-res em HDMI
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 06/04/2026 - `#238` reapresenta a linha de sprites wide no right border

- A rodada com `7C38/ECD0/E2CF/984C/CC27/7AA1` reforcou uma leitura importante:
  - o tempo total do boot ja ficou correto
  - `R9=00` e `R25=03` continuam fechados na UART
  - o defeito visual residual continua reagindo ao turbo `7MHz`, o que aponta mais para **fase intra-frame** do que para modo de video
- O diff direto contra o `blueMSX` fechou um desvio estrutural no pipeline de `SCREEN 6/7`:
  - `RefreshLine6/7()` chama `colorSpritesLine(vdp,Y,...)` ao cruzar `BRK_6/BRK_7`
  - e chama **de novo** no `rightBorder`
  - isso faz a linha futura de sprites nascer cedo, mas tambem ser atualizada com quaisquer writes tardias de VRAM/registradores que ocorram no restante da scanline
- No core local, `fmsx_vdp_render_screen67_partial()` ainda preparava `FmsxVDPLineColorSpritesLatched` uma vez so, na primeira vez em que `end_offset` cruzava o breakpoint. Se a BIOS alterasse o estado da linha depois disso, a scanline seguinte consumia um snapshot atrasado.
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_render_screen67_partial()` continua preparando a linha futura ao cruzar `BRK_6/BRK_7`
    - mas agora tambem reapresenta `FmsxLatchColorSpritesLine(scanline,...)` no fechamento da linha (`end_offset >= 33`), espelhando o `rightBorder` do `blueMSX`
- Objetivo:
  - atacar diretamente o sintoma remanescente do logo (`faixa ja centrada + faixa ainda scrollando`) pela ordem temporal correta do buffer de sprites
  - sem reabrir `MASK`, `PAL/NTSC` ou `R#9 interlace`, que a UART ja descartou como gargalo dominante
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` unifica o fechamento de `SCREEN 6/7` no partial renderer de 32 celulas

- O teste em hardware da `7AA1` fechou que o ajuste de granularidade para `32` celulas, isoladamente, nao moveu o defeito visual residual do logo.
- A auditoria do codigo mostrou o desvio estrutural mais forte:
  - `fmsx_vdp_render_screen67_partial()` ja tinha sido alinhado para `0..32`
  - mas o fechamento da scanline em HBlank ainda podia cair em dois contratos diferentes:
    - `fmsx_vdp_render_screen67_partial(...,64u)` quando `FmsxVDPLineChunkEnd` era nao-zero
    - `fmsx_vdp_render_scanline()` full-line quando a linha nao tinha chunk parcial acumulado
- Consequencia pratica:
  - linhas de `SCREEN 6/7` podiam terminar ora pelo partial renderer ja alinhado ao `blueMSX`, ora pelo path full-line antigo
  - isso combina diretamente com o sintoma de campo da `#238`: o tempo total correto coexistindo com uma fase visual ainda quebrada, sensivel inclusive ao turbo de `7MHz`
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - o fechamento de scanline em HBlank passa a forcar `fmsx_vdp_render_screen67_partial((uint8_t)ScanLine,32u)` para `SCREEN 6/7`
    - o path deixa de depender de `FmsxVDPLineChunkEnd` para decidir entre partial e full-line nesses modos
    - com isso, toda linha de `SCREEN 6/7` passa a fechar pelo mesmo renderer parcial de `32` celulas, coerente com o corte anterior
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052300-issue238-screen67-force-partial-tail` (OK)
  - `BUILD_ID=7C38`
  - artefato `sha1 a6d5a57e9f7bbcca35afca84c23cb1dff320bba8`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` passa a capturar o estado wide no primeiro refresh da linha

- A varredura mais profunda da hipotese `32 vs 64` mostrou um desvio ainda mais forte que o tail de HBlank:
  - no `blueMSX`, `SCREEN 6/7` inicializam `scroll/chrTab/page` no **primeiro refresh da linha** (`X == -1`)
  - se o BIOS escreve `R#2/R#25/R#26/R#27` antes desse primeiro refresh, a linha corrente ja nasce com o estado novo
  - no core local, o partial wide ainda consumia o snapshot capturado no inicio bruto da scanline
- Consequencia pratica:
  - mesmo com o partial renderer ja em `32` celulas e o HBlank unificado, a linha podia continuar congelando um estado cedo demais
  - isso combina com o sintoma de campo em que o turbo de `7MHz` melhora apenas o comeco do logo: as writes de `R26/R27` chegam cedo o bastante para algumas linhas, mas o renderer ainda congela o frame-state antes da primeira composicao real
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - novo `FmsxVDPLineScreen67StateValid`
    - novo helper `fmsx_vdp_capture_screen67_render_state_now()`
    - `fmsx_vdp_render_screen67_partial()` passa a capturar `ChrTab`, `ChrTabM`, `R#2`, `R#18`, `R#25`, `R#26`, `R#27`, `odd page` e `VScroll` no **primeiro render da linha**
    - o flag eh resetado no inicio de cada scanline
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052315-issue238-screen67-lazy-line-snapshot` (OK)
  - `BUILD_ID=ECD0`
  - artefato `sha1 f04af999e87184c22ace3047a1580c03b4e7fde9`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` alinha o partial `SCREEN 6/7` ao `lineOffset -1..33` do `blueMSX`

- A rodada seguinte aprofundou a hipotese `32 vs 64` e fechou um desvio mais forte que a propria granularidade de `32` celulas:
  - no `blueMSX`, `SCREEN 6/7` nao avancam a linha por proporcao continua `0..32`
  - o refresh parcial usa um offset discreto `-1..33`, em passos de `32` clocks, com:
    - `-1 -> 0` para inicializar a linha (`X == -1`)
    - fechamento explicito em `33` depois da ultima celula ativa
  - o core local ainda fazia esse caminho por proporcao de tempo para `0..32`, sem o passo inicial e sem o sentinel final
- Consequencia pratica:
  - mesmo com `32` celulas, o partial podia continuar um step cedo em relacao ao `blueMSX`
  - isso bate bem com o sintoma de campo: tempo total ja correto, split horizontal preservado, mas efeito visual do logo ainda “fora de fase”
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - novo `FmsxVDPLineOffset67` em `-1..33`
    - novo helper `fmsx_vdp_screen67_line_offset_now()`
    - `fmsx_vdp_render_screen67_partial()` passa a consumir `end_offset` assinado
    - o primeiro passo `-1 -> 0` captura a linha sem desenhar pixels
    - o fechamento em HBlank passa a chamar `fmsx_vdp_render_screen67_partial(...,33)`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052345-issue238-screen67-lineoffset-33` (OK)
  - `BUILD_ID=E2CF`
  - artefato `sha1 5c3d21a70f0d79d4cf0d8b018f18de27e3667be6`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` corrige o decoder trocado entre `SCREEN 6` e `SCREEN 7` no path full-line

- A retomada da linha da `BE3E` encontrou um desvio estrutural mais forte do que os ultimos ajustes de timing:
  - em `src/fmsx_local/Wide.h`, os paths **full-line** de `SCREEN 6` e `SCREEN 7` estavam consumindo o buffer wide de sprites com os decoders invertidos
  - `RefreshLine6()` estava usando `V9958Screen7WideSpritePixel()`
  - `RefreshLine7()` estava usando `V9958Screen6WideSpritePixel()`
  - os paths parciais (`RefreshLine6WideRange()` / `RefreshLine7WideRange()`) ja estavam corretos
- Consequencia pratica:
  - parte da composicao podia seguir o path parcial correto enquanto outra parte da mesma cena caia no path full-line com o decoder errado
  - isso combina diretamente com o sintoma observado no boot logo: uma faixa visual composta de um jeito e outra de outro, sem afetar o split horizontal nem o tempo total de boot
- Corte local desta rodada:
  - `src/fmsx_local/Wide.h`
    - `RefreshLine6()` passa a usar `V9958Screen6WideSpritePixel()`
    - `RefreshLine7()` passa a usar `V9958Screen7WideSpritePixel()`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052130-issue238-screen67-fullpath-decoder-fix` (OK)
  - `BUILD_ID=984C`
  - artefato `sha1 290494cc6a826372f9032d4e5efe925f17e219cb`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` corrige o packing de cor do helper wide de sprites

- A rodada seguinte fechou um desvio ainda mais forte contra o `blueMSX/SpriteLine.h:colorSpritesLine()`:
  - o helper wide local ja usava tabela de cor por linha e `early clock`, mas ainda desenhava o buffer com o `color_attr` bruto
  - em `SCREEN 6`, o `blueMSX` nao usa esse nibble cru: ele empacota dois subpixels de 3 bits por byte
  - em `SCREEN 7`, ele usa `(color << 1) | solidColor0`, consumido depois como `palette[col>>1]`
- Consequencia pratica:
  - o consumo wide do buffer estava correto no decoder, mas a producao do proprio byte de sprite ainda estava em contrato errado
  - isso encaixa melhor com o defeito residual do logo do que os ultimos cortes especulativos
- Corte local desta rodada:
  - `src/fmsx_host_stubs.c`
    - `fmsx_latch_color_sprites_line_wide()` passa a empacotar `color` como no `blueMSX`
    - `SCREEN 6`: `((color & 0x0C) << 2) | ((color & 0x03) << 1) | solidColor0*9`
    - `SCREEN 7`: `((color & 0x0F) << 1) | solidColor0`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052205-issue238-wide-sprite-color-pack` (OK)
  - `BUILD_ID=CC27`
  - artefato `sha1 f63aeb58399c56fe15c206976038b3a574ec7991`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` alinha o partial de `SCREEN 6/7` a 32 celulas como no `blueMSX`

- A rodada seguinte encontrou um desvio estrutural no partial renderer wide:
  - o `blueMSX` faz `RefreshLine6/7()` parcial em `32` celulas ativas por linha (`X=-1..33`, com `BRK_6/7=24`)
  - o core local ainda projetava `SCREEN 6/7` parcial em `64` steps, como se a area ativa tivesse sido dobrada tambem na granularidade temporal
- Consequencia pratica:
  - mesmo com o split horizontal correto e o tempo total do boot ja no alvo, a fase visual ainda podia sair errada porque a captura parcial da linha entrava no dobro da resolucao temporal do `blueMSX`
  - isso combina diretamente com o sintoma residual do logo: uma metade visual correndo em fase errada em relacao a outra
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_render_screen67_partial()` volta para `sprite_break=24`
    - `end_column` de `SCREEN 6/7` passa de `0..64` para `0..32`
    - linha completa passa a fechar em `32`, nao `64`
  - `src/fmsx_local/Wide.h`
    - `RefreshLine6WideRange()` e `RefreshLine7WideRange()` passam a consumir `X0/X1` em `0..32`
    - cada step volta a equivaler a `16` pixels fisicos (`<<4`), como no `blueMSX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052245-issue238-screen67-partial-32cells` (OK)
  - `BUILD_ID=7AA1`
  - artefato `sha1 c3325891d72049092b100562e0522e161e0b9bbc`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` corrige o formato packed do buffer de sprites wide

- A rodada offline mais recente fechou uma divergencia objetiva entre o helper wide local e o `blueMSX`:
  - em `SCREEN 6`, o `blueMSX` codifica cada byte de sprite como dois subpixels de 3 bits (`spr>>3` e `spr&7`)
  - em `SCREEN 7`, cada byte vira `palette[col>>1]`
  - o helper wide local ainda tratava esse byte como um indice plano unico
- Corte local desta rodada:
  - `src/fmsx_host_stubs.c`
    - `fmsx_latch_color_sprites_line_wide()` passa a alinhar `horizontalPos` ao `blueMSX` (`+24 - EC`, com `+8` extra para `16x16`)
  - `src/fmsx_local/Wide.h`
    - novos decoders `V9958Screen6WideSpritePixel()` e `V9958Screen7WideSpritePixel()`
    - `RefreshLine6/7()` e `RefreshLine6/7WideRange()` passam a consumir o buffer wide no mesmo formato packed do `blueMSX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052115-issue238-wide-sprite-packed-decode` (OK)
  - `BUILD_ID=BE3E`
  - artefato `sha1 36f71b1f83a94c9d584081cd3287183a0bfcb1c7`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` corrige a unidade do `BRK_6/BRK_7` no `SCREEN 6/7` wide

- A comparacao offline entre o defeito visual remanescente do logo e o `blueMSX` fechou um candidato bem mais forte do que `R#9 interlace`:
  - no `blueMSX`, `BRK_6/BRK_7 = 24` e usa a mesma unidade de coluna `X/X2` da rotina de refresh
  - no core local, `fmsx_vdp_render_screen67_partial()` estava convertendo esse breakpoint para `48`, como se o range parcial estivesse em pixels fisicos dobrados
  - mas `RefreshLine6WideRange()/RefreshLine7WideRange()` tambem operam em colunas de `8` pixels, nao em pixels fisicos unitarios
- Consequencia pratica:
  - a captura da linha de sprites em `SCREEN 6/7` acontecia meia linha tarde demais
  - isso combina diretamente com o defeito observado em hardware: uma faixa do logo ja composta/parada e outra ainda scrollando para se unir a ela
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `sprite_break` em `fmsx_vdp_render_screen67_partial()` passa de `48` para `24`
    - comentario expandido explicando a equivalencia direta com `BRK_6/BRK_7` do `blueMSX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052245-issue238-screen67-brk24` (OK)
  - `BUILD_BID=202604052245-issue238-screen67-brk24`
  - `BUILD_ID=628F`
  - artefato `sha1 54540838842898b8ec1489601fdd8bb3f0e9152b`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` alinha `SCREEN 6/7` ao pipeline de linha de sprites do `blueMSX`

- A rodada seguinte fechou um erro na propria hipotese anterior:
  - em `SCREEN 6` wide do `blueMSX`, cada passo de `X` desenha `16` pixels fisicos
  - portanto `BRK_6 = 24` realmente equivale a `384 px`, isto e, `48` no nosso range parcial de colunas de `8 px`
  - o `48` original estava correto; o desvio mais forte ficou em outro lugar
- Leitura tecnica nova:
  - o `blueMSX` nao mistura "sprites da propria linha" com "captura no meio da linha"
  - ele prepara a linha de sprites no breakpoint e a scanline seguinte consome esse buffer via `getSpritesLine()/colorSpritesLine()`
  - o core local ainda misturava `ColorSprites(Y)` live com a captura mid-scanline, o que combina melhor com o defeito observado em hardware: uma faixa do logo ja composta/parada e outra ainda scrollando
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `sprite_break` volta para `48`
    - novos buffers:
      - `FmsxVDPLineColorSpritesRender[320]`
      - `FmsxVDPLineColorSpritesLatched[320]`
    - no inicio de cada scanline, o buffer preparado na linha anterior passa a ser o buffer consumido pela linha corrente
  - `src/fmsx_local/Wide.h`
    - `RefreshLine6/7()` e `RefreshLine6/7WideRange()` passam a consumir apenas `FmsxVDPLineColorSpritesRender`
    - a linha corrente prepara apenas o buffer da linha seguinte
    - quando o buffer da linha seguinte ainda nao foi preparado no full-line path, ele passa a ser montado sem contaminar a linha atual
- Alvo semantico:
  - alinhar o `SCREEN 6/7` wide ao pipeline de sprites do `blueMSX`
  - atacar o defeito visual remanescente sem voltar para `R#9 interlace`, que a UART ja descartou na janela visivel do logo
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052330-issue238-screen67-sprite-pipeline` (OK)
  - `BUILD_BID=202604052330-issue238-screen67-sprite-pipeline`
  - `BUILD_ID=AA66`
  - artefato `sha1 ee274513ccd500f7da5abd9945d610ed2665eadf`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` passa a gerar `status0 bit5` de sprites coloridos pelo caminho da tabela de cor

- A comparacao offline contra o `blueMSX` fechou um desvio objetivo no `status0 bit5` que ainda sobrava no `SCREEN 6` do logo:
  - o path live local de `status0` em modos coloridos ainda tratava os sprites como se viessem do formato antigo (`AT[3]`)
  - o `blueMSX` usa a tabela de cor por linha do sprite (`colorSpritesLine()`), e eh dali que saem:
    - `early clock`
    - transparencia de `color 0`
    - exclusao de sprites `CC/OR` do collision path
- Consequencia pratica:
  - o worker `7A66/7A68` podia continuar cego para colisao live mesmo depois do re-read fix, porque a colisao em `SCREEN 6` ainda nascia de um modelo de sprite errado
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - novo helper `fmsx_vdp_status0_color_line_state()`
    - `status0 bit5` em modos coloridos passa a usar a tabela de cor por linha (`SprTab[-0x0200 + sprite*16 + row]`)
    - `early clock` passa a sair do byte de cor por linha
    - `color 0` transparente deixa de colidir quando `SolidColor0 == 0`
    - sprites `CC/OR` deixam de participar do collision path de `status0 bit5`
    - o caminho antigo permanece so para sprites de `SCREEN 1..3`
- Alvo semantico:
  - aproximar o latch/live de `status0 bit5` ao `blueMSX/SpriteLine.h:colorSpritesLine()`
  - atacar o hot path real do logo (`7A66/7A68`) sem voltar para patch visual cego
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051835-issue238-color-status0-line` (OK)
  - `BUILD_BID=202604051835-issue238-color-status0-line`
  - `BUILD_ID=841A`
  - artefato `sha1 5e3752f02a0f5eafe2ad7dae5a46e0600b13ade5`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` reapresenta `status0 bit5` no segundo `IN (99h)` da mesma scanline

- A leitura offline consolidou um desvio forte do core local contra o `blueMSX` exatamente no worker quente do logo:
  - o `KANJIBASIC` em `7A48` testa o **segundo** `IN A,(99h)` (`7A68`) para decidir quando liberar cada par de writes indiretas em `R26/R27`
  - no core local, `status0 bit5` ainda nascia live so uma vez por linha e era limpo no primeiro read de `status0`
  - na pratica, isso deixava o segundo read da mesma scanline cego para a colisao live, alongando artificialmente o passo horizontal do logo
- Leitura tecnica consolidada:
  - o gargalo imediato continua em tempo total ate o BASIC
  - `R#9 interlace` e `MASK` seguem fora do foco desta rodada
  - o proximo corte do `blueMSX` relevante aqui nao e o renderer, mas a reapresentacao live de `status0 bit5` apos clear-on-read
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status0_live()` deixa de depender apenas do latch cru de `bit5`
    - o byte retornado por `status0` agora sintetiza `bit5` a partir de `VDPStatus[0].5` **ou** da colisao live da scanline corrente
    - `S#3..S#6` continuam sendo latched apenas uma vez por linha, mas o segundo `IN (99h)` pode voltar a ver `bit5` se a colisao live ainda estiver presente
    - o clear de `status0` em `readStatus` permanece alinhado ao `blueMSX` com `&= 0x1F`
  - Objetivo:
    - alinhar o worker `7A66/7A68` ao padrao observado no `blueMSX`
    - remover a cegueira do segundo read da mesma scanline antes de abrir mais qualquer corte em `S#2`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052145-issue238-status0-reread-live` (OK)
  - `BUILD_BID=202604052145-issue238-status0-reread-live`
  - `BUILD_ID=9805`
  - artefato `sha1 8c1440ceeddcd90345447bbdf120cba5d72de886`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` passa a medir separadamente `7A66` e `7A68`

- O corte funcional de `status0 bit5` abriu o proximo checkpoint real da issue:
  - nao vale mais seguir com patch cego sem saber se o worker `7A48` esta vendo `bit5` no **segundo** read (`7A68`)
  - a proxima validacao de hardware precisa responder isso de forma objetiva
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - novos contadores para leituras de `status0` em `7A66` e `7A68`
    - contadores separados para quantas dessas leituras viram `bit5=1`
  - `src/fmsx_host_stubs.c`
    - `BL238S/BL238P/BL238E` agora incluem:
      - `S66:<reads>/<bit5>`
      - `S68:<reads>/<bit5>`
- Objetivo:
  - validar se a correcao de `status0 bit5` realmente atingiu o ponto quente do worker do logo
  - evitar novo round de patch visual/temporal antes de medir esse contrato
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052220-issue238-status0-reread-trace` (OK)
  - `BUILD_BID=202604052220-issue238-status0-reread-trace`
  - `BUILD_ID=9227`
  - artefato `sha1 40c7ae78ac45a79b350c133f3b57d9731de5eb68`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` sobe o wait dos loops quentes do `KANJIBASIC` para escala de scanline

- A UART mais recente consolidou um padrao forte demais para ser tratado como ruido:
  - as writes visiveis de `R26/R27` continuam corretas, mas chegam em saltos de ~`85` frames
  - o hot path dominante segue em `S#2/0x99`, sobretudo nos sites `7A8B`, `7A91` e `7BC6`
- Leitura tecnica consolidada:
  - o ajuste anterior de `+64/+96` ciclos era pequeno demais para um logo que continua queimando dezenas de frames entre um passo horizontal e o seguinte
  - nesta rodada, a `#238` continua focada em tempo total e abandona qualquer tentativa de corrigir `MASK` ou `interlace` antes de fechar esse gargalo
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status_wait_cycles()` deixa de usar o nudge fixo anterior para os loops quentes do `KANJIBASIC`
    - `7A8B/7A91` passam a receber wait adicional de `4 * HPeriod`
    - `7BC6` passa a receber wait adicional de `8 * HPeriod`
  - Objetivo:
    - aproximar o custo temporal desses loops ao modelo time-driven do `blueMSX` sem reintroduzir penalidade global em `0x99`
    - atacar diretamente o sintoma mais impactante relatado pelo usuario: o tempo total ate o BASIC
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051640-issue238-kanjibasic-scanline-wait` (OK)
  - `BUILD_BID=202604051640-issue238-kanjibasic-scanline-wait`
  - `BUILD_ID=7258`
  - artefato `sha1 9af4622d4c5bdfe53bdbd059ef78ed6a45bc7963`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` remove a projecao precoce de `S#2 bit6` para o frame anterior

- A comparacao offline mais recente contra o `blueMSX` encontrou um desvio semantico mais forte que os nudges de custo:
  - no `blueMSX`, `S#2 bit6` permanece alto ate `onVStart()`
  - o core local ainda projetava um low sintetico para a cauda do frame anterior
- Consequencia pratica:
  - o helper quente do `KANJIBASIC` em `7A83/7A8B/7A91`, que espera `bit6 high -> low`, podia perder a transicao pretendida e cair num frame extra inteiro
  - isso e mais proximo do sintoma observado na UART do que qualquer tentativa nova em `R#9 interlace`
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_previsible_lines()` passa a `0`
    - `fmsx_vdp_previsible_window_active()` deixa de projetar `bit6 low` no fim do frame anterior
    - `fmsx_vdp_projected_next_frame_parity_active()` deixa de projetar a paridade nova no frame anterior junto com essa janela sintetica
  - Objetivo:
    - alinhar o contrato live de `S#2` ao `blueMSX` no ponto mais critico para o tempo total do logo
    - manter `MASK` e `odd/even` fora do foco desta rodada
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051720-issue238-status2-vstart-no-preproject` (OK)
  - `BUILD_BID=202604051720-issue238-status2-vstart-no-preproject`
  - `BUILD_ID=7EF7`
  - artefato `sha1 af413fbdae102a1c55d458548533dcbda710bd09`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` passa a cobrar tambem o corpo `OUT/IN/OUT` dos helpers quentes do `KANJIBASIC`

- A rodada offline seguinte abriu os helpers reais do logo no `KANJIBASIC`:
  - `7A83`: seleciona `S#2`, espera `bit6 high -> low`, depois restaura `R15`
  - `7BB4/7BBE`: seleciona `S#2`, le `CE`, restaura `R15` e repete
- Leitura tecnica:
  - o corte anterior pesava so o `IN (99)` quente
  - mas esses helpers fazem varias writes em `0x99` por iteracao, e o core local ainda cobrava `0` nelas
  - isso continua subpagando o custo total do polling, mesmo com o read mais caro
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - novo helper `fmsx_vdp_port99_hotloop_write_extra_cycles()`
    - aplica wait adicional focal apenas nas writes `0x99` dos loops do logo:
      - `7A85/7A89/7A98/7A9C`: `1 * HPeriod`
      - `7BBE/7BC2/7BCA/7BCE`: `2 * HPeriod`
    - o case `0x99` agora soma esse custo focal ao wait base de write
  - Objetivo:
    - aproximar o custo do corpo completo `OUT/IN/OUT` desses helpers ao modelo time-driven do `blueMSX`
    - continuar atacando o sintoma mais impactante da issue: o tempo total ate o BASIC
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051755-issue238-kanjibasic-port99-body-wait` (OK)
  - `BUILD_BID=202604051755-issue238-kanjibasic-port99-body-wait`
  - `BUILD_ID=F8B6`
  - artefato `sha1 b16cb51f58ae36cd078423ddc67f903309fd7ad7`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - normalizacao do bloco relocado `7Axx -> 2Axx`

- A UART recente fechou um bug da propria telemetria do logo:
  - os hot PCs de `S#2` e das writes de `R26/R27` aparecem como `7A8B/7A91/7BB0/7BC6`
  - mas o `MSX2PEXT` reloca o worker do logo de `0x2A00` para `0x7A00`
  - portanto, tratar `7Axx/7Bxx` como banco generico `-0x4000` contamina `HOTH/C0..C2` e mascara os callers reais em `2Axx/2Bxx`
- Correcao local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_normalize_s2_caller_pc()` agora trata `0x7A00..0x83FF` como alias `+0x5000` do bloco relocado do logo
  - `src/fmsx_host_stubs.c`
    - `BL238I/BL238R/BL238S/BL238E` passam a imprimir esses PCs ja normalizados em `2Axx/2Bxx`
- Objetivo:
  - limpar a telemetria antes do proximo corte funcional de cadencia
  - deixar o histograma de `S#2` apontar para os callers reais do prelude do logo
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051845-issue238-logo-pc-alias` (OK)
  - `BUILD_BID=202604051845-issue238-logo-pc-alias`
  - `BUILD_ID=F38C`
  - artefato `sha1 f6717168a12bc80da17b3f11601087f97774bf6c`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - telemetria do logo passa a separar helpers BIOS de `S#2`

- A UART da build `6BDA` fechou um corte objetivo da `#238`:
  - `R9=00` do comeco ao fim da janela observada
  - `R25=03` fixo
  - `R26/R27` entram primeiro por `0x99 @ PC 7BB2` e depois seguem no loop `0x9B @ 7A71/7A73`
  - `S7/TR` permanecem irrelevantes no logo (`S7:0`, `TR:0`)
- Leitura tecnica consolidada:
  - o gargalo dominante desta trilha nao esta mais em `R#9 interlace`
  - o hot path do boot logo ficou reduzido a `S#2` + leituras da `0x99`, cercando o prelude e os waits BIOS do logo
- Correcao local desta rodada:
  - `src/fmsx_local/MSX.c`
    - passou a contar leituras de `S#2` por helper BIOS:
      - `10D6/10D8`
      - `10DF/10E1`
      - `363B/363D`
      - `3644/3646`
      - `2BE4/2BE6`
      - `other`
  - `src/fmsx_host_stubs.c`
    - `BL238S` e `BL238E` agora incluem os deltas:
      - `H10L`
      - `H10H`
      - `H36H`
      - `H36L`
      - `H2BE`
      - `HOTH`
- Objetivo do corte:
  - fechar qual helper BIOS de `S#2` realmente domina o tempo do logo antes de abrir outro patch em `status2` ou no command engine
  - manter `MASK` explicitamente fora do foco desta rodada
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051148-cc918b4`
  - `BUILD_ID=D41F`
  - artefato `sha1 3b2cd3a4002f9a1e0e5da572db409954df7794a3`
- Estado operacional:
  - sem `git commit`
- sem `git push`
- sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - boost do logo passa a usar as tabelas exatas do `blueMSX`

- A leitura offline do prelude do logo confirmou que o helper dominante nas janelas quentes continua sendo `0x2BE4`, isto e, polling de `S#2 bit0` (`CE`) em torno dos comandos do VDP.
- Comparacao direta das tabelas de timing fechou outro gap objetivo:
  - no core local, as tabelas herdadas do `fMSX` continuam nos valores historicos altos (`818`, `1063`, `439`, ...)
  - o `blueMSX` usa deltas muito menores (`92`, `120`, `49`, ...)
  - o `/8` local aproximava a referencia, mas ainda deixava erro residual no pacing do logo
- Correcao local desta rodada:
  - `src/fmsx_local/V9938.c`
  - o boost stateful do boot logo continua sendo armado so quando o comando nasce dentro da janela BIOS do logo
  - mas, enquanto esse boost estiver ativo, `GetVdpTimingValue()` deixa de usar o `/8` aproximado e passa a usar as tabelas exatas do `blueMSX` para:
    - `SRCH`
    - `LINE`
    - `HMMV`
    - `LMMV`
    - `YMMM`
    - `HMMM`
    - `LMMM`
  - fora dessa janela, o core continua no baseline local atual
- Objetivo do corte:
  - atacar diretamente o helper dominante `2BE4` pelo lado certo: custo real de comando visto pelo polling de `CE`
  - manter `R#9 interlace` e `MASK` fora do foco desta rodada
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051205-cc918b4` (OK)
  - `BUILD_BID=202604051205-cc918b4`
  - `BUILD_ID=7BE9`
  - artefato `sha1 c8c722f904f40f4dcbb04e93d5998f1ae8060dd4`
- Estado operacional:
  - sem `git commit`
  - sem `git push`
  - sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - `0x99` passa a sincronizar no primeiro byte do latch

- A comparacao offline entre o helper BIOS `MSX2PEXT:2BEF` e o `blueMSX` fechou uma divergencia concreta:
  - no `blueMSX`, toda write em `0x99` passa por `sync(vdp, now)`, inclusive a primeira metade do latch
  - no core local, o primeiro byte (`VKey==1`) ainda pulava o sync do VDP e so a segunda write fazia flush do command engine
- Leitura tecnica:
  - num loop BIOS apertado de polling como `2BEF`, isso podia apagar um `OUT (99h)` inteiro de progresso do engine por iteracao
  - o problema continua coerente com a leitura atual da UART:
    - `R9=00`
    - `R25=03`
    - `R26/R27` como driver da animacao horizontal
  - entao o corte segue focado em cadencia de comando/polling, nao em `MASK`
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - o case `0x99` agora chama `fmsx_vdp_sync_before_cpu_write()` tambem quando `VKey==1`, antes de apenas latchear `ALatch`
  - o sync extra do segundo byte foi removido, deixando um sync por write e aproximando o fluxo ao `blueMSX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051018-cc918b4`
  - artefato `sha1 7b8bbce640bd7601cac331c803f3035577d7a8c0`
- Estado operacional:
  - sem `git commit`
  - sem `git push`
  - sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - janela pseudo-`VStart` limitada a cauda real da ultima scanline

- A leitura combinada da UART (`BL238I/R/S/E`), do `blueMSX` e do disassembly fechou um desvio mais fino no contrato de `S#2`:
  - o `blueMSX` expõe o low de `S#2 bit6` no prelude do frame por tempo continuo;
  - na modelagem local, a documentacao ja tratava isso como "cauda da ultima scanline";
  - mas a implementacao ainda projetava essa janela sobre a **linha inteira**.
- Isso deixava os helpers BIOS `10D6` e `363B` verem o edge de `VStart` cedo demais:
  - `10D6`: espera `bit6` fazer `low -> high`
  - `363B`: espera `bit6` fazer `high -> low` e so sai quando `bit1` ja representa o novo frame
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_previsible_window_active()` agora so ativa na faixa de HBlank da ultima scanline do frame anterior
  - `fmsx_vdp_status2_vr()` e a inversao live de `bit1` continuam usando essa mesma janela, mas sem alargar o `VStart` para a linha inteira
- Impacto esperado:
  - aproximar o contrato `S#2 bit6/bit1` ao `blueMSX` sem tocar no renderer nem em `MASK`
  - reduzir waits artificiais dos helpers BIOS que usam `0x2BEF` fora da janela visivel do logo
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051116-cc918b4`
  - `BUILD_ID=AA06`
  - `BUILD_HASH=cc918b4-31589d42ff0c10522c2f73c7059498e9382f4260`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `git commit`
  - sem `git push`
  - sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - boost do logo passa a ser stateful por comando

- O corte anterior reintroduziu o `/8` so nos wrappers/polls do BIOS do logo, mas ainda dependia do `CPU.PC.W` instantaneo a cada slice do command engine.
- Isso ainda ficava mais fraco que o `blueMSX`: no modelo de referencia, uma vez que o comando do logo arma `CE`, o progresso dele continua por tempo, mesmo quando a CPU sai do wrapper BIOS naquele meio-tempo.
- Refinamento local aplicado:
  - `src/fmsx_local/V9938.c`
  - o boost do logo agora e latched por comando:
    - arma em `VDPDraw()` quando o start do comando acontece dentro da janela BIOS do logo
    - permanece ativo enquanto `CE=1`
    - cai automaticamente quando `CE` limpa em `VdpTraceSyncCE()`
- Consequencia tecnica:
  - o `/8` deixa de depender do `PC` da CPU durante a execucao do comando
  - o corte continua restrito ao boot logo `MSX2+`, mas fica semanticamente mais proximo do `blueMSX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051010-cc918b4`
  - `BUILD_ID=8504`
  - `BUILD_HASH=cc918b4-dbea3990879f647f24d05a06015f29880a2d46e8`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado operacional desta rodada:
  - sem `git commit`
  - sem `git push`
  - sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - cadencia do logo volta ao fluxo BIOS de `S#2 bit0`

- A leitura consolidada da UART e da trilha antiga `#176` fechou um ponto importante:
  - na janela visivel do logo, `R#9` continua `00` e `R#25` continua `03`
  - o movimento observado vem de writes tardias de `R#26/R#27`
  - o `blueMSX` continua sendo a referencia semantica primaria, mas o renderer ja deixou de ser o melhor proximo alvo desta rodada
- Cruzamento direto com o backlog antigo:
  - a `#176` ja tinha sustentado que o gargalo remanescente do boot/logo `MSX2+` estava mais perto da cadencia do polling BIOS de `S#2 bit0` do que de reescritas amplas de `SCREEN 6/7`
  - o corte que mais fazia sentido reaproveitar era justamente o de reduzir custo de comando so no fluxo BIOS do logo
- Correcao local aplicada:
  - `src/fmsx_local/V9938.c`
  - `GetVdpTimingValue()` voltou a reduzir o custo dos comandos (`/8`, minimo `1`) apenas dentro dos wrappers/polls do boot logo
  - a janela aceita agora:
    - os ranges lineares ja documentados na `#176`:
      - `0x2BE4..0x2C27`
      - `0x2E3E..0x2F97`
      - `0x3040..0x3147`
      - `0x3299..0x3325`
    - e o alias `+0x5000` observado na UART atual da `#238`, para cobrir o mesmo fluxo quando ele aparece mapeado em `0x7Bxx/0x7Exx/0x80xx/0x82xx`
- Justificativa tecnica:
  - o alvo desta rodada nao e mais `MASK`
  - tambem nao ha evidencia pratica de que `R#9 interlace` dirija a janela visivel atual do logo
  - o ajuste tenta aproximar o producer BIOS-side do ritmo observado no `blueMSX` sem alargar a heuristica para gameplay nem para softwares fora do boot logo
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051005-cc918b4`
  - `BUILD_ID=828F`
  - `BUILD_HASH=cc918b4-4529f3540680781486b58b2948ef41b86cff4688`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado operacional desta rodada:
  - sem `git commit`
  - sem `git push`
  - sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - `IE0/VBlank` alinhado ao inicio da borda inferior

- A UART leve da `85F2` fechou um ponto importante sem ambiguidade:
  - `BL238I`: `R9=00`, `R25=03`, `R26/R27=00`
  - `BL238R`: primeira write de `R26/R27` em `0x99 @ 7BB2`, depois loop regular em `0x9B @ 7A71/7A73`
  - `BL238S`: `AVG:016`, `MAX:028`, `CE:3`, `TR:0`, `W26/W27=77`
- Leitura tecnica consolidada:
  - a janela visivel do logo nao depende de `R#9 interlace`
  - o host/presenter tambem nao e o gargalo dominante
  - o proximo suspeito forte passou a ser o ritmo BIOS-side que alimenta `R26/R27`
- Comparacao direta contra `blueMSX`:
  - `onVint()` no `blueMSX` sobe `IE0/VBlank` logo no inicio da borda inferior, isto e, imediatamente apos a ultima linha visivel
  - o core local ainda estava disparando `IE0/VBlank` no fim da borda inferior (`192+28`/`212+18`), atrasando semanticamente o pacing de qualquer rotina BIOS que use essa janela para dirigir o logo
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_vblank_start()` agora devolve `192/212`
  - o gate que sobe `VDPStatus[0].7`, `VDPStatus[2].6` e `INT_IE0` passou a usar esse mesmo ponto
- Build local validada:
  - `BUILD_BID=202604042230-issue238-vblank-drawarea-start`
  - `BUILD_ID=FCD5`
  - `BUILD_HASH=cc918b4-024ff5eb8ba7a2500f9df7b210693737afdfb42c`
  - artefato: `artifacts/kernel8-issue238.img`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`
- Proximo gate:
  - repetir o boot logo do `MSX2+`
  - verificar se a cadencia finalmente reage sem perder o split horizontal correto
  - `MASK` continua explicitamente fora do foco desta rodada

## Atualizacao incremental de 05/04/2026 - `AEAA` descartada; proximo corte vai para o path parcial real

- O round de video + UART da build `AEAA` fechou um descarte objetivo:
  - o split horizontal continuou correto
  - a cadencia nao reagiu
  - nao apareceu leitura pratica de odd/even
  - o logo ficou visualmente distorcido
- A UART confirmou que o contrato funcional do logo nao mudou:
  - `R9=00`
  - `R25=03`
  - primeira write de `R26/R27` segue em `0x99 @ PC 7BB2`
  - depois o loop continua em `0x9B @ PC 7A71/7A73`
- Leitura tecnica consolidada:
  - o rewrite de `RefreshLine6()` full-line atacou o lugar errado
  - o path realmente ativo durante o scanout parcial continua sendo `RefreshLine6WideRange()` via `fmsx_vdp_render_screen67_partial()`
  - portanto, a `AEAA` foi descartada localmente como regressao visual sem ganho de contrato
- Correcao local aplicada nesta rodada:
  - `src/fmsx_local/Wide.h` voltou `RefreshLine6()` ao path estavel anterior
  - o alinhamento de `odd page` da `2039` foi preservado
  - `RefreshLine6WideRange()` deixou de reconstruir `BgRaw[1024]` inteiro a cada chunk e passou a fazer sampling sob demanda apenas da faixa pedida
- Build local validada:
  - `BUILD_BID=202604042152-cc918b4`
  - `BUILD_ID=C724`
  - `BUILD_HASH=cc918b4-d1d3b856f205e2924cdeb77c5af38b54b78ff141`
  - artefato: `artifacts/kernel8-issue238.img`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`
- Proximo gate:
  - repetir o boot logo do `MSX2+`
  - verificar se a cadencia melhora sem reabrir a distorcao da `AEAA`
  - manter `MASK` explicitamente em segundo plano ate fechar cadencia

## Atualizacao incremental de 05/04/2026 - UART leve para medir cadencia real

- O round da `C724` confirmou o esperado:
  - a distorcao da `AEAA` sumiu
  - o split horizontal continuou correto
  - a cadencia visual ainda nao reagiu
- A UART da `C724` manteve o mesmo contrato funcional:
  - `R9=00`
  - `R25=03`
  - primeira write de `R26/R27` por `0x99 @ 7BB2`
  - loop regular depois por `0x9B @ 7A71/7A73`
- Leitura tecnica consolidada:
  - o VDP continua semanticamente no mesmo estado
  - o gargalo seguinte passou a ser a propria telemetria: `BL238` em todo frame e `BL238R` em toda alternancia estavam pesados o bastante para contaminar a leitura visual de cadencia
- Correcao local aplicada:
  - `src/fmsx_host_stubs.c`
  - o trace do boot logo foi reduzido para:
    - `BL238I` no primeiro frame
    - `BL238R` apenas quando a origem das writes de `R26/R27` muda
    - `BL238S` como resumo no frame `96`
  - os contadores internos continuam sendo acumulados, mas sem poluir o serial a cada frame
- Build local validada:
  - `BUILD_BID=202604042201-cc918b4`
  - `BUILD_ID=85F2`
  - `BUILD_HASH=cc918b4-e75d968baca8623b4a7f67a7ac93009e34c25606`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - repetir o boot logo do `MSX2+` com a UART leve
  - medir primeiro a cadencia visual real, antes de abrir um novo patch no core do VDP

## Atualizacao incremental de 04/04/2026 - `7E29` descartada por regressao real de cadencia

- A UART do round mais recente fechou que o corte `SCREEN 6 streaming scroll` da build `7E29` piorou a cadencia em vez de melhora-la:
  - `BL238` continuou com `F/VF=1:1`, `LG=000`, `R9=00`, `R25=03` e a mesma sequencia de writes tardias em `R26/R27`
  - mas o `DT` medio em `96` frames subiu para `30.06ms`, com pico de `43ms`
- Leitura tecnica consolidada:
  - a reescrita local de `RefreshLine6()` / `RefreshLine6WideRange()` preservou a semantica de `R26/R27`, mas introduziu regressao de throughput no renderer wide
  - isso elimina esse path como candidato para a correção imediata da `#238`
  - o foco vivo da issue continua sendo a cadencia/consumo das writes tardias de `R26/R27`, mas sem manter esse rewrite no worktree
- Estado local apos o descarte:
  - `src/fmsx_local/Wide.h` voltou ao renderer anterior
  - a telemetria util foi preservada em `src/fmsx_host_stubs.c` e `src/fmsx_local/MSX.c`
- Build local validada apos o rollback do renderer regressivo:
  - `BUILD_BID=202604042215-issue238-drop-screen6-streaming-regression`
  - `BUILD_ID=C7EC`
  - `BUILD_HASH=cc918b4-b19e9b444adbbc29baf22793a2664e6029718d5c`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - repetir o boot logo do `MSX2+` sobre a base `C7EC`
  - confirmar que a cadencia volta ao baseline anterior, com a telemetria `BL238/BL238I/BL238R` preservada

## Atualizacao incremental de 05/04/2026 - `odd page` wide alinhado ao `blueMSX`

- A UART da base `C7EC` continuou mostrando o mesmo contrato funcional do logo:
  - `BL238I`: `R9=00`, `R25=03`, `R26/R27=00` no primeiro frame
  - `BL238R`: primeira write em `R26/R27` por `0x99 @ PC 7BB2`, depois loop regular por `0x9B @ PC 7A71/7A73`
  - `BL238W`: segue inutil para este recorte
- Leitura tecnica consolidada desta rodada:
  - o foco vivo da `#238` permanece no consumo visual de `R26/R27`
  - o desvio estrutural mais forte contra o `blueMSX` estava no addressing wide: `src/fmsx_local/Wide.h` so aplicava `FmsxVDPLineOddPageLatched` quando `FlipEvenOdd` estava ativo
  - no `blueMSX`, `vdpIsOddPage()` participa sempre do addressing de `SCREEN 6/7`, independentemente de `R#9 bit2`
- Correcao aplicada:
  - `V9958BitmapLinePtrWideLatched()` agora honra `FmsxVDPLineOddPageLatched` incondicionalmente, espelhando o contrato do `blueMSX` para `SCREEN 6/7`
  - nenhum ajuste novo foi feito em `MASK`
  - a telemetria `BL238/BL238I/BL238R` foi preservada
- Build local validada:
  - `BUILD_BID=202604042345-issue238-screen67-oddpage-address`
  - `BUILD_ID=2039`
  - `BUILD_HASH=cc918b4-272f08af53d9bb87cb3b543c6db1d0c381896340`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - repetir o boot logo do `MSX2+`
  - verificar se a apresentacao odd/even finalmente aparece de forma util e se a cadencia percebida melhora sem reabrir regressao horizontal

## Atualizacao incremental de 05/04/2026 - `2039` sem efeito de contrato, proximo corte no `RefreshLine6()` full-line

- A UART da build `2039` nao mudou o contrato observado do logo:
  - `R9=00`, `R25=03`
  - `BL238R` segue com a primeira write por `0x99 @ 7BB2` e o loop regular por `0x9B @ 7A71/7A73`
  - `BL238I/BL238R` continuam coerentes com a mesma janela visivel
- Leitura tecnica:
  - o alinhamento do addressing `odd page` por si so nao alterou o estado exposto no presenter
  - o proximo alvo volta a ser o consumo do `SCREEN 6` full-line em si
- Correcao aplicada nesta rodada:
  - `src/fmsx_local/Wide.h` trocou apenas `RefreshLine6()` full-line por um loop muito mais proximo do `blueMSX`
  - o novo path abandona a expansao da linha inteira em `BgRaw[1024]` para `SCREEN 6` full-line e passa a consumir `charTable` em fluxo, com `scroll/page` e `jump` no mesmo modelo do `blueMSX`
  - `RefreshLine6WideRange()` foi mantido intacto nesta rodada para limitar o risco
- Build local validada:
  - `BUILD_BID=202604050015-issue238-screen6-bluemsx-fullscan`
  - `BUILD_ID=AEAA`
  - `BUILD_HASH=cc918b4-af940a058b8c0deea90e743290071157a0be0e25`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - repetir o boot logo do `MSX2+`
  - verificar se a cadencia finalmente reage com o `RefreshLine6()` full-line mais proximo do `blueMSX`, mantendo o split horizontal correto

## Estado herdado da umbrella

- A `#236` ja foi concluida e mergeada na umbrella via PR `#241`.
- A camada de consolidacao deixou este recorte pronto para implementacao:
  - `IO-004` como ajuste de sync/contrato do status read
  - `CMD-005` como rework do command engine por tempo
  - `REN-004` e o recorte critico de `REN-007` como renderer high-res page-aware
- Itens que ficam fora desta branch:
  - `REG-003` foi desviado para a `#240`
  - `CMD-004` continua sustentado pela base estatica, sem repro dinamico util nesta rodada
  - `REN-008` e a cauda de odd/even permanecem bloqueados por falta de evidencia dinamica util

## Proximo passo objetivo

1. Auditar o caminho atual do boot logo no core local contra o `blueMSX` com foco em:
   - `S#2`, `S#7`, `S#8`, `S#9`
   - `CE`, `TR`, `BD`
   - progressao temporal do command engine
   - composicao page-aware de `SCREEN 6/7`
2. Fechar a ordem real dos patches:
   - status sync
   - engine por tempo
   - renderer `SCREEN 6/7`
3. Implementar e revalidar:
   - boot logo `MSX2+`
   - `STS006`
   - `REG004`
   - `Knightmare Gold`
   - `Gradius2E/Nemesis2E`

## Orientacao operacional imediata

- Fonte tecnica principal:
  - `docs/reverse-engineering/msx2plus/vdp9958-stock/implementation-backlog.md`
- Dossie do boot logo:
  - `docs/reverse-engineering/msx2plus/boot-logo/boot-callflow.md`
  - `docs/reverse-engineering/msx2plus/boot-logo/fix-strategy.md`
- Matriz canonica:
  - `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
- Arquivos-alvo provaveis desta branch:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/V9938.c`
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/Wide.h`

## Atualizacao incremental de 04/04/2026 - `BL238` direto no serial baremetal

- O round de validacao da build `3271` fechou um diagnostico mais profundo do que a propria janela do trace:
  - o arquivo `/tmp/msx2p-boot-serial.log` continuou sem qualquer linha `BL238`
  - ao mesmo tempo, ele tambem nao mostrava os `log_cb(...)` antigos ja espalhados em `src/fmsx_local/MSX.c`
  - isso confirmou que o problema residual nao era mais a janela do boot logo, e sim o canal de emissao
- Causa raiz fechada nesta rodada:
  - no baremetal local, `src/fmsx_host_stubs.c` declara `retro_log_printf_t log_cb = 0`
  - o `log_cb` nunca e ligado ao mesmo serial usado pelo kernel no startup
  - por isso, a `3271` tinha a janela correta do boot logo, mas continuava silenciosa no UART real
- Implementacao aplicada:
  - `src/kernel.cpp` agora exporta `msxbare_uart_write(const char *text)` usando o mesmo `CSerialDevice` ja inicializado no boot do kernel
  - `src/fmsx_host_stubs.c` deixa de emitir `BL238` por `log_cb` e passa a escrever direto nesse canal serial do kernel
  - a janela local do boot logo da `3271` foi preservada: o trace continua cobrindo os primeiros `96` frames em `SM:06` com `R25=03`
- Build local validada:
  - `BUILD_BID=202604041055-issue238-bootlogo-uart-direct`
  - `BUILD_ID=1AD5`
  - `BUILD_HASH=f2485a7-123900306375666fd0ff2f4ff911edd8b910b64a`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - repetir a captura UART com a mesma rotina `scripts/logserial.sh`
  - validar finalmente as linhas `BL238`
  - responder se `R9/S2/EO` alternam de verdade durante o logo e se o host fica atras de `VF`

## Atualizacao incremental de 04/04/2026 - `BL238` passa a medir tempo real e `CE/TR`

- A primeira coleta real do `BL238` na build `1AD5` finalmente apareceu no UART e fechou um recorte importante:
  - `F` e `VF` andaram `1:1` durante toda a janela do logo
  - `LG` ficou constante, o que mostrou que o host nao acumula backlog crescente de apresentacao durante o boot logo
  - `R25` ficou em `03`, `R9` em `00`, `EO` em `0`, e `R26/R27` alternaram quadro a quadro assim que a animacao horizontal entrou
- Diagnostico consolidado desta rodada:
  - o campo `LG` antigo era pouco util porque comparava `F` relativo ao logo com `VF` absoluto do emulador
  - o trace ainda nao mostrava `CE/TR`, que continuam sendo o corte mais util para decidir se a lentidao vem do command engine ou de outra parte do produtor do quadro
- Implementacao aplicada:
  - `src/fmsx_host_stubs.c` agora ancora `VF` ao primeiro frame do proprio logo
  - o trace `BL238` passou a incluir:
    - `DT`: delta real em ms entre frames publicados
    - `ET`: tempo acumulado em ms desde o primeiro frame do logo
    - `CE`
    - `TR`
- Build local validada:
  - `BUILD_BID=202604041125-issue238-bootlogo-uart-timing`
  - `BUILD_ID=1796`
  - `BUILD_HASH=dbcacb7-496d863c4acff33d8ed0b11df5f97387b6235619`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - repetir a captura UART
  - fechar se a cadencia real do logo cai por `DT` alto com `CE=1`, ou se o gargalo mora fora do command engine

## Atualizacao incremental de 04/04/2026 - leitura consolidada do `BL238` com `DT/ET/CE/TR`

- A captura UART da build `1796` fechou o recorte que faltava:
  - `F` e `VF` andam `1:1` durante toda a janela do logo
  - `LG=000` do primeiro ao ultimo frame
  - `DT` fica majoritariamente entre `14ms` e `18ms`, com picos pontuais de `25..30ms`
  - media observada em `96` frames: `15.99ms`
  - `CE=1` aparece so em `3` frames da janela (`F:001`, `F:012`, `F:018`)
  - `TR=0` em todos os `96` frames
  - `R26/R27` alternam de forma estavel entre `1D/07` e `24/01` apos a entrada da animacao horizontal
- Leitura tecnica consolidada:
  - o host nao esta atrasando apresentacao; o logo ja e publicado em cadencia pratica de ~`60Hz`
  - a lentidao residual nao casa com um `command engine` continuamente ocupado, porque `CE` so pulsa em poucos frames e `TR` nao entra
  - `R9=00`, `HI=0` e `EO=0` em toda a janela reforcam que o logo observado nao esta dependendo de odd/even/interlace ativo no modo atual
- Consequencia pratica para a branch:
  - o proximo corte deixa de perseguir presenter/host ou `CE` como gargalo dominante
  - a trilha volta ao produtor do quadro do logo em `SM:06`, com foco na programacao BIOS-side de `R26/R27`/page split e no caminho de renderizacao que ainda transforma esse estado em movimento visual mais lento do que a referencia

## Atualizacao incremental de 04/04/2026 - build `7A75` continua sem efeito visual util

- O round mais recente de video + UART com a build `7A75` confirmou exatamente o mesmo quadro observado na rodada anterior:
  - o logo continua entrando
  - a cadencia observada em tela permanece "lerda", mas a UART segue mostrando publicacao pratica em ~`60Hz`
  - o `MASK` continua visivel
  - nao apareceu leitura pratica de odd/even/interlace no quadro apresentado
- O `BL238` desta rodada consolidou:
  - `F` e `VF` continuam `1:1`
  - `LG=000` em toda a janela
  - `R9=00`, `F9=0`, `I9=0`
  - `R25=03`
  - `R26/R27` seguem alternando de forma regular entre `1D/07` e `24/01`
  - `CE` aparece so em poucos frames; `TR` fica `0`
- O ponto novo e importante desta rodada foi negativo:
  - nao apareceu nenhuma linha `BL238W` no UART
  - isso mostrou que o gating anterior do trace de writes BIOS-side ainda estava tarde demais e perdia a preparacao do logo antes da janela visivel
- Leitura tecnica consolidada:
  - o numero aproximado `F:004500` ate chegar ao BASIC nao representa backlog do host; ele continua coerente com execucao em torno de `60Hz`
  - a lentidao residual continua sendo semantica do produtor do quadro do logo, nao perda acumulada de apresentacao
  - como `R9/F9/I9` ficam zerados na janela visivel, ainda falta capturar as writes de preparacao do BIOS para fechar se odd/even/interlace realmente sao armados antes do logo ou se o problema esta em outro ponto do pipeline

## Atualizacao incremental de 04/04/2026 - `BL238W` sem gate da janela visivel

- O corte local seguinte para a `#238` nao mexe no renderer nem no pacing; ele ataca apenas a observabilidade do prelude do boot logo.
- Implementacao aplicada em `src/fmsx_local/MSX.c`:
  - `BL238W` deixa de esperar `ScrMode==6` / logo visivel
  - o trace passa a registrar os primeiros `256` writes dos registradores rastreados (`R#2`, `R#9`, `R#18`, `R#25`, `R#26`, `R#27`) desde o prelude do BIOS
  - a janela continua bounded para nao explodir o volume do UART
- Objetivo desta rodada:
  - capturar finalmente se a `MSX2PEXT` arma `R#9`/odd-even/interlace antes de o logo entrar na tela
  - decidir o proximo patch com base em evidencia BIOS-side, em vez de seguir com renderer cego
- Build local validada:
  - `BUILD_BID=202604041620-issue238-prelude-regwrite-ungated`
  - `BUILD_ID=89F2`
  - artefato local `artifacts/kernel8-issue238.img`
  - `sha1` do artefato: `03d3b641eeefde71323afe12676f88a61b300670`
- Guardrail desta rodada:
  - este corte permanece apenas no worktree local, sem commit e sem push
- Proximo gate:
  - repetir o boot logo com a build `89F2`
  - reler no UART tanto `BL238` quanto `BL238W`
  - fechar se o BIOS realmente escreve `R#9`/odd-even/interlace no prelude, ou se a proxima rodada deve atacar outro ponto do produtor do quadro

## Atualizacao incremental de 04/04/2026 - `89F2` valida o binario, mas `BL238W` continua mudo

- A rodada seguinte finalmente confirmou que a UART capturada ja e da mesma imagem local da branch:
  - o artefato `artifacts/kernel8-issue238.img` e a UART carregada em campo batem no mesmo binario
  - a ausencia de `BL238W` deixou de ser suspeita de SD/imagem velha
- Mesmo assim, o log da `89F2` continuou mostrando:
  - `F/VF=1:1`
  - `LG=000`
  - `R9=00`, `F9=0`, `I9=0`
  - `R25=03`
  - `R26/R27` alternando regularmente
  - `CE` so em poucos frames
  - `TR=0`
  - nenhuma linha `BL238W`
- Leitura tecnica desta rodada:
  - o problema deixou de ser "build errada no SD"
  - a instrumentacao anterior de `BL238W` continua falhando em pegar o ponto real das writes, apesar de o binario certo estar em campo
  - o proximo corte precisa sair do `VDPOut()` e ir para a borda do decode das portas `0x99/0x9B`, antes de qualquer shadow/atalho do core

## Atualizacao incremental de 04/04/2026 - `BL238W` sobe para o decode de `0x99/0x9B`

- O novo corte local da `#238` nao muda renderer nem pacing; ele troca apenas o ponto da telemetria:
  - `src/fmsx_local/MSX.c` passa a emitir `BL238W` ja no decode das portas `0x99` e `0x9B` para os registradores rastreados (`R#2`, `R#9`, `R#18`, `R#25`, `R#26`, `R#27`)
  - o trace anterior em `VDPOut()` foi mantido como fallback, mas o ponto principal agora e a borda da escrita de porta
  - o payload do log ganhou `P` (porta origem) e `O` (valor antigo) para diferenciar `0x99`, `0x9B` e writes efetivamente mutantes
- Objetivo tecnico:
  - fechar definitivamente se a `MSX2PEXT` escreve `R#9/25/26/27` no prelude do logo e por qual porta
  - destravar o proximo patch de odd/even/interlace em cima de evidencia BIOS-side real
- Build local validada:
  - `BUILD_BID=202604041935-issue238-port99-port9b-regwrite`
  - `BUILD_ID=4749`
  - artefato `artifacts/kernel8-issue238.img`
  - `sha1` do artefato: `1954ba4dc9e0b12e2c0d30fb7ff7dfb0ae5455f2`
- Guardrail desta rodada:
  - corte apenas local, sem commit e sem push

## Atualizacao incremental de 04/04/2026 - `left-edge mask` wide volta a seguir o backdrop scrolado

- O round de UART da build `1796` descartou backlog do host e `CE/TR` continuamente ativos como gargalo dominante do boot logo.
- O proximo corte local da `#238` voltou entao ao renderer `SCREEN 6/7`, mas de forma focada no sintoma ainda visivel em campo:
  - o `left-edge mask` permanecia exposto mesmo depois do split horizontal ter sido corrigido pela `C079`
  - o path wide local ainda usava `BGColor` plano para preencher a mascara, enquanto o path narrow local ja usava o pixel efetivamente scrolado do backdrop
- Implementacao aplicada em `src/fmsx_local/Wide.h`:
  - `RefreshLine6()` e `RefreshLine6WideRange()` passam a usar `BgRaw[(Coarse-Fine)&mask]` como cor-base da mascara
  - `RefreshLine7()` e `RefreshLine7WideRange()` recebem o mesmo ajuste
  - isso mantem a mascara colada ao backdrop ja scrolado, em vez de expor uma faixa plana na borda esquerda do logo
- Guardrail de fluxo aplicado nesta mesma rodada:
  - as instrucoes do projeto e o guia local de gestao agora registram explicitamente que `git push` so pode acontecer quando o usuario declarar estabilidade
  - este corte permanece apenas local, sem `push`
- Build local validada:
  - `BUILD_BID=202604041235-issue238-wide-mask-backdrop`
  - `BUILD_ID=5870`
  - `BUILD_HASH=5a7a82c-5dd8114883e78fd67d9a3864d8b60355d8348e7d`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware com a `5870`
  - responder se o `MASK` finalmente se mistura ao backdrop, e se houve qualquer efeito colateral sobre tarja/pagina errada, cadencia ou leitura pratica de interlace

## Atualizacao incremental de 04/04/2026 - `BL238I` expõe o ultimo write absoluto de `R#9/25/26/27`

- A UART da build `6ED6` fechou que o logo visivel nao reprograma `R#9` nem `R#25`, mas escreve `R#26/R#27` de forma regular:
  - primeira mudanca visivel por `0x99` em `PC=7BB2`
  - depois loop estavel por `0x9B` em `PC=7A71/7A73`
  - `R#26/R#27` alternando no fim da area visivel (`SL 192/193`)
- Leitura tecnica consolidada:
  - raw e latched continuam batendo na janela visivel
  - o proximo ponto cego da issue nao e mais o frame mostrado, e sim o estado herdado do prelude do logo
  - antes de insistir em `odd/even + R#9 interlace`, e preciso fechar se `R#9/25` chegam a ser armados antes do primeiro frame rastreado
- Implementacao aplicada nesta rodada:
  - `src/fmsx_host_stubs.c` ganhou a linha UART `BL238I`
  - no primeiro frame do logo, ela imprime o ultimo write absoluto de `R#9`, `R#25`, `R#26` e `R#27`:
    - valor atual
    - contador absoluto de writes
    - porta origem
    - `PC`
    - scanline
    - valor antigo/novo
- Build local validada:
  - `BUILD_BID=202604042245-issue238-bootlogo-init-reg-origin`
  - `BUILD_ID=47D9`
  - `BUILD_HASH=cc918b4-fed1fa2d8f5ec428052b42c1304322c65e2ff704`
  - artefato: `artifacts/kernel8-issue238.img`
- Guardrail desta rodada:
  - sem commit local
  - sem push
- Proximo gate:
  - repetir o boot logo com a `47D9`
  - reler `BL238` e, principalmente, `BL238I`
  - decidir se `R#9 interlace` ainda faz sentido como gargalo primario ou se a issue precisa migrar o foco de vez para a cadencia/consumo das writes de `R#26/R#27`

## Atualizacao incremental de 04/04/2026 - `R#9 interlace` perde forca e `SCREEN 6` wide vira path streaming

- A UART da `47D9` respondeu a pergunta que faltava do prelude do logo:
  - `BL238I` mostrou `R#9=00` com write formal por `0x99` em `PC=7BB2`
  - `R#25=03` e `R#26/R#27` ainda zerados no primeiro frame do logo
  - na janela visivel, `R#26/R#27` continuam sendo escritos regularmente, enquanto `R#9` e `R#25` permanecem estaveis
- Leitura tecnica consolidada:
  - o boot logo observado nesta issue nao esta sendo guiado por `R#9 interlace`
  - o gargalo vivo migra de vez para a cadencia/consumo das writes tardias de `R#26/R#27`
  - a proxima mudanca util deixa de ser novo patch de `MASK` ou odd/even e passa a ser o renderer `SCREEN 6` wide em si
- Implementacao aplicada nesta rodada:
  - `src/fmsx_local/Wide.h`
  - `RefreshLine6()` e `RefreshLine6WideRange()` deixam o modelo de expandir toda a linha em `BgRaw[1024]`
  - o path wide passa a consumir `R#26/R#27` em unidades logicas de pares de pixels, com fetch streaming por pagina, mais proximo do `blueMSX`
  - o objetivo direto e reduzir custo por linha e alinhar melhor a semantica das writes tardias de `R#26/R#27`
- Build local validada:
  - `BUILD_BID=202604042325-issue238-screen6-streaming-scroll`
  - `BUILD_ID=7E29`
  - `BUILD_HASH=cc918b4-054a2bbbf95a7fccd89ea9cc199c2bc5a23f40d2`
  - artefato: `artifacts/kernel8-issue238.img`
- Guardrail desta rodada:
  - sem commit local
  - sem push
- Proximo gate:
  - repetir o boot logo com a `7E29`
  - observar se a cadencia muda
  - reler a UART para verificar se o comportamento de `R#26/R#27` continua coerente com o novo path de `SCREEN 6`

## Atualizacao incremental de 03/04/2026 - ativacao da branch

- A `#236` foi encerrada:
  - PR `#241` mergeado na umbrella
  - issue `#236` fechada
  - item da issue `#236` em `Done` no projeto `MSX BarePI`
- A `#238` passa a ser a primeira issue tecnica ativa da camada de correcao derivada da trilha `#82`.
- O objetivo desta branch deixa de ser descoberta/documentacao e passa a ser implementacao no core, guiada pelo backlog consolidado:
  - `IO-004`
  - `CMD-005`
  - `REN-004`
  - recorte central de `REN-007`

## Atualizacao incremental de 03/04/2026 - primeiro patch de core (`BL-001` + base de `BL-002`)

- Foi aplicado o primeiro corte funcional no bloco de comandos do `V9958`:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/V9938.c`
- Alvo semantico principal usado no diff:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`
- O que mudou no core local:
  - `fmsx_vdp_sync_before_status_read()`, `fmsx_vdp_sync_before_cpu_mutation()`, `VDPRead()`, `VDPWrite()` e `LoopVDP()` deixaram de drenar no maximo um slice do engine
  - o engine agora acumula budget por delta de tempo monotônico do CPU (`fmsx_vdp_cpu_cycles_now()`), em vez de depender exclusivamente do lump fixo por `LoopVDP()`
  - `R#46` continua apenas armando `CE/state`; o patch nao reintroduz consumo imediato no start do comando
- Restricao arquitetural assumida nesta rodada:
  - o backend local nao espelha literalmente o `systemTime` do `blueMSX`
  - os `timing[]` locais ja estao calibrados para a escala historica do backend derivado de `fMSX`
  - por isso, o primeiro patch preserva a vazao media local por scanline e redistribui esse budget ao longo do tempo real do core, em vez de trocar os `timing[]` absolutos no mesmo ciclo
- Build local validada:
  - `BUILD_BID=202604031130-issue238-vdp-time-sync`
  - `BUILD_ID=050B`
  - `BUILD_HASH=26d676a-2b85c3c8dce987f4281c92bfb4249fd6d256de35`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado operacional apos este corte:
  - ainda falta validacao em hardware do boot logo `MSX2+`
  - se o logo ganhar cadencia mas ainda mostrar tarjas/pagina errada, o proximo ataque continua sendo `REN-004` + recorte central de `REN-007`

## Atualizacao incremental de 03/04/2026 - descarte da regressao `E3EC`

- O segundo corte do engine, que tentou colapsar `delta_cycles => budget` de forma literal ao `blueMSX`, regrediu em hardware:
  - a build `E3EC` passou a congelar ainda na tela azul anterior ao boot logo
  - o overlay mostrou o BIOS parado antes do inicio da animacao, portanto a rodada deixou de ser apenas "lenta demais" e virou hang real
- Decisao tecnica desta rodada:
  - descartar o corte `E3EC` como baseline da branch
  - restaurar o modelo temporal da `050B`, que ainda preserva a vazao media historica do backend local por scanline
  - manter o `blueMSX` como referencia semantica, mas nao forcar nesta rodada a mesma escala absoluta de budget/timing
- Implementacao restaurada em `src/fmsx_local/V9938.c`:
  - `VdpOpsQuantum()` volta ao modelo da `050B`
  - `srch_timing`, `line_timing`, `hmmv_timing`, `lmmv_timing`, `ymmm_timing`, `hmmm_timing` e `lmmm_timing` voltam aos valores locais anteriores ao experimento `E3EC`
- Build local validada apos o rollback:
  - `BUILD_BID=202604031435-issue238-drop-abs-timing-regression`
  - `BUILD_ID=CBAC`
  - `BUILD_HASH=6967d68-ef1f9b429bfa4c1a6b3fd11d0ad9a32adf1247dd`
  - artefato: `artifacts/kernel8-issue238.img`
- Consequencia pratica para a branch:
  - o proximo corte tecnico volta a partir da base segura `050B`
  - renderer `SCREEN 6/7` page-aware + odd/even/interlace passa a ser o proximo alvo principal, em vez de insistir no pacing absoluto que travou o BIOS

## Atualizacao incremental de 03/04/2026 - primeiro corte de renderer `SCREEN 6/7`

- A validacao em hardware da build `CBAC` confirmou o estado seguro esperado da branch:
  - o boot logo volta a sair da tela azul e chega a iniciar
  - a cadencia continua lenta
  - permanecem sintomas visuais de `MASK`/pagina errada, coerentes com `REN-004` + recorte central de `REN-007`
- Com isso, a branch saiu do bloco de timing absoluto do engine e entrou no primeiro patch de renderer high-res:
  - arquivo alterado: `src/fmsx_local/Wide.h`
  - referencia primaria usada: `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
- O que mudou neste corte:
  - `SCREEN 6/7` continuam montando a linha via `BgRaw`, mas a ordem logica das paginas passa a respeitar `chrTabBase bit15` quando `hScroll512`/multipage estao ativos, em vez de assumir sempre "pagina atual depois pagina seguinte"
  - o `left-edge mask` deixa de herdar a cor do primeiro pixel scrolado e volta a usar a cor de fundo do modo, alinhando o comportamento ao fluxo observado no `blueMSX`
- Restricao assumida nesta rodada:
  - ainda nao foi portada a composicao streaming completa com `jumpTable` no renderer local
  - o objetivo desta build e validar se a simples correcao de ordem logica de pagina + cor do mask ja move o boot logo para um estado visual mais proximo do alvo, sem reintroduzir o hang descartado em `E3EC`
- Build local validada:
  - `BUILD_BID=202604031620-issue238-screen67-page-order`
  - `BUILD_ID=70ED`
  - `BUILD_HASH=a621e95-c5907ef75b5ef5ef9c92110459d20bcaa8ebac0f`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - validar em hardware se esta build reduz pagina errada/tarja e melhora a leitura visual do boot logo sem perder o baseline seguro de boot da `CBAC`

## Atualizacao incremental de 03/04/2026 - habilitacao do path hi-res interlaced no baremetal

- O primeiro corte de renderer (`70ED`) nao moveu os sintomas principais em hardware:
  - `MASK` continuou visivel
  - pagina errada/tarja nao melhorou de forma perceptivel
  - a cadencia permaneceu lenta
  - o quadro continuou sem aparencia pratica de interlace
- O diff seguinte nao entrou mais no renderer em si; ele atacou o host local:
  - arquivo alterado: `src/fmsx_host_stubs.c`
  - referencia conceitual usada: `third_party/fmsx/libretro.c`
- Diagnostico fechado:
  - o baremetal herdava de `libretro` a variavel `hires_mode`, mas sem um equivalente do frontend `fmsx_hires`
  - como o default local estava em `HIRES_OFF`, o caminho de apresentacao hi-res/interlaced permanecia desligado mesmo quando o VDP ativava `InterlaceON`
- Mudanca aplicada:
  - o host baremetal passa a inicializar `g_hires_mode` em `HIRES_INTERLACED`
  - isso reabre o caminho de apresentacao odd/even/interlaced sem depender de uma opcao de frontend inexistente no projeto
- Build local validada:
  - `BUILD_BID=202604031710-issue238-hires-default-interlaced`
  - `BUILD_ID=C2C2`
  - `BUILD_HASH=d195e4d-5ab3d9413e1422b2cc97922bdec5c5c3dfba61ff`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - validar em hardware se o boot logo finalmente ganha leitura pratica de interlace/odd-even
  - se isso acontecer, o proximo corte volta ao renderer `SCREEN 6/7` para atacar `MASK`/pagina errada com o path hi-res ja habilitado

## Atualizacao incremental de 03/04/2026 - `C2C2` sem efeito visual e recorte no `SCREEN 6` wide

- O round seguinte em hardware confirmou que a build `C2C2` nao moveu o estado visivel do boot logo:
  - `MASK` continuou visivel
  - pagina/tarja errada nao melhorou
  - a cadencia permaneceu lenta
  - nao apareceu leitura pratica de interlace
- Diagnostico consolidado desta rodada:
  - o `hires_mode` default do host deixou de ser o gargalo principal
  - o sintoma visivel dominante segue no renderer `SCREEN 6` wide
  - o primeiro patch de `Wide.h` tambem foi insuficiente porque tentava reordenar paginas a partir de `ChrTab`, mas o core local ja neutraliza `R#2 bit5` em `fmsx_vdp_r2_base()` quando `multipage` esta ativo
- Novo corte aplicado em `src/fmsx_local/Wide.h`, ainda usando `blueMSX/Common.h` como referencia primaria:
  - remove a heuristica local de reorder de pagina baseada em `ChrTab bit15`
  - faz o renderer wide de `SCREEN 6` assumir a topologia `base + 0x8000`, alinhada ao contrato local do `ChrTab`
  - repinta a borda lateral do `SCREEN 6` wide com o padrao alternado de `BGColor[hi/lo]`, espelhando `RefreshBorder6()` do `blueMSX`
  - dobra o `left-edge mask` fisico do `SCREEN 6` wide para `16` pixels, como no `blueMSX` line512
- Build local validada:
  - `BUILD_BID=202604031830-issue238-screen6-edge-mask`
  - `BUILD_ID=E520`
  - `BUILD_HASH=2bcfd13-da6cb9d57eebc4c7ded4856f93b0d0f840a5038a`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware com a `E520`
  - verificar se o `MASK` finalmente muda de leitura visual; se nao mudar, o proximo corte deixa de ser borda/mask e passa a ser streaming/page source de `SCREEN 6`

## Atualizacao incremental de 03/04/2026 - retorno controlado ao pacing do command engine

- O reteste em hardware da `E520` confirmou que o recorte visual ainda nao move o sintoma: nada mudou no boot logo.
- Leitura consolidada desta rodada:
  - borda/mask nao sao mais o primeiro gargalo
  - o ponto que ainda conversa com o que aparece em campo e a cadencia do command engine em `SM:06`
  - o experimento `E3EC` continua descartado; a volta ao pacing deve ser incremental e limitada
- Novo corte aplicado em `src/fmsx_local/V9938.c`:
  - `VdpOpsQuantum()` deixa de usar um valor unico para todo `MSX2+`
  - com `CE=1`, o budget sobe de forma limitada
  - `SCREEN 6/7/8` ganham uplift maior (`500000`) enquanto o restante do `MSX2+` fica em uplift moderado (`300000`)
  - sem `CE`, o baseline seguro da branch continua igual (`250000`)
- Racional tecnico:
  - o `blueMSX` continua sendo a referencia semantica primaria para um engine mais "continuous-time"
  - este corte nao reintroduz os `timing[]` absolutos descartados na `E3EC`
  - a intencao e recuperar throughput do boot logo sem reabrir a regressao de pre-logo azul
- Build local validada:
  - `BUILD_BID=202604031930-issue238-screen6-ce-uplift`
  - `BUILD_ID=2865`
  - `BUILD_HASH=13c4905-e5047616bb1edd3052f3b0e3415715ff51ed12e1`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware
  - verificar se a cadencia finalmente muda; se permanecer identica, o proximo corte sobe para sincronizacao de scanout/renderer com estado parcial do command engine, e nao mais para ajustes cosmeticos

## Atualizacao incremental de 03/04/2026 - scanout parcial de `SCREEN 6/7`

- O round seguinte em hardware da `2865` confirmou o diagnostico que faltava:
  - o quadro ruim do boot logo continuou exatamente no mesmo ponto
  - a cadencia nao mudou
  - o `MASK` nao mudou
  - os frames uteis do overlay seguiam mostrando `CE=0`
- Leitura consolidada desta rodada:
  - o uplift de `VdpOpsQuantum()` com `CE=1` estava atuando no lugar errado para este sintoma
  - o problema visivel restante conversa mais com scanout/render de `SCREEN 6` durante writes de VRAM/registradores do que com throughput do command engine
  - a referencia primaria volta a ser o fluxo incremental `X..X2` do `blueMSX/Common.h` para `RefreshLine6()/RefreshLine7()`
- Novo corte aplicado:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/Wide.h`
- O que mudou no core local:
  - `fmsx_vdp_sync_before_cpu_write()` deixou de curto-circuitar todo o caminho fora da janela do `Knightmare Gold`
  - `SCREEN 6/7` agora calculam o progresso da linha pelo tempo ja escaneado e congelam apenas o prefixo visivel antes da mutacao do VDP
  - `Wide.h` ganhou `RefreshLine6WideRange()` e `RefreshLine7WideRange()` para compor o trecho ja exposto da linha, preservando o sufixo para o estado posterior ao write
  - o flush completo da linha continua restrito ao caso especial de `KMG` em `SCREEN 4`
- Restricao arquitetural desta rodada:
  - o backend local ainda nao espelha literalmente o renderer streaming do `blueMSX`
  - esta build porta so o contrato minimo necessario de scanout parcial para `SCREEN 6/7`, preservando o restante do pipeline atual
- Build local validada:
  - `BUILD_BID=202604031620-issue238-screen6-partial-scanout`
  - `BUILD_ID=894F`
  - `BUILD_HASH=8a4947c-00efee1ad301422d4ffa66201b3e2a3858304be4`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware
  - verificar se a pagina/tarja passa a reagir ao ponto real do problema; se ainda nao reagir, o proximo corte sobe para latch mais agressivo do estado de display por scanline (`odd/even`, page source e scroll)

## Atualizacao incremental de 04/04/2026 - latch por scanline em `SCREEN 6/7` + build `aarch64-elf`

- O round seguinte em hardware da `894F` confirmou ausencia total de efeito visual:
  - `MASK` continuou visivel
  - pagina/tarja errada continuou no mesmo ponto
  - cadencia permaneceu igual
  - sem aparencia pratica de interlace
- Leitura consolidada desta rodada:
  - o scanout parcial por prefixo ainda era insuficiente porque o renderer wide continuava consultando `ChrTab`, `ChrTabM`, `R#2`, `R#25`, `R#26`, `R#27` e `odd-page` ao vivo durante a mesma linha
  - o `blueMSX/Common.h` usa esses elementos como estado efetivamente latched no inicio da linha para `SCREEN 6`, e nao como fonte live a cada trecho recomposto
- Novo corte aplicado:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/Wide.h`
  - `Makefile`
  - `src/Makefile`
  - `src/math.h`
  - `src/fmsx_math_shim.c`
- O que mudou no core local:
  - `LoopZ80()` agora congela por scanline o estado de display relevante para `SCREEN 6/7`: `ChrTab`, `ChrTabM`, `R#2`, `R#25`, `R#26`, `R#27`, `odd-page` efetivo e o `vscroll` ja latched
  - o renderer wide passa a usar esse snapshot em todos os calculos de source/page/coarse scroll/fine scroll/mask/virtual width, em vez de recomputar esses sinais ao vivo no meio da linha
  - o override de `vscroll` do render path tambem passou a cobrir `SCREEN 6/7`, nao apenas o caso especial legado de `SCREEN 4`
- Ajuste de build incorporado nesta rodada:
  - `Makefile` e `src/Makefile` passam a propagar `PREFIX64=$(CROSS)` para `src` e para os subbuilds do `Circle`, destravando o uso da toolchain autodetectada `aarch64-elf-`
  - como a toolchain Homebrew `aarch64-elf` e `--without-headers`, o projeto ganhou um `math.h` freestanding local e um shim minimo de `sin/log/log10/pow` para manter a build full-feature sem depender de `newlib`
- Build local validada:
  - `BUILD_BID=202604041430-issue238-screen6-line-latched-state`
  - `BUILD_ID=4FB0`
  - `BUILD_HASH=e298d4e-d03d3116b86dbc2bc49478da1ff60c3e769581b7`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware com a `4FB0`
  - responder apenas estes quatro pontos:
    - entra normal ou nao
    - a cadencia mudou ou nao
    - o `MASK` mudou ou nao
    - a tarja/pagina errada mudou ou continua no mesmo ponto

## Atualizacao incremental de 04/04/2026 - `4FB0` sem efeito visual e scroll fisico dobrado em `SCREEN 6/7`

- O round seguinte em hardware da `4FB0` confirmou ausencia total de efeito visual:
  - `MASK` continuou visivel
  - tarja/pagina errada continuou no mesmo ponto
  - a cadencia permaneceu lenta
  - nao apareceu leitura pratica de interlace
- A validacao do video local com `ffprobe`/frames reforcou o mesmo estado do overlay nos quadros uteis:
  - `SM:06`
  - `R2:3F`
  - `R25:03`
  - `R26/R27` variando, mas sem mudanca de sintoma
  - `EP:1`
  - `CE:0`
  - `TR:0`
- Leitura consolidada desta rodada:
  - o latch por scanline passou a congelar o estado correto por linha, mas o renderer wide ainda aplicava `R#26/R#27` em unidade logica
  - no `blueMSX`, o path `line512` de `SCREEN 6/7` opera no espaco fisico dobrado da linha, entao coarse scroll, fine scroll e left-edge mask precisam caminhar em dobro no scanout wide
  - isso explica por que a pagina errada, o `MASK` visivel e a cadencia percebida permaneceram identicos mesmo depois do latch do estado de display
- Novo corte aplicado:
  - `src/fmsx_local/Wide.h`
- O que mudou no renderer local:
  - `SCREEN 6/7` wide passam a usar coarse scroll e fine scroll em unidade fisica dobrada (`<< 1`) no scanout
  - o `left-edge mask` de `SCREEN 7` wide tambem passa a cobrir `16` pixels fisicos, como o `SCREEN 6`
  - a implementacao continua usando o snapshot por linha introduzido na `4FB0`; o corte desta rodada corrige apenas a unidade horizontal usada no compositor wide
- Referencia primaria usada no diff:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
- Build local validada:
  - `BUILD_BID=202604041620-issue238-screen67-physical-scroll`
  - `BUILD_ID=C079`
  - `BUILD_HASH=16da695-9edab52930a87d5a297e94ad32752c850250b185`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware com a `C079`
  - responder apenas estes quatro pontos:
    - entra normal ou nao
    - a cadencia mudou ou nao
    - o `MASK` mudou ou nao
    - a tarja/pagina errada mudou ou continua no mesmo ponto

## Atualizacao incremental de 04/04/2026 - `C079` fecha o split horizontal do logo

- O round seguinte em hardware da `C079` trouxe a primeira mudanca estrutural clara do bloco `SCREEN 6/7`:
  - o logo agora nasce corretamente dos dois lados da tela
  - os dois blocos passam a se mover em direcao ao centro, em vez de compor paginas evidentemente erradas
- A analise local do video confirmou esse ganho operacional:
  - o `MSX` deixou de surgir como pagina unica errada
  - o fluxo passou a mostrar metades coerentes (`MS...` e `...SX`) convergindo para o centro
  - os quadros uteis do overlay continuam em `SM:06`, `R2:3F`, `R25:03`, `EP:1`, `CE:0`, `TR:0`
- Leitura consolidada desta rodada:
  - o corte `C079` fecha operacionalmente a parte horizontal de `BL-004`
  - o compositor wide agora esta caminhando na unidade correta de scroll para o boot logo
  - o gargalo residual da branch saiu do page split horizontal e ficou reduzido ao bloco `BL-005`:
    - `left-edge mask` ainda visivel
    - sem leitura pratica de odd/even/interlace
    - cadencia global ainda lenta
- Consequencia pratica:
  - o proximo corte tecnico deixa de insistir em `R#26/R#27`/page walk
  - passa a mirar explicitamente o bloco conjunto `R#25`, odd/even e `R#9 interlace`

## Atualizacao incremental de 04/04/2026 - latch por scanline do estado de apresentacao hi-res

- O diff do `blueMSX` para este bloco ficou mais claro depois da `C079`:
  - o path wide local ja usava snapshot por linha para source/page/scroll
  - mas `RefreshBorder()` e `RefreshBorder512()` ainda compunham a apresentacao hi-res com `HiResMode`, `OddPage` e `InterlacedMode` ao vivo
  - o path narrow de bitmap ainda aplicava `odd-page` com o macro live legado do `fMSX`
- Leitura consolidada desta rodada:
  - o split horizontal de `BL-004` ja foi fechado pela `C079`
  - o residual de `BL-005` ficou reduzido ao estado de apresentacao que ainda nao era latched por linha:
    - `left-edge mask`
    - odd/even
    - `R#9 interlace`
- Novo corte aplicado:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/Wide.h`
- O que mudou no core local:
  - `LoopZ80()` agora congela por scanline tambem `R#9 bit2` (`FlipEvenOdd`) e `R#9 bit3` (`InterlaceON`)
  - `RefreshBorder()` e `RefreshBorder512()` passam a compor a borda hi-res com esse snapshot por linha, em vez de consultar `OddPage`/`InterlacedMode` ao vivo
  - `V9958BitmapLinePtr()` narrow passa a aplicar a pagina odd/even usando o mesmo snapshot por linha, alinhando o comportamento ao modelo do `blueMSX`
- Referencia primaria usada no diff:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
- Build local validada:
  - `BUILD_BID=202604041840-issue238-line-latched-interlace`
  - `BUILD_ID=3DE2`
  - `BUILD_HASH=ccca9df-15dc573ed2165b0105f68bcf50530bf6d2140fcb`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware com a `3DE2`
  - responder apenas estes cinco pontos:
    - entra normal ou nao
    - a cadencia mudou ou nao
    - o `MASK` mudou ou nao
    - a tarja/pagina errada mudou ou nao
    - apareceu alguma leitura pratica de odd/even/interlace ou nao

## Atualizacao incremental de 04/04/2026 - pivot para telemetria UART de frame

- O round seguinte em hardware da `3DE2` confirmou ausencia de efeito visual adicional:
  - entra normal
  - cadencia sem mudanca pratica
  - `MASK` sem mudanca pratica
  - sem leitura pratica de odd/even/interlace
- Leitura consolidada desta rodada:
  - o bloco horizontal de `BL-004` continua fechado pela `C079`
  - o corte de latch da apresentacao hi-res nao moveu o quadro observavel
  - antes de seguir com mais patches cegos de renderer, a branch precisa responder duas perguntas objetivas em campo:
    - `S#2 bit1`/`R#9` estao alternando como esperado durante o boot logo?
    - o host esta publicando cada frame do VDP ou esta ficando para tras no `PutImage()`?
- Novo corte aplicado:
  - `src/fmsx_host_stubs.c`
- O que mudou:
  - `PutImage()` ganhou uma trilha UART limitada aos primeiros `96` frames do boot logo em `SM:06` com `R25=03`
  - a linha `BL238` agora registra por frame:
    - frame publicado (`F`)
    - frame do VDP (`VF`)
    - lag entre eles (`LG`)
    - largura/altura do buffer apresentado (`W/H`)
    - `R9`, `S2`, `HI`, `IL`, `EO`
    - `R25/R26/R27`
- Build local validada:
  - `BUILD_BID=202604041950-issue238-bootlogo-uart-frame-trace`
  - `BUILD_ID=9A2C`
  - `BUILD_HASH=115717d-18b3d09b5e160bb49b3cc8d4ac93a34052592e1c`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - subir a `9A2C`
  - capturar o UART com `scripts/logserial.sh`
  - filtrar as linhas `BL238`
  - responder com o trecho bruto do log; o proximo corte depende desses dados, nao de outro video

## Atualizacao incremental de 04/04/2026 - correcao da janela do trace `BL238`

- A primeira captura da `9A2C` nao trouxe nenhuma linha `BL238` no UART.
- Causa raiz:
  - o trace estava limitado aos primeiros `96` frames globais do host
  - o boot logo entra bem depois dessa janela, entao o logger registrou apenas o startup do Pi
- Correcao aplicada:
  - `src/fmsx_host_stubs.c`
- O que mudou:
  - o trace `BL238` passou a contar os primeiros `96` frames do proprio boot logo (`SM:06` + `R25=03`)
  - a janela reinicia quando o boot logo sai de foco, em vez de depender do contador global de `PutImage()`
- Build local validada:
  - `BUILD_BID=202604041010-issue238-bootlogo-uart-frame-window`
  - `BUILD_ID=3271`
  - `BUILD_HASH=115717d-7d05a4e7374301c55f179bac7d204db268ebac16`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - subir a `3271`
  - repetir a captura de UART
  - devolver as linhas `BL238`; desta vez elas devem aparecer mesmo sem video

## Atualizacao incremental de 04/04/2026 - UART confirma host estavel e sobe `R#18` para latch por scanline

- O novo round de video + UART confirmou o quadro residual sem ambiguidade:
  - `MASK` segue visivel
  - cadencia segue lenta
  - nao ha leitura pratica de odd/even no boot logo
  - `BL238` continua com `F/VF=1:1`, `LG=000`, `CE/TR` praticamente mortos, `R25=03`, `R9=00`
  - `R26/R27` seguem alternando de forma regular, sustentando o split horizontal ja fechado
- Leitura consolidada desta rodada:
  - o host/presenter continua fora da lista curta de suspeitos
  - a umbrella `#82` permanece correta como trilha-base da `#238` e das issues filhas que ainda sairem deste video
  - o proximo estado vivo relevante do renderer em `SM:06` era `R#18` (`HAdjust`/`VAdjust`), que ainda era lido ao vivo no path de borda e posicionamento
- Novo corte aplicado:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/Wide.h`
- O que mudou no core local:
  - `LoopZ80()` agora congela por scanline tambem `R#18`
  - `RefreshBorder()` e `RefreshBorder512()` passam a usar `HAdjust`/`VAdjust` latched por linha, em vez das macros live derivadas de `VDP[18]`
  - o path wide de `SCREEN 6/7` deixa de consultar `R#18` ao vivo no posicionamento lateral/vertical da area visivel
- Referencia primaria usada no diff:
  - `third_party/fmsx/fMSX/MSX.h`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
- Build local validada:
  - `BUILD_BID=202604041530-issue238-r18-line-latched`
  - `BUILD_ID=9F81`
  - imagem `sha1 8c400743be364ac184c6f5ae7608b38451d3b2bc`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo consolidado:
  - sem `push`
  - a branch local segue trabalhando sob a umbrella `82-auditar-registradores-v9958`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware com a `9F81`
  - responder:
    - entra normal ou nao
    - o `MASK` mudou ou nao
    - a cadencia mudou ou nao
    - surgiu alguma leitura pratica de odd/even ou nao

## Atualizacao incremental de 04/04/2026 - foco em writes BIOS-side do logo

- O round seguinte de video + UART confirmou a necessidade de isolar um problema por vez:
  - `MASK` continua visivel, mas deixa de ser o principal alvo
  - odd/even + `R#9 interlace` passam a ser o foco imediato
  - a cadencia fica subordinada a esse bloco
- Leitura consolidada:
  - o `BL238` de quadro inteiro continua mostrando so o estado ja resolvido no `PutImage()`
  - isso nao responde se o BIOS muda `R#9/R#25/R#26/R#27` no meio do frame
- Novo corte aplicado:
  - `src/fmsx_host_stubs.c`
  - `src/fmsx_local/MSX.c`
- O que mudou:
  - `BL238` agora expõe `F9`, `I9` e `S2E` explicitamente
  - o core ganhou `BL238W`, um trace UART para writes de `R#2`, `R#9`, `R#18`, `R#25`, `R#26` e `R#27` durante a janela do boot logo
  - cada linha `BL238W` traz `frame`, `PC`, `scanline`, registrador, valor escrito e o estado relevante do VDP no momento
- Build local validada:
  - `BUILD_BID=202604041705-issue238-bootlogo-regwrite-trace`
  - `BUILD_ID=A1D1`
  - imagem `sha1 cdb45bca50c1a8ce3d914da414d938c15b7fd6d4`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `push`
  - a `#82` continua sendo a umbrella desta branch
- Proximo gate:
  - subir a `A1D1`
  - repetir o boot logo com UART
  - coletar `BL238` + `BL238W`
  - so depois decidir o proximo patch no bloco odd/even/interlace

## Atualizacao incremental de 04/04/2026 - ROM confirma `R#26/R#27` e a telemetria pivota para contadores

- A UART mais recente da trilha filha trouxe um corte importante:
  - a build testada e nova (`Compile time: Apr  4 2026 19:14:22`)
  - o `BL238` segue estavel com `F/VF=1:1`, `LG=000`, `R9=00`, `F9=0`, `I9=0`, `R25=03`
  - `R26/R27` continuam alternando durante a janela visivel do logo
  - ainda assim, continuam aparecendo zero linhas `BL238W`
- A leitura consolidada desta rodada ficou mais precisa:
  - o problema nao e mais "build antiga no SD"
  - o `BL238W` continua instrumentado no lugar errado para responder a mudanca de estado que o presenter ve
  - o problema prioritario da `#238` continua sendo fechar se o bloco odd/even/interlace realmente entra no fluxo do logo, sem reabrir heuristicas sobre `MASK`
- Evidencia ROM-side confirmada localmente com `z80dasm`:
  - a rotina `l0688h` escreve registradores VDP pelo caminho formal `out (99h),a` seguido de `reg|80h`
  - o prelude do `MSX2PEXT.ROM` passa por `c=1Ah` e `c=1Bh`, confirmando que `R#26` e `R#27` realmente entram no fluxo da ROM
  - a ausencia de `BL238W` deixou de ser interpretavel como "a ROM nao mexe nesses registradores"
- Novo corte local aplicado:
  - `src/fmsx_host_stubs.c`
  - o `BL238` agora passa a carregar tambem:
    - `L9/L25/L26/L27`: estado latched por scanline visto pelo renderer
    - `W9/W25/W26/W27`: contadores acumulados de writes nesses registradores desde o inicio da janela do logo
  - a intencao e fechar se:
    - os writes de `R#26/R#27` realmente sobem durante a janela do logo
    - o estado raw do presenter diverge do estado latched por scanline
- Build local validada:
  - `BUILD_BID=202604042040-issue238-bootlogo-write-counters`
  - `BUILD_ID=DC25`
  - imagem `sha1 1a0df1ea9732334bcc1678139b671250edf0d619`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo consolidado:
  - sem `commit`
  - sem `push`
  - a `#238` continua sendo a issue ativa; a `#82` permanece apenas como umbrella
- Proximo gate:
  - subir a `DC25`
  - repetir o boot logo com UART
  - reler `BL238` para fechar se `R#9/25/26/27` sobem por write real durante a janela do logo, antes de qualquer novo patch visual

## Atualizacao incremental de 04/04/2026 - origem real das writes de `R#26/R#27`

- A UART da `DC25` finalmente fechou o corte que faltava:
  - `W9=0` e `W25=0` durante toda a janela do logo
  - `W26/W27` sobem juntos de `0` ate `77`
  - `R26/R27` alternam exatamente junto desses contadores
  - `L26/L27` batem com `R26/R27`, entao o latched por scanline nao diverge do raw no quadro apresentado
- Leitura consolidada:
  - a janela visivel do logo nao esta sendo dirigida por reprogramacao de `R#9` nem de `R#25`
  - odd/even/interlace continuam sem evidencia pratica nessa janela
  - o problema vivo da `#238` fica mais estreito: origem e cadencia das writes de `R#26/R#27`
- Novo corte local aplicado:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_host_stubs.c`
  - o core agora guarda, por registrador, o ultimo:
    - `PC`
    - porta de origem (`99h`, `9Bh` ou fallback)
    - valor antigo/novo
    - frame
    - scanline
  - o `BL238` continua emitindo os contadores acumulados
  - quando `W26` ou `W27` avancam, a UART agora emite uma linha `BL238R` com a origem real dessas writes
- Build local validada:
  - `BUILD_BID=202604042120-issue238-r26r27-write-origin`
  - `BUILD_ID=6ED6`
  - imagem `sha1 7c002d49a8acfb3e64a192addcea0d50914ab429`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - `SCALE [MAX]` sem sentinel em `scale`

- A primeira variante de `SCALE [MAX]` abriu excecao sincrona ainda no boot em campo.
- Causa isolada:
  - o estado `MAX` estava vivendo como sentinel (`scale=500`) no mesmo campo numerico de `Scale`
  - isso contaminava clamp, persistencia e caminhos precoces do boot antes do primeiro blit
- Corte local aplicado:
  - `src/kernel.cpp`
    - remove o sentinel `kScalePercentMaxFit`
    - adiciona `m_ScaleMaxFitEnabled` como bit dedicado
    - `ComputeViewportBox()` passa a decidir o fit maximo por esse bit
    - `msxbarepi.cfg` passa a gravar `scale=<Nx>` e `scale_max=<0|1>`
    - o parser aceita `scale=500` apenas como migracao defensiva para `scale_max=1`
  - `src/tools/menu/combo_menu.h/.cpp`
    - o menu ganha `m_ScaleMaxFitEnabled` proprio
    - o ciclo `1x -> ... -> Nx -> MAX` continua, mas sem usar sentinel numerico
  - `src/tools/menu/combo_menu_items.h/.cpp`
    - o label `MAX` passa a depender do bit dedicado, nao do valor `500`
- Objetivo tecnico:
  - manter `MAX` no menu sem reabrir instabilidade de boot
  - preservar o contrato ja corrigido de mailbox-base fixa `256x243`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081700-issue238-scale-max-mode-separate` (OK)
  - `BUILD_ID=C624`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=408c7e1-264470e464c277a06f3167d2d70aa98255207937`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - flush continuo no presenter direto

- A nova rodada de performance do viewport mostrou um gargalo objetivo no path direto do presenter:
  - quando a mailbox fica grande (`MAX`, `HIRES`, interlaced), o blit direto no framebuffer fazia `FlushDCacheRect565()` linha por linha
  - isso implicava uma chamada a `FlushDCacheRange()` por scanline, e cada uma termina com `dsb ish`
  - em mailbox alta, esse custo domina o frame mesmo quando o blit em si ja esta otimizado por `runs`
- Corte local aplicado:
  - `src/kernel.cpp`
    - novo helper `FlushDCacheRect565Contiguous()`
    - o path de direct present agora faz um flush unico do span retangular tocado, incluindo o padding inter-row quando necessario
    - a intencao e trocar centenas de barreiras por frame por uma unica barreira por apresentacao
- Objetivo tecnico:
  - recuperar FPS em `MAX` / `HIRES` sem reabrir regressao visual
  - atacar o custo real do presenter, nao o renderer do VDP
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081745-issue238-direct-flush-span` (OK)
  - `BUILD_ID=DF41`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=408c7e1-83c25263f1ad41032eab7956b73267ce47726754`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - mailboxes grandes passam a preferir staging

- O A/B em campo trouxe um sinal muito forte:
  - com overlay de debug ligado, `SCALE [MAX]` ficava significativamente mais rapido
  - com debug desligado, o mesmo viewport degradava e dava a impressao de “limpeza”/tearing durante a apresentacao
- Leitura tecnica:
  - com debug ligado, o presenter ja caia no path de staging (`present buffer + SetArea()`)
  - com debug desligado, `MAX` ainda ia para `direct present` no framebuffer visivel
  - isso mostra que o problema nao era o VDP nem o `Scale`; era a politica errada de apresentacao para mailboxes grandes
- Corte local aplicado:
  - `src/kernel.cpp`
    - novo helper `ShouldPreferPresentArea()`
    - `MAX`, `HIRES` e viewport que ocupam >= 50% da tela passam a preferir o staging buffer mesmo com debug desligado
    - o path direto fica restrito aos viewports menores, onde ele ainda faz sentido
- Objetivo tecnico:
  - alinhar o comportamento observado do debug ON/OFF
  - eliminar o custo/artefato do `direct present` em mailboxes grandes
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081820-issue238-large-viewport-staging` (OK)
  - `BUILD_ID=4871`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=408c7e1-2dedfb9b7b57285b04f1c0e38c0469026560c5d2`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

# Atualizacao incremental de 08/04/2026 - `Scale` volta a controlar o viewport

- O viewport automatico introduzido nas ultimas rodadas foi identificado como suspeito de regressao de performance, inclusive em `720p`.
- Corte local aplicado:
  - `src/kernel.cpp`
    - `ComputeViewportBox()` voltou a usar `m_OverscanPercent`/`ScaleFactorFromPercent()` como fonte primaria do tamanho da mailbox
    - o `DEBUG` deixou de forcar mailbox compacta; o overlay agora convive com qualquer escala
    - `SetDebugOverlayEnabled()` deixou de resetar `Scale` para `1x`
  - `src/tools/menu/combo_menu_items.cpp`
    - o item `Scale` voltou a aparecer no menu `Settings`
    - o label volta a refletir `1x..Nx`
- Confirmacao de presenter:
  - nao ha limpeza total de tela a cada frame no path normal
  - `FillRect*` de tela inteira so acontece em `force_redraw`, `ClearPresentationSurfaces()` e mudanca de box
- Estado de fluxo:
  - sem `commit`
  - sem `push`

# Atualizacao incremental de 08/04/2026 - `Scale` baseado na mailbox logica

- Ajuste fino do contrato de `Scale`:
  - o label volta a ser `Nx`, sem sufixo `+`
  - `HIRES` deixa de derrubar o fator efetivo ao entrar em `512x*`
- Corte local aplicado:
  - `src/kernel.cpp`
    - `ComputeScaleMaxPercentForCurrentFrame()` e `ComputeViewportBox()` passam a usar altura logica da mailbox em `HIRES`
  - `src/tools/menu/combo_menu_items.cpp`
    - o label de `Scale` volta a exibir apenas `1x..Nx`
- Objetivo:
  - o fator de `Scale` passa a ser baseado no tamanho logico da mailbox, nao no frame fisico do emulador
- Estado de fluxo:
  - sem `commit`
  - sem `push`

# Atualizacao incremental de 08/04/2026 - mailbox-base fixa para o viewport

- Refinamento do contrato de `Scale`:
  - o viewport deixa de depender do tamanho do frame atual do backend
  - a caixa passa a nascer de uma mailbox-base fixa `256x243`
- Corte local aplicado:
  - `src/kernel.cpp`
    - `ComputeScaleMaxPercentForCurrentFrame()` passa a usar base fixa `256x243`
    - `ComputeViewportBox()` passa a escalar essa mailbox-base em qualquer modo, inclusive `HIRES`
- Objetivo:
  - impedir que `HIRES` achate a imagem ou reduza o fator efetivo de zoom ao trocar de resolucao
- Estado de fluxo:
  - sem `commit`
  - sem `push`

# Atualizacao incremental de 08/04/2026 - `SCALE [MAX]`

- O menu ganhou um estado explicito `SCALE [MAX]`.
- Corte local aplicado:
  - `src/kernel.cpp`
    - `kScalePercentMaxFit=500`
    - `ComputeViewportBox()` passa a usar fit maximo da mailbox-base quando `MAX` esta ativo
  - `src/tools/menu/combo_menu.cpp`
    - ciclo do item `Scale`: `1x -> 2x -> ... -> Nx -> MAX`
  - `src/tools/menu/combo_menu_items.cpp`
    - label do menu passa a exibir `MAX`
- Objetivo:
  - em `720p`, permitir preenchimento maximo da tela mesmo quando a escala inteira maxima fica limitada a `2x`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 (23:30 -03) - helper wide de sprites passa a seguir o envelope de `384` bytes do `blueMSX`

- A rodada mais recente de analise offline aprofundou o diff estrutural entre o helper local de sprites wide e `blueMSX/SpriteLine.h:colorSpritesLine()`.
- O desvio mais forte remanescente nao era mais `PAL/NTSC`, `R#9`, nem a hipotese rasa de `32 vs 64`:
  - o helper local ainda produzia a linha de sprites wide em buffers de `320` bytes, sem a margem real de `32 + 256 + 96` usada pelo `blueMSX`
  - isso deixava o caminho wide vulneravel a clipping/enderecamento incorreto em `early clock` e sprites que entram ou saem da area visivel
  - alem disso, o estado de `CC` (`ccColorMask / ccColorCheckMask`) ainda nao persistia por frame como no `blueMSX`
- Corte local aplicado:
  - `src/fmsx_host_stubs.c`
    - `fmsx_latch_color_sprites_line_wide()` passou a usar:
      - buffer de linha/collision em `384` bytes
      - gate de colisao equivalente ao `colChckBuf` do `blueMSX` (`32..287`)
      - persistencia de `CC` por frame (`g_fmsx_wide_cc_mask`, `g_fmsx_wide_cc_check_mask`)
      - composicao mais literal para `CC/OR` e colisao
    - o estado inicial de `CC` foi alinhado ao `blueMSX`: primeiro frame nasce com `ccColorMask = 0`
  - `src/fmsx_local/MSX.c`
    - `FmsxVDPLineColorSpritesLatched/Render` passaram de `320` para `384` bytes
  - `src/fmsx_local/Wide.h`
    - buffers temporarios wide (`ZBuf`) passaram para `384`
    - o consumo continua no miolo `+32`, como no `blueMSX`
- Consequencia pratica esperada:
  - o path wide deixa de simplificar agressivamente a margem e o estado de `CC`
  - a composicao do logo em `SCREEN 6/7` passa a ficar mais proxima do envelope real do `blueMSX`, especialmente nas faixas onde a camada preta ainda parecia entrar em fase errada
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052330-issue238-wide-sprite-384cc` (OK)
  - artefato: `artifacts/kernel8-issue238.img`
  - `sha1 de34715a3a517b1edbb496bb27d16fed951f1f8a`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - helper de sprites wide aproxima `colorSpritesLine()` do `blueMSX`

- O tempo total do boot ja ficou perto do alvo, mas o defeito visual remanescente mudou de foco:
  - `R9` segue em `00`
  - `R25` segue em `03`
  - o problema restante do logo ficou concentrado na composicao da camada de sprites wide, nao em `interlace`
- Corte local desta rodada:
  - `src/fmsx_host_stubs.c`
    - `FmsxLatchColorSpritesLine()` ganhou um helper wide proprio, inspirado em `blueMSX/SpriteLine.h:colorSpritesLine()`
    - o helper novo usa tabela de cor por linha, `early clock` e composicao `CC/OR`
    - o buffer visual wide deixa de depender do `ColorSprites()` generico do `fMSX`
    - sem side effects em `VDPStatus[0]`
  - `src/fmsx_local/Wide.h`
    - `RefreshLine6/7()` full-line passam a usar esse mesmo helper, unificando full-line e partial path wide
- Alvo semantico:
  - aproximar a camada de sprites wide do contrato de `blueMSX/Common.h + SpriteLine.h`
  - atacar o desfasamento visual restante do logo sem voltar para `MASK` nem para `R#9 interlace`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052015-issue238-wide-sprite-helper-unified` (OK)
  - `BUILD_ID=FEA0`
  - `BUILD_HASH=cc918b4-c7605f0e2b1c088a19bf757ce6e66eaf0e16ce73`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - callers de `S#2` deixam de colapsar pagina e a UART passa a medir bits/bordas

- O round seguinte de UART finalmente mostrou um problema da propria telemetria:
  - os `C0..C3` quentes apareciam como `3A93/3A8D/3BC8`
  - mas `3BC8` cai em tabela/string do `MSX2PEXT`, o que nao pode ser site real de `IN A,(99h)`
- Leitura pratica:
  - o histograma anterior ainda estava achatando callers diferentes por `& 0x3FFF`
  - isso podia misturar paginas/aliases e transformar PCs validos em offsets sem valor funcional para a trilha
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
    - o core preserva o PC completo dos callers de `S#2`
    - a normalizacao para offsets de ROM agora e usada apenas para classificar os helpers conhecidos (`2BE9`, `10DB`, `10E4`, `3640`, `3649`)
  - `src/fmsx_host_stubs.c`
    - o `BL238` ganhou contadores agregados do contrato de `S#2` durante o logo:
      - `B0/B1/B6`: quantas leituras vieram com `bit0`, `bit1` e `bit6` em `1`
      - `E0/E1/E6`: bordas `rise/fall` observadas nesses mesmos bits
- Consequencia pratica:
  - a proxima UART deixa de depender apenas de "quem leu `S#2`"
  - ela passa a dizer tambem se o logo esta queimando tempo em `CE` (`bit0`), em `parity` (`bit1`) ou em `VStart` (`bit6`)
- Build local validada:
  - `BUILD_BID=202604051525-issue238-s2-full-pc`
  - `BUILD_ID=40B5`
  - artefato: `artifacts/kernel8-issue238.img`
- Build local mais nova desta rodada:
  - `BUILD_BID=202604051610-issue238-s2-bit-edge-counters`
  - `BUILD_ID=78AE`
  - artefato: `artifacts/kernel8-issue238.img`
  - imagem `sha1 b1cd6286ec85af28988de713a89d5a4dbdb46e4e`
- Estado de fluxo:
  - sem `commit`
  - sem `push`
  - a `#238` continua ativa; a `#82` permanece apenas como umbrella
- Proximo gate:
  - subir a `6ED6`
  - repetir o boot logo com UART
  - reler `BL238` + `BL238R`
  - so depois decidir se o proximo patch entra no produtor das writes de `R26/R27` ou volta a algum ponto do renderer

## Atualizacao incremental de 05/04/2026 - `S#2 bit6` promovido ao proximo alvo offline

- A releitura da UART da `85F2`/`C724` manteve o mesmo contrato funcional do logo:
  - `R9=00`
  - `R25=03`
  - `R26/R27` entram por `0x99 @ 7BB2` e depois seguem no loop `0x9B @ 7A71/7A73`
  - `BL238S`: `AVG:016`, `MAX:028`, `CE:3`, `TR:0`, `W26/W27=77`
- O cruzamento com a `MSX2PEXT.ROM` refinou a leitura da issue:
  - no bloco principal do logo (`0x2A00..0x3300`), a ROM usa pesado `S#2 bit0` (`CE`) e wrappers de comando VDP
  - os waits por `S#2 bit6` aparecem em helpers BIOS fora dessa janela (`0x10D6` e `0x363B`)
  - isso desloca o gargalo mais provavel do "interlace visivel" para a sincronizacao vertical que cerca o boot ate o BASIC
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - `IE0/VBlank` agora sobem no **inicio** da primeira linha da borda inferior, alinhando o loop local ao `blueMSX`
  - o caminho antigo no ramo de HBlank ficou apenas como fallback defensivo
- Leitura tecnica:
  - antes deste corte, o core local ainda atrasava o edge de `VBlank`/`S#2 bit6` para o fim da primeira linha da borda inferior
  - isso podia alongar os waits BIOS-side por `S#2 bit6` mesmo com o logo visivel ja dirigido por `R26/R27`
- Build local validada:
  - `BUILD_BID=202604042320-issue238-vblank-line-start`
  - `BUILD_ID=59C0`
  - `BUILD_HASH=cc918b4-382ad7d1628e55605b3dac4dc32359c78b179015`
- Estado de fluxo:
  - sem `commit`
  - sem `push`
  - sem novo pedido de teste em hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - separar `S#2 bit6` de `drawArea` no prelude do frame

- A investigacao offline desta rodada refinou o corte anterior do `timingMode`: no `blueMSX`, `S#2 bit6` e `drawArea` nao sao equivalentes no inicio do frame.
  - `bit6` cai em `onVStart()`, antes da area visivel
  - o `timingMode` do command engine so muda em `onDrawAreaStart()`
- Isso deixa o proxy coarse `S#2 bit6 => drawArea` forte demais para a `#238`, porque ele ajuda no borde inferior, mas tambem empurra o bucket de timing para a janela pseudo-top-border em que o BIOS ainda enxerga `bit6=0` e o command engine deveria continuar off-screen.
- Ajustes locais aplicados:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status2_vr()` agora representa uma pseudo-top-border low na cauda do frame anterior, aproximando o `VStart` do `blueMSX` mesmo sem scanlines explicitas de borda superior no scheduler local
  - `src/fmsx_local/V9938.c`
    - `GetVdpTimingValue()` deixou de usar `S#2 bit6` como proxy de `drawArea`
    - o gate de timing voltou a seguir apenas a faixa visivel local (`ScanLine < 192/212`)
- Build local validada:
  - `BUILD_BID=202604050035-issue238-status2-vstart-drawarea`
  - `BUILD_ID=F5E4`
  - `BUILD_HASH=cc918b4-a87d0873ee713b999432fc518fc578ba3776f754`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`
  - sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - pseudo-`VStart` reduzido aos ultimos 40 ticks

- A comparacao offline seguinte apertou mais o mesmo bloco de `S#2`, agora mirando diretamente o threshold usado pelo `blueMSX`.
- Referencia concreta:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - em `readStatus()`, o `bit6` de `S#2` entra na janela pre-visivel quando `frameTime - ((firstLine - 1) * HPERIOD + leftBorder - 10) < 4 * HPERIOD`
  - isso equivale a abrir o `VStart` cerca de `40` ticks antes do inicio da area visivel
- O corte `AA06` ainda tratava a HBlank inteira da ultima linha como proxy dessa janela, o que continuava largo demais para os waits BIOS `10D6` / `363B`.
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_previsible_window_active()` agora so vale nos **ultimos 40 ticks VDP** da ultima scanline do frame anterior
  - `fmsx_vdp_status2_vr()` e a inversao live de `bit1` continuam ancoradas nessa janela curta
- Intencao tecnica:
  - aproximar o `S#2` visto pelos helpers BIOS do threshold real do `blueMSX`
  - reduzir a antecipacao artificial de `VStart`
  - seguir no eixo `cadencia/precisao do prelude`, sem voltar a mexer em `MASK`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051124-cc918b4`
  - `BUILD_HASH=cc918b4-63e76c3640998f4f26cbeeb883f77321caa9cfb1`
  - artefato: `artifacts/kernel8-issue238.img`
  - `sha1 artifacts/kernel8-issue238.img = 63e76c3640998f4f26cbeeb883f77321caa9cfb1`

## Atualizacao incremental de 05/04/2026 - telemetria expandida para o logo inteiro

- A UART da `899C` manteve o mesmo contrato da janela inicial do logo:
  - `R9=00`
  - `R25=03`
  - `R26/R27` entram primeiro via `0x99 @ PC 7BB2`
  - depois seguem no loop regular `0x9B @ PC 7A71/7A73`
- O recorte de `96` frames deixou de ser suficiente para uma trilha cujo boot ainda vai ate `F:004500`.
- Ajuste local aplicado:
  - `src/fmsx_host_stubs.c`
  - `BL238S` permanece no frame `96`
  - a UART agora tambem emite:
    - `BL238P` a cada `256` frames do logo
    - `BL238E` ao sair do logo
  - os novos resumos acumulam:
    - `S#2`
    - `S#7`
    - leituras totais da `0x99`
    - alem de `W26/W27`, `CE/TR` e `R9/R25/R26/R27`
- Build local validada:
  - `BUILD_BID=202604051059-cc918b4`
  - `BUILD_ID=6BDA`
  - `BUILD_HASH=cc918b4-adc26143e8312c896d9059b7200f36af044ccfb1`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`
  - sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - alinhar `S#2 bit1` ao `VStart` visto pelo BIOS

- O passo seguinte da comparacao offline com `blueMSX` e `MSX2PEXT` refinou o helper BIOS `363B`:
  - ele espera `S#2 bit6` fazer `high -> low`
  - e so sai quando `S#2 bit1` ja representa a paridade do novo frame
- No `blueMSX`, `vdpStatus[2] ^= 0x02` acontece em `onDisplay()`, antes da janela de `VStart` do frame seguinte. No core local, o toggle cru de `bit1` ainda ocorria apenas em `ScanLine == 0`.
- Como a rodada anterior passou a expor um pseudo-top-border low no fim do frame anterior, isso deixava o helper BIOS vendo `bit6=0` com a paridade ainda velha, exatamente o tipo de desfasagem que pode alongar a cadencia do boot sem mudar o renderer visivel.
- Ajuste local aplicado:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_status2_live()` agora inverte `bit1` apenas dentro dessa janela pseudo-top-border
  - o renderer e a logica de pagina visivel continuam ancorados no latch cru (`VDPStatus[2]`), evitando regressao no split horizontal ja corrigido
- Build local validada:
  - `BUILD_BID=202604050115-issue238-status2-bit1-vstart`
  - `BUILD_ID=390D`
  - `BUILD_HASH=cc918b4-0c702f3c57bfd15b8fe4fce6582ddeb8dd4f11a0`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`
  - sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - estreitar `VStart` para a janela real de 4 scanlines

- O refinamento seguinte no `blueMSX` apertou ainda mais a semantica de `S#2 bit6`: o `readStatus()` nao mantem `bit6=0` por toda a borda superior, mas apenas durante as primeiras `4` scanlines apos `VStart`.
- O corte anterior, ao mapear toda a pseudo-top-border para `bit6=0`, ainda era largo demais e podia mascarar o contrato real dos helpers BIOS no prelude do frame.
- Ajuste local aplicado:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_previsible_lines()` passou a modelar exatamente `4` scanlines
  - a janela pseudo-top-border usada por `fmsx_vdp_status2_vr()` e pela inversao live de `bit1` agora segue esse mesmo recorte
- Build local validada:
  - `BUILD_BID=202604050145-issue238-status2-vstart-4lines`
  - `BUILD_ID=2155`
  - `BUILD_HASH=cc918b4-753852f58a16c9ad346647f0c8b09f5593346817`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`
  - sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - `timingMode` do command engine alinhado a `drawArea`

- A comparacao offline com o `blueMSX` fechou um gap mais forte que `R#9 interlace`:
  - referencia: `timingMode = ((R#1 >> 6) & drawArea) | (R#8 & 2)`
  - core local: `GetVdpTimingValue()` ainda indexava as tabelas so por `R#1 bit6`
- Isso passou a ser candidato direto para a cadencia da `#238` porque:
  - a UART ja mostrou que `R#26/R#27` dirigem o movimento visivel
  - essas writes entram em `SL 192/193`, quando a area de desenho ja terminou
  - mesmo assim o command engine local ainda cobrava o bucket de timing de "screen on"
- Correcao local aplicada:
  - `src/fmsx_local/V9938.c`
  - `GetVdpTimingValue()` agora usa `S#2 bit6` (`VDPStatus[2] & 0x40`) como gate coarse de `drawArea`
  - linhas visiveis continuam no bucket lento de display ativo; borda/VBlank passam a usar o bucket off-screen como na referencia
- Build local validada:
  - `BUILD_BID=202604042355-issue238-command-timing-drawarea`
  - `BUILD_ID=66B1`
  - `BUILD_HASH=cc918b4-3483cb935ae92659fad3b1af41e85a21653dda4f`
- Estado de fluxo:
  - sem `commit`
  - sem `push`
  - sem novo pedido de teste em hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - `VStart` pseudo-local reduzido a 1 linha e janela BIOS do logo ampliada para o prelude real

- A rodada offline seguinte fechou dois ajustes mais fiéis ao `blueMSX`, ambos no eixo `BIOS/status/timing`, sem voltar a mexer em `MASK` ou em renderer cego.
- Primeiro ajuste: `S#2 bit6/bit1` no prelude do frame.
  - O `blueMSX` limpa `bit6` em `VStart`, mas a parte **pre-visível** dessa janela cabe apenas no fim da scanline imediatamente anterior à área visível; o restante dos `4 * HPERIOD` já cai no começo da própria área visível, que o core local já cobre via `drawArea`.
  - O recorte anterior projetava as `4` linhas inteiras para o fim do frame anterior, o que alongava artificialmente os waits BIOS `10D6` / `363B`.
  - Correção local aplicada:
    - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_previsible_lines()` passou de `4` para `1`
    - `fmsx_vdp_status2_vr()` e a inversão live de `bit1` continuam usando essa janela curta, agora muito mais próxima do `VStart` real do `blueMSX`
- Segundo ajuste: janela BIOS do boost local do boot logo.
  - O disassembly e a UART atuais já mostravam que o logo não nasce nos wrappers `2BE4/2E3E/3040/3299` apenas; há um prelude anterior em `0x2A0F..0x2C59` que prepara parâmetros e inicia comandos, com alias de banco em `0x7A0F..0x7C59`.
  - O corte anterior do boost ainda ignorava exatamente esse prelude real, embora a própria UART já mostrasse PCs em `7A71/7BB2`.
  - Correção local aplicada:
    - `src/fmsx_local/V9938.c`
    - `fmsx_msx2p_bootlogo_bios_timing_window()` agora cobre `0x2A0F..0x2C59` e o alias `0x7A0F..0x7C59`, preservando os demais ranges já usados na issue
- Build local validada:
  - `BUILD_BID=202604051028-cc918b4`
  - `BUILD_ID=899C`
  - `BUILD_HASH=cc918b4-098aa1e47b954d15e1eb0a07dd85d989ad5def45`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`
  - sem novo pedido de hardware nesta rodada

## Atualizacao incremental de 05/04/2026 - classificacao de `S#2` corrigida pelo retorno de `2BEF`

- A UART atual da `#238` fechou um problema da propria telemetria:
  - `S2:999`, `P99:999` e `HOTH:999`
  - `H2BE/H10L/H10H/H36H/H36L` todos em `0`
- Esse quadro nao significava que o boot logo deixou de passar por `2BE4/10D6/363B`; significava que a classificacao estava olhando o `PC` vivo do `IN A,(99h)`, ja dentro do helper comum `2BEF`.
- O disassembly local fecha a pilha correta:
  - `2BE4 -> call 2BEF` retorna em `2BE9`
  - `10D6 -> call 2BEF` retorna em `10DB`
  - `10DF -> call 2BEF` retorna em `10E4`
  - `363B -> call 2BEF` retorna em `3640`
  - `3644 -> call 2BEF` retorna em `3649`
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_s2_helper_slot()` deixou de classificar por `CPU.PC` puro
  - quando a leitura de `S#2` ocorre dentro do range `2BEF..2C02`, o core agora le o endereco de retorno em `CPU.SP` e classifica o helper pelo chamador real
- Consequencia pratica:
  - a proxima UART da `#238` deve finalmente separar `2BE4` dos waits `10D6/363B`
  - isso destrava a decisao seguinte entre continuar no timing do `CE` ou voltar aos waits BIOS-side de `S#2`
- Build local validada:
  - `BUILD_BID=202604051330-cc918b4`
  - `BUILD_HASH=cc918b4-84d015d9b31a90232469eb291a02cbea25e0f208`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - callers reais de `S#2` expostos na UART do logo

- O round seguinte da UART confirmou que a classificacao stack-based saiu do zero:
  - `H2BE=2`
  - `HOTH=999`
- Isso fecha duas coisas:
  - o ajuste pelo retorno em `CPU.SP` funcionou
  - `2BE4` nao e o helper dominante do logo inteiro; o grosso das leituras de `S#2` ainda vem de outros callers diretos de `2BEF`
- O video continua coerente com a leitura anterior:
  - split horizontal correto
  - sem leitura pratica de `R#9 interlace`
  - cadencia ainda sem melhora visivel
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_host_stubs.c`
  - o core agora mantem tambem um histograma de callers reais de `S#2`
  - a UART do boot logo passa a imprimir os `4` PCs mais frequentes (`C0..C3`) em `BL238S/BL238P/BL238E`
- Consequencia pratica:
  - a proxima UART deve dizer exatamente quais PCs dominam o polling de `S#2`
  - isso permite atacar o helper/quadro quente real sem inferencia cega por bucket `OTHER`
- Build local validada:
  - `BUILD_BID=202604051405-cc918b4`
  - `BUILD_HASH=cc918b4-f5f681f2f373d96007cb9902ed4febfd5cd0ac69`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - wait-state focal nos loops quentes de `S#2` do KANJIBASIC

- A leitura mais recente da UART fechou o quadro dominante do tempo total do boot logo:
  - `C0:7A91/999`
  - `C1:7A8B/999`
  - `C2:7BC6/982`
  - `R9=00`, `R25=03`, `R26/R27` continuam dirigindo apenas a animacao horizontal
- A disassembly offline do `KANJIBASIC.ROM` confirmou o papel desses sites:
  - `7A8B/7A91`: loop `S#2 bit6 high -> low`
  - `7BC6`: wait de `CE` apos os comandos do logo (`R46=70h/50h`)
- Leitura pratica:
  - o gargalo dominante desta issue continua no polling de `S#2/0x99`
  - `odd/even` e `R#9 interlace` saem do caminho critico da janela visivel do logo
  - continuar mexendo em `MASK` ou renderer sem atacar esse hot path nao deve mover o tempo total ate o BASIC
- Corte local aplicado:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status_wait_cycles()` agora injeta wait-state adicional **apenas** nos loops quentes do `KANJIBASIC`:
      - `7A8B/7A91` (`S#2 bit6`) recebem `+64` ciclos
      - `7BC6` (`CE`) recebe `+96` ciclos
    - o objetivo e aproximar a cadencia desses polls do modelo temporal que o `blueMSX` ja resolve via scheduler de tempo continuo, sem reintroduzir penalidade global em `0x99`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051505-issue238-kanjibasic-s2-wait` (OK)
  - `BUILD_ID=7B8D`
  - `BUILD_HASH=cc918b4-9560082c89264ea622ee6610d564d3fb0668bab4`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - telemetria de callers de `S#2` tornada monotônica

- A investigacao offline seguinte fechou um bug da propria UART da `#238`: os campos `C0..C3` ainda podiam fabricar callers quentes falsos porque os buckets de `FmsxVDPS2CallerCount[]` eram decadentes, enquanto o `BL238` consumia esses valores por delta contra um baseline capturado no inicio do logo.
- Evidencia objetiva:
  - a UART vinha mostrando `C0:3A8D/999`, `C1:3A93/999` e `C2:3BC8/982`
  - `3BC8` cai em tabela/string do `MSX2PEXT`, nao em codigo executavel
  - portanto o histograma estava contaminado e nao podia mais orientar cortes funcionais
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_note_s2_caller()` deixou de decrementar/reciclar buckets quando a tabela enche
    - callers de `S#2` agora ficam monotônicos, e o excesso vai para `FmsxVDPS2CallerOverflowCount`
    - leituras diretas de `0x99` passam a recuperar o endereco real da instrucao quando os bytes anteriores sao `DB 99`
    - o caller dinamico `2276 -> 2279` foi separado do bucket `OTHER`
  - `src/fmsx_host_stubs.c`
    - o `BL238` agora imprime `CO` (overflow dos callers)
    - `H227` passou a aparecer separado de `HOTH`
- Consequencia pratica:
  - a proxima UART da `#238` finalmente deve dizer se o hot path real de `S#2` esta em `2BE4`, `2279`, `10D6/10DF`, `363B/3644` ou no overflow residual
  - isso destrava a proxima comparacao offline contra o `blueMSX` sem voltar a patch visual cego
- Build local validada:
  - `BUILD_BID=202604051720-issue238-s2-monotonic-callers`
  - `BUILD_ID=2449`
  - `BUILD_HASH=cc918b4-3f66e91a1b1130856a1aa657931aca8e486a3182`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - `PC` de `0x99/0x9B` normalizado para o opcode real

- A rodada offline seguinte apertou mais um problema de observabilidade da `#238`:
  - o trace do logo ainda mostrava `PC=7A71/7A73/7BB2` como se fossem enderecos de instrucao
  - mas esses valores ainda eram `PC` pos-instrucao em `OUT/IN`, o que contaminava a leitura do prelude e empurrava a analise para offsets errados da ROM
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_set_write_context()` agora recupera o opcode real de writes em `0x99/0x9B` quando os bytes anteriores sao `D3 99` / `D3 9B`
    - `FmsxVDPLastPort99PC` passa a usar o opcode real de `DB 99` / `D3 99`
  - `src/fmsx_host_stubs.c`
    - o `BL238` continua imprimindo os mesmos campos, mas a proxima UART deve sair com `PC26/27` e `LastPort99PC` alinhados ao endereco da instrucao, nao ao endereco seguinte
- Efeito esperado:
  - eliminar de vez a ambiguidade entre `PC` real e `PC` pos-instrucao nos writes/reads que cercam o logo
  - permitir que a proxima comparacao offline com `blueMSX` seja feita sobre sites de opcode reais
- Build local validada:
  - `BUILD_BID=202604051805-issue238-s2-pc-normalized`
  - `BUILD_ID=161D`
  - `BUILD_HASH=cc918b4-24313ed7260ecb1f1ee345c41bca4bc8bdc96c42`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - retratacao do alias `7Axx -> 2Axx` e caller bruto na UART

- A rodada offline seguinte fechou um problema da propria leitura da `#238`:
  - o alias especial `7Axx/7Bxx -> 2Axx/2Bxx` ficou especulativo demais para continuar guiando os cortes funcionais
  - a UART continua fechando o caminho quente do logo em `R9=00`, `R25=03`, `R26/R27` e `S#2/0x99`, mas o alias `+0x5000` estava misturando caller bruto com interpretacao offline
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_normalize_s2_caller_pc()` voltou ao modelo conservador
    - a normalizacao fica restrita ao caso linear `0x4000..0x7FFF -> -0x4000`, usado apenas para buckets conhecidos
  - `src/fmsx_host_stubs.c`
    - `BL238I/R/S/E` passam a preservar `PC` bruto como fonte de verdade
    - `PC` de registradores VDP agora sai tambem com `L:` (offset linear simples)
    - a nova linha `BL238C` imprime os `3` callers quentes de `S#2` com:
      - caller bruto
      - caller linear simples
      - os `4` bytes reais lidos no endereco do caller
- Consequencia pratica:
  - o proximo round de UART passa a responder se `7Axx/7Bxx` vem de ROM linear, worker copiado ou outro bloco de runtime
  - isso evita abrir mais um corte funcional de `S#2` em cima de um alias nao provado
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051930-issue238-raw-pc-caller-bytes` (OK)
  - `BUILD_ID=FB98`
  - `BUILD_HASH=cc918b4-94e63358c8cf618cd7cf1905079b8d04eedcc577`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - `status0 bit5` passa a ser materializado por scanline

- A leitura offline mais forte desta rodada fechou um ponto que explica melhor o logo em passos de ~1 frame do que qualquer hipotese em `R#9 interlace`:
  - o worker `7A48` do `KANJIBASIC` escreve `R#17=1Ah` (indireto para `R26/R27`), le `status0` em `7A66/7A68` e espera `bit5=1` antes de cada par de writes em `0x9B`
  - no core local, `VDPStatus[0] bit5` ainda nascia quase todo no `CheckSprites()` de `ScanLine==192`
  - no `blueMSX`, a colisao de sprite que alimenta `status0 bit5` e atualizada por scanline em `SpriteLine.h`
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
    - novo cache por `frame + scanline` para colisao live de `status0`
    - `status0 bit5` agora pode ser materializado no proprio read path (`0x99`, `R15=0`) quando ha colisao na scanline corrente
    - a materializacao fica limitada a uma vez por linha, preservando o comportamento sticky ate a leitura limpar o latch
    - a leitura de `status0` passa a limpar `bit7/6/5` (`&= 0x1F`), alinhando esse ponto ao `blueMSX`
- Consequencia pratica esperada:
  - o loop `7A66/7A68` deixa de depender de uma colisao que surgia essencialmente uma vez por frame
  - a proxima validacao em hardware deve dizer se a cadencia do logo finalmente sai do regime de ~1 passo por frame
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051935-issue238-status0-live-readclear` (OK)
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_ID=7A50`
  - `BUILD_HASH=cc918b4-4beab8fa3ba4f8d9227da7aef57147335020167d`
- Estado de fluxo:
  - sem `commit`
  - sem `push`
# Atualizacao incremental de 05/04/2026 - Debug `Refresh [NTSC/PAL]` passa a forcar `R#9`

- Antes de seguir com a rodada visual da `BE3E`, foi corrigido um desvio do proprio menu de diagnostico: o item `Settings -> Refresh [NTSC/PAL]` so trocava `m_RefreshRateHz/g_refresh_hz`, sem mexer no estado efetivo do VDP.
- O overlay de debug sempre leu o estado real (`PALVideo`), entao o efeito em campo era enganoso: o pacing base mudava, mas `NTSC/PAL` no overlay nao.
- Corte local aplicado:
  - `src/fmsx_runtime.c/.h`: novo `fmsx_runtime_debug_force_refresh_hz()`
  - `src/kernel.cpp`: o menu de debug passou a usar esse caminho em vez de `fmsx_runtime_set_refresh_hz()`
  - em `MSX2/MSX2+`, o toggle agora escreve `R#9 bit1` via `VDPOut(9, ...)`, deixando `PALVideo`, `VPeriod` e o shadow BIOS coerentes imediatamente
- Build local validada:
  - `BUILD_BID=202604051930-issue238-debug-refresh-r9`
  - `BUILD_ID=1042`
  - artefato: `artifacts/kernel8-issue238.img`
- Sem `commit`. Sem `push`.

# Atualizacao incremental de 05/04/2026 - menu de debug passa a refletir `R#9` real em tempo real

- O ajuste anterior corrigiu o forcing do item `Refresh [NTSC/PAL]`, mas o menu ainda dependia de `m_RefreshRateHz`, que so era sincronizado no loop normal do backend.
- Corte local desta rodada:
  - `src/kernel.h/.cpp`
    - novo `SyncRefreshRateStateFromRuntime()`
    - o kernel agora consulta `fmsx_runtime_get_refresh_hz()` e `fmsx_runtime_get_frame_interval_us_exact()` tambem com o emulador pausado, antes do render do menu
- Efeito esperado:
  - o item `Standard` passa a espelhar `R#9 bit1` real mesmo com o menu aberto
  - se o software tiver alterado `PAL/NTSC` antes da pausa (ex.: `OUT` no BASIC), o menu ja abre mostrando esse estado efetivo
- Build local validada:
  - `BUILD_BID=202604052005-issue238-debug-refresh-live-menu`
  - `BUILD_ID=EA99`
  - artefato: `artifacts/kernel8-issue238.img`
  - `sha1 3f64b4be1e32f777e603190631d7d763644bdd7d`
- Sem `commit`. Sem `push`.

## Atualizacao incremental de 05/04/2026 (21:34 -03) - `readStatus()` passa a avancar o partial de `SCREEN 6/7`

- A UART mais recente continua fechando o mesmo contrato funcional do logo:
  - `R9=00`
  - `R25=03`
  - primeira write visivel de `R26/R27` em `0x99 @ PC 7BB0`, depois loop em `0x9B @ 7A71/7A73`
  - o producer do logo segue correto, mas o defeito visual residual continua sugerindo consumo/composicao atrasados
- Comparacao mais profunda contra o `blueMSX` encontrou um desvio estrutural mais forte que as hipoteses anteriores de `32/64` e snapshot:
  - em `blueMSX`, `readStatus()` chama `sync(vdp, now)`
  - esse `sync()` nao avanca so `CE/TR`; ele tambem empurra o partial refresh da linha atual
  - no core local, `SCREEN 6/7` ainda so avançavam o partial em writes de VDP e no fechamento do HBlank
  - como o logo passa a maior parte do tempo em polling de `0x99`, o partial wide podia ficar atrasado mesmo com o producer BIOS-side ja correto
- Corte local aplicado:
  - `src/fmsx_local/MSX.c`
    - novo helper `fmsx_vdp_sync_status_read_visual()`
    - o case `0x99` agora chama esse helper logo apos `fmsx_vdp_sync_before_status_read()`
    - em `SCREEN 6/7`, o helper usa `fmsx_vdp_screen67_line_offset_now()` para avancar `fmsx_vdp_render_screen67_partial()` tambem nos polls de status, aproximando o contrato do `blueMSX`
- Consequencia pratica esperada:
  - o partial wide deixa de depender apenas de writes `0x99/0x9B` e do fechamento em HBlank
  - a composicao visivel do logo deve poder acompanhar o polling quente de `0x99`, que hoje domina a janela do boot
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052230-issue238-statusread-partial-sync` (OK)
  - `BUILD_ID=120A`
  - `BUILD_HASH=35411b2-34714836c9db9a5a439d4dbf7adf77d8e4254c24`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 06/04/2026 - presenter do host passa a usar staging buffer com `WaitForVerticalSync()+SetArea()`

- A rodada visual da `#238` chegou num ponto em que os diffs de `SCREEN 6/7` deixaram de mover o sintoma residual, apesar de o tempo total do boot ja ter sido corrigido.
- A varredura frame-a-frame do video local mudou a hipotese dominante:
  - em pares consecutivos de frames do logo, a diferenca fica fortemente concentrada acima de uma linha horizontal e praticamente zera abaixo dela
  - isso e muito mais compativel com tearing do presenter do host do que com novo desvio em `R#9`, `PAL/NTSC` ou no producer `R26/R27`
- A comparacao estrutural contra o stack local do Pi reforcou essa leitura:
  - `src/kernel.cpp:BlitFmsxFrame()` ainda escrevia diretamente no framebuffer visivel (`CBcmFrameBuffer::GetBuffer()`) linha a linha
  - `third_party/circle/lib/screen.cpp` instancia `CScreenDevice` sem double buffering
  - o proprio Circle fornece o caminho de apresentacao sincronizada via `CBcmFrameBuffer::WaitForVerticalSync()` e `CBcmFrameBuffer::SetArea()`
- Corte local aplicado:
  - `src/kernel.h/.cpp`
    - novo staging buffer de viewport `m_FmsxPresentBuffer`
    - novo helper `EnsureFmsxPresentBuffer()`
    - `BlitFmsxFrame()` agora escala o viewport do emulador para esse staging buffer e, no path `RGB565`, apresenta a area por `WaitForVerticalSync()+SetArea()` em vez de escrever diretamente no framebuffer visivel
    - o caminho direto antigo fica apenas como fallback se a alocacao do staging buffer falhar
- Objetivo tecnico:
  - eliminar tearing de apresentacao como causa do defeito residual do logo
  - isolar de vez o que ainda for VDP-side do que e apenas artefato de blit no host
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604060130-issue238-vsync-presenter-staging` (OK)
  - `BUILD_ID=46FB`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=cc918b4-9e1d3c4058f9797f7e03579181852de82fa7e381`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 06/04/2026 - `status0` volta ao latch cru e `SCREEN 6/7` restaura o handoff `Y -> Y+1` da linha de sprites

- A varredura profunda contra o `blueMSX` fechou dois desvios estruturais mais fortes do que os ultimos microajustes visuais:
  - o core local ainda reintroduzia `status0 bit5` de forma **live** no read path de `0x99`, enquanto o `blueMSX` retorna apenas o latch cru de `status0` e limpa o byte em seguida
  - o pipeline local de sprites wide em `SCREEN 6/7` quebrava o handoff preparado-em-`Y` / consumido-em-`Y+1`, porque zerava `FmsxVDPLineColorSpritesValid` antes de copiar o buffer latched para o buffer de render da proxima scanline
- Comparacao semantica que sustentou o corte:
  - `blueMSX/VDP.c:readStatus()` nao re-sintetiza `bit5` de colisao a cada `IN (99h)`; ele devolve `vdpStatus[0]` e faz clear-on-read
  - `blueMSX/Common.h` + `SpriteLine.h` em `SCREEN 6/7 line512` preparam a linha de sprites no frame/scanline atual e consomem esse buffer apenas na scanline seguinte
  - no core local, essa combinacao errada explicava bem a janela de hardware em que o tempo total do boot ja estava correto, mas a composicao visual do logo ainda ficava “uma parte parada + outra ainda scrollando”
- Corte local aplicado:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status0_live()` passa a devolver o latch cru de `VDPStatus[0]`, sem reintroduzir `bit5` live durante o proprio read
    - `SCREEN 6/7` deixa de recapturar a linha futura de sprites no `rightBorder`
    - o inicio da scanline volta a copiar `FmsxVDPLineColorSpritesLatched -> FmsxVDPLineColorSpritesRender` antes de limpar o flag de validade, restaurando o handoff correto da linha preparada
  - efeito esperado:
    - `status0` fica semanticamente mais proximo do `blueMSX`
    - a linha wide de sprites preparada em `Y` volta a ser consumida de fato em `Y+1`, em vez de ser perdida ou recapturada cedo demais
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052355-issue238-status0-latched-sprite-handoff` (OK)
  - `BUILD_ID=B2B2`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=35411b2-a16530f4c81e5a7007aaaadaffc058aa138817b6`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - experimento de `Z80 Turbo [SLO]` a 50%

- Para testar a hipotese de cadencia do boot logo com CPU abaixo da base, o runtime agora ganhou um quarto perfil de turbo:
  - `NORM = 100%`
  - `PAN = 150%`
  - `MAX = 200%`
  - `SLO = 50%`
- O corte foi aplicado de forma consistente em:
  - `src/kernel.cpp`
  - `src/fmsx_runtime.c`
  - `src/fmsx_local/MSX.c`
  - `src/tools/menu/combo_menu.cpp`
  - `src/tools/menu/combo_menu_items.cpp`
  - `docs/debug-layer.md`
- Ajustes tecnicos:
  - `PAN` continua em `150%` da base (`~5.37MHz` sobre `3.579545MHz`)
  - o core local deixou de clamp-ar turbo em `>=100%` e passou a aceitar `50..300%`
  - o menu de pausa e o parser de settings agora aceitam `z80_turbo=3`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052245-issue238-turbo-slo-profile` (OK)
  - `BUILD_ID=93BC`
  - artefato `sha1 eda31e56a0a17a3b58295b3f7932291f96c1ae6a`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 06/04/2026 - A/B local `SCREEN 6/7` volta de `-1..33` para `0..32`

- Antes de fechar a `#238`, a trilha abriu um experimento controlado motivado por um sintoma em `ZANAC EX`: o placar parece ser sobre-escrito em uma scanline quando o jogo muda de screen entre linhas para separar viewport e HUD.
- Hipotese do A/B:
  - o contrato discreto `-1..33` introduzido para o partial `SCREEN 6/7` pode ter ficado bom para o boot logo do `MSX2+`, mas ainda desalinhado para softwares que alternam screen/registers no limite da scanline
  - vale medir localmente uma volta limpa ao modelo `0..32`, sem misturar outras mudancas
- Corte local aplicado:
  - `src/fmsx_local/MSX.c`
    - `FmsxVDPLineOffset67` volta a nascer em `0`
    - `fmsx_vdp_screen67_line_offset_now()` volta a produzir `0..32`
    - `fmsx_vdp_render_screen67_partial()` deixa de usar o sentinela `33`
    - o fechamento da linha em HBlank volta a chamar o partial com `32`
- Objetivo tecnico:
  - produzir um A/B isolado do contrato de granularidade do partial renderer wide
  - medir se o sintoma do `ZANAC EX` aponta para um problema real de `-1..33` vs `0..32`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604061000-issue238-screen67-back-to-32` (OK)
  - `BUILD_ID=CA87`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=35411b2-f25f019fd7a4b314275b86fcc018b43b9f39114b`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 06/04/2026 - limpeza final da `#238` para PR

- Com a validacao em hardware confirmando o boot logo do `MSX2+` perfeito em todos os modos de turbo na build `B2B2`, a trilha abriu apenas um ultimo A/B com `0..32` por causa de um sintoma separado em `ZANAC EX`.
- Esse A/B nao moveu nada visualmente; por decisao da issue, ele foi descartado e o contrato do partial `SCREEN 6/7` voltou para o estado estavel `-1..33`.
- Tambem ficou decidido que a branch deve ser fechada limpa:
  - telemetria UART do boot logo (`BL238*`/`BL238W`) silenciada
  - perfil experimental `Z80 Turbo [SLO]` removido do runtime/menu
- Corte local aplicado:
  - `src/fmsx_local/MSX.c`
    - restaurado o contrato estavel `-1..33` do partial `SCREEN 6/7`
    - `BL238W` passa a no-op
  - `src/fmsx_host_stubs.c`
    - bloco de emissao `BL238I/R/S/P/E/C` desativado
  - `src/fmsx_runtime.c`
    - runtime volta a aceitar apenas `NORM/PAN/MAX`
  - `src/kernel.cpp`
  - `src/tools/menu/combo_menu.cpp`
  - `src/tools/menu/combo_menu_items.cpp`
    - menu/runtime deixam de expor `SLO`
  - `docs/debug-layer.md`
    - `T` volta a documentar apenas `OFF/PAN/MAX`
- Estado tecnico final da issue:
  - boot logo `MSX2+` correto visualmente e no tempo total
  - sem dependencia do pacing do Z80 para ficar correto
  - split horizontal preservado
  - `MASK` corrigido
  - A/B `0..32` descartado para tratar `ZANAC EX` em issue propria depois
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604061030-issue238-clean-pr` (OK)
  - `BUILD_ID=1911`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=35411b2-0b9ac33eedb8c6e0f3b5a6c34eeca8d34879b13a`
- Estado de fluxo:
  - pronto para `commit`
  - pronto para `push`

## Atualizacao incremental de 06/04/2026 - follow-up residual foi separado para a milestone de minor fixes

- Com o boot logo do `MSX2+` estabilizado, os residuos menores deixaram de bloquear a `#238`.
- Foi aberta a issue:
  - `#242 [P2][BUG] UNKNOWN REALITY: lentidão residual de áudio + ZANAC EX: linha do placar`
- Milestone:
  - `#17 FIX: Minor Issues / Other Issues`
- Objetivo da separacao:
  - manter a `#238` focada no fechamento do boot logo
  - tratar depois, em trilha menor, dois follow-ups que nao reabrem o nucleo principal do problema:
    - lentidão residual de áudio no demo `UNKNOWN REALITY`
    - sobrescrita de uma linha do placar no `ZANAC EX`

## Atualizacao incremental de 07/04/2026 - presenter `HIRES` estava tecendo duas vezes

- A rodada local seguinte confirmou um desvio estrutural no presenter do host, maior do que as hipoteses recentes de `VDP`: em `HIRES_PROGRESSIVE`, o buffer ja chega pretecido/intercalado do backend em [src/fmsx_host_stubs.c](/Users/sandersouza/Developer/msxbarepi/src/fmsx_host_stubs.c), mas [src/kernel.cpp](/Users/sandersouza/Developer/msxbarepi/src/kernel.cpp) ainda tratava esse frame como se precisasse de uma segunda tecida.
- Efeito pratico desse desvio:
  - perda do efeito visual de interlace/odd-even em `HIRES`
  - mailbox `HIRES` ficando verticalmente esticada por usar `logical_height` em vez da altura fisica do buffer
  - custo extra no presenter por misturar pares de linhas em cada frame
- Corte local aplicado:
  - [src/kernel.cpp](/Users/sandersouza/Developer/msxbarepi/src/kernel.cpp)
    - remove o path de mix vertical `BuildWeavedHiResLine565()` do blit
    - volta a mapear `HIRES` usando a altura fisica real do buffer vindo do backend
    - restaura a regra de viewport `4:3` para `HIRES` fora do debug
    - no debug, `HIRES` volta a usar `src_width/src_height` fisicos, em vez de reduzir pela metade a altura logica
- Leitura tecnica:
  - `HIRES_PROGRESSIVE` agora passa a ser tratado como buffer fisico pronto, o que aproxima o presenter local do contrato observado no `blueMSX`: o framebuffer carrega estado de interlace/double-width, mas o presenter nao deve reinterpretar o frame como se precisasse tecer campos de novo.
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604071700-issue238-hires-no-second-weave` (OK)
  - `BUILD_ID=1F9B`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=35411b2-dda9b09e6506fb4c6c6d756335ecfd70ba2ffde8`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - regressao do `DEBUG` em `HIRES` foi isolada no box da mailbox

- O reteste em campo do corte `1F9B` mostrou que a leitura estrutural da tecida dupla estava correta, mas a rodada abriu uma regressao especifica do `DEBUG`:
  - `HIRES` passou a ficar verticalmente esticado
  - o FPS medio caiu para ~29.4
- O desvio ficou concentrado no presenter do menu/overlay:
  - em [src/kernel.cpp](/Users/sandersouza/Developer/msxbarepi/src/kernel.cpp), o box compacto do `DEBUG` passou a usar `src_width/src_height` fisicos em `HIRES`
  - isso manteve o blit completo correto, mas fez a mailbox de debug nascer alta demais e desativou o ganho esperado de viewport compacto
- Corte local aplicado:
  - [src/kernel.cpp](/Users/sandersouza/Developer/msxbarepi/src/kernel.cpp)
    - o presenter continua tratando o frame `HIRES_PROGRESSIVE` como buffer fisico pronto
    - mas o box de `DEBUG` volta a usar `logical_width/logical_height` do backend para calcular a mailbox
    - o blit continua lendo o buffer fisico completo, sem tecer de novo o frame
- Objetivo tecnico:
  - preservar o ajuste estrutural do presenter `HIRES`
  - corrigir apenas a regressao de mailbox/viewport do modo `DEBUG`
  - recuperar FPS e proporcao sem reabrir a tecida dupla
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081130-issue238-hires-debug-logical-box` (OK)
  - `BUILD_ID=69E2`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=35411b2-47d574d199f84c7c87622570d18b69e8fbe3149c`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - rollback do ramo experimental de presenter `HIRES`

- O aprofundamento seguinte confirmou que o ramo experimental de presenter `HIRES` nao estava melhorando a issue e so acumulava regressao:
  - `HIRES` verticalmente esticado
  - queda geral de FPS quando a mailbox preenchia a tela
  - aumento de complexidade no presenter sem efeito pratico positivo em campo
- Decisao tecnica da rodada:
  - descartar o ramo de metadata/presenter como path ativo
  - restaurar o contrato estavel de viewport/blit do branch em [src/kernel.cpp](/Users/sandersouza/Developer/msxbarepi/src/kernel.cpp)
  - manter o plumbing de `EmulatorBackendVideoPresentation` apenas inerte/local, sem participaçao no path ativo
- Corte local aplicado:
  - [src/kernel.cpp](/Users/sandersouza/Developer/msxbarepi/src/kernel.cpp)
    - `ComputeViewportBox()` volta ao contrato estavel do branch
    - `BlitFmsxFrame()` deixa de usar `EmulatorBackendVideoPresentation` no path ativo
    - `HIRES` volta a seguir o mapeamento vertical e o viewport anteriores ao ramo experimental
- Objetivo tecnico:
  - recuperar o baseline estavel de FPS/geometria
  - parar de queimar rounds de hardware em cima de um ramo que ja se provou regressivo
  - retomar a investigacao de `HIRES` a partir do baseline limpo, nao a partir de uma mistura de presenter + metadata
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081215-issue238-presenter-rollback-stable` (OK)
  - `BUILD_ID=4742`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=35411b2-c6f9c244c5cf5d4546b3313eecf626cc3523ace3`
- Estado de fluxo:
  - sem `commit`
  - sem `push`
# Atualizacao incremental de 06/04/2026 - UX de Save/Load + viewport pixel-perfect

- Antes do fechamento da `#238`, a branch recebeu dois ajustes de UX pedidos em campo:
  - `Save State` / `Load State` via menu `F12` agora executam e fecham o menu imediatamente
  - o viewport padrao do emulador deixou de usar fit proporcional e passou a usar degraus inteiros reais (`pixel-perfect`) no modo `Standard`
- Corte aplicado em:
  - `src/kernel.cpp`
    - `ComboMenuActionSaveState` / `ComboMenuActionLoadState` agora chamam `ExitPauseForBackendAction()` antes de enfileirar o save/load
    - `ComputeViewportBox()` deixa de derivar a mailbox de um fit `4:3` proporcional no modo `Standard`
    - o viewport passa a usar largura/altura reais do frame e fatores inteiros exatos (`1x..6x`)
  - `src/tools/menu/combo_menu.cpp`
    - `SetMaxScalePercent()` passa a aceitar `200` como menor degrau valido
  - `src/tools/menu/combo_menu_items.cpp`
    - o item `Scale` passa a refletir a nova semantica real: `1x` no menor degrau e `2x..6x` nos demais
  - `docs/debug-layer.md`
    - documenta o auto-fechamento do menu em `Save/Load`
    - documenta que `Standard` agora usa escalas inteiras reais e que `Widescreen` continua stretch por design
- Semantica nova de escala:
  - `Standard` + `Scale [1x]` = frame nativo, sem fit proporcional
  - `Scale [2x..6x]` = multiplos inteiros exatos do frame
  - `Widescreen [ON]` continua fora do contrato `pixel-perfect`
- Build local validada:
  - `BUILD_BID=202604061130-issue238-menu-state-pixelperfect`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - `DEBUG [MAX/MIN/OFF]`

- O overlay de debug deixou de ser binario e passou a operar em tres estados:
  - `MAX`: overlay completo
  - `MIN`: overlay compacto de 3 linhas
  - `OFF`: overlay desligado
- O `F11` e `Settings -> Debugger` agora ciclam `MAX -> MIN -> OFF -> MAX`.
- O modo `MIN` foi reduzido a:
  - `TXTDBG BUILD:XXXX CPU FREQ:<MHz do ARM>`
  - `DFS:<NTSC/PAL> FPS:<fps atual>`
  - `Screen:<scr_mode> Mode:<Normal/Hires/Interlaced>`
- Corte local aplicado em:
  - `src/kernel.cpp`
  - `src/kernel.h`
  - `src/tools/menu/combo_menu.h`
  - `src/tools/menu/combo_menu.cpp`
  - `src/tools/menu/combo_menu_items.h`
  - `src/tools/menu/combo_menu_items.cpp`
  - `src/tools/locale/combo_locale.h`
  - `src/tools/locale/combo_locale_pt.cpp`
  - `src/tools/locale/combo_locale_en.cpp`
  - `src/tools/locale/combo_locale_es.cpp`
  - `docs/debug-layer.md`
- Persistencia:
  - `msxbarepi.cfg` passa a gravar `debugger=<0|1|2>` (`OFF/MAX/MIN`)
  - o valor legado `debugger=1` continua significando overlay ligado, agora como `MAX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081950-issue238-debug-max-min-off` (OK)
  - `BUILD_ID=07FD`
  - `BUILD_HASH=408c7e1-e101539120147063c7d54b9a96861d31cfc6afb9`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - presenter grande migra para framebuffer virtual 2x + page flip local

- A investigacao de performance do viewport/mailbox contra o Circle fechou que o ganho real nao viria de uma API 2D nova, e sim de usar melhor o `CBcmFrameBuffer`:
  - `SetArea()` ja pode usar DMA por `SCREEN_DMA_BURST_LENGTH`
  - `WaitForVerticalSync()` + `SetVirtualOffset()` permitem page flip real
  - o gargalo do projeto era que o `CScreenDevice`/`CTerminalDevice` do Circle escreve sempre na pagina base, sem pagina traseira utilizavel pelo kernel
- Para sair disso sem tocar em `third_party/circle`, a branch ganhou um wrapper local de tela:
  - `src/combo_screen_device.h`
  - `src/combo_screen_device.cpp`
- Estrutura nova:
  - `CComboScreenDevice` encapsula `CBcmFrameBuffer` com `virtual height = 2x`
  - `CComboBackBufferDisplay` implementa um `CDisplay` local que escreve sempre na pagina traseira
  - `CTerminalDevice` passa a operar sobre esse `CDisplay` local, preservando overlay/menu/UART-screen text no back buffer
  - `CGfxTextBoxRenderer` passa a ler/escrever explicitamente em `draw buffer` / `visible buffer`
- Integracao no kernel:
  - `src/kernel.h`
  - `src/kernel.cpp`
  - `src/tools/render/gfx_textbox.h`
  - `src/tools/render/gfx_textbox.cpp`
  - `src/Makefile`
- Mudanca funcional:
  - `BlitFmsxFrame()` deixa de apresentar o frame no meio do proprio blit
  - o viewport do emulador passa a desenhar direto na pagina traseira
  - o flip de pagina passa a acontecer no fim do loop, apos blit + overlay + menu + rotor
  - `ClearPresentationSurfaces()` deixa de depender de `SetArea()` e limpa as duas paginas do framebuffer virtual
- Motivacao tecnica:
  - alinhar o path grande (`MAX`, `HIRES`, interlaced) ao contrato de page flip real do Circle
  - remover a copia extra do presenter grande antes de considerar qualquer salto maior para VC4/EGL/DispmanX
  - manter `third_party` intacto e reduzir o delta ao menor wrapper local possivel
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-6e9081008e790c99d3d5e348578e383e9b59d6b2`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - correção do handoff front/back page no page flip local

- O primeiro corte do `combo_screen_device` compilou e deixava UART/audio/input vivos, mas sem video em campo.
- A causa ficou no proprio handoff do framebuffer virtual 2x:
  - depois do primeiro `flip`, a nova `draw page` nascia vazia
  - o loop continuava desenhando `rotor`/overlay na pagina traseira e apresentando essa pagina sem o frame anterior
  - isso fazia o presenter alternar para paginas quase pretas mesmo com a emulacao ativa
- O corte local em `src/combo_screen_device.cpp` corrige esse contrato:
  - `SetVirtualOffset()` passa a usar a altura fisica do framebuffer
  - depois do `flip`, a pagina que vira `draw page` e semeada com o conteudo da nova pagina visivel
- Efeito esperado:
  - o emulador deixa de perder o frame anterior entre flips
  - overlay/menu/rotor voltam a desenhar incrementalmente sobre uma base valida
  - o page flip local deixa de produzir “audio e input vivos, mas sem video”
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-6e9081008e790c99d3d5e348578e383e9b59d6b2`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - correção da geometria zero do `CTerminalDevice` no wrapper local

- A telemetria seguinte do presenter (`PRES BOOT` / `PRES LOOP`) mostrou que o problema remanescente nao era mais o `flip`: o loop inteiro ficava com `dirty=0`, inclusive depois do `first blit`, do `rotor` e do overlay.
- A causa estrutural estava em `src/combo_screen_device.cpp`:
  - `CComboBackBufferDisplay::GetWidth()/GetHeight()` chamam `owner->GetWidth()/GetHeight()`
  - durante `CTerminalDevice::Initialize()`, `m_pTerminal` ja existe, mas ainda reporta `0x0`
  - o owner devolvia essa geometria zero para o proprio terminal, que passava a nascer com largura/altura `0`
- Efeito em campo:
  - menu `F12`, overlay `F11` e texto de tela nunca chegavam a desenhar
  - `Rotor()` e qualquer write incremental eram descartados por bounds check
  - o blit do viewport tambem podia degradar para `dst=0`, mantendo o presenter com `dirty=0`
- O corte local corrige isso:
  - `GetWidth()/GetHeight()` so retornam os valores do terminal quando eles ja sao `>0`
  - antes disso, o wrapper cai de volta para `CBcmFrameBuffer::GetWidth()/GetHeight()`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-ec1dc9dcde51a05ffca6fd5c949a2192a03cbf8c`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - viewport grande deixa de copiar o frame inteiro a cada flip

- Depois da volta do video, a medicao em campo mostrou o custo dominante do presenter novo:
  - `1x / Screen 7 / Hires ~= 48fps`
  - `2x / Screen 7 / Hires ~= 40fps`
  - `MAX / Screen 7 / Hires ~= 8fps`
- A causa estava no handoff entre paginas do `combo_screen_device`:
  - depois de cada `flip`, o wrapper ainda copiava a tela dirty inteira da pagina visivel para a nova pagina traseira
  - em viewport grande isso mantinha um `memcpy` de frame quase cheio a cada ciclo
- O corte local atual em `src/combo_screen_device.h/.cpp` muda a politica:
  - viewport grande (`dirty >= 25%` da pagina) deixa de copiar a area no fim do `flip`
  - a pagina traseira passa a ser re-semeada sob demanda (`EnsureBackPageSeeded()`) apenas quando houver escrita incremental sem novo frame completo
  - viewport pequeno continua copiando apenas o retangulo `dirty`
- Efeito esperado:
  - `1x/2x/MAX` deixam de pagar copia grande por frame no page flip
  - overlay/menu/rotor continuam corretos porque a copia integral da pagina traseira so acontece quando realmente necessaria
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-dd6a68c4b83f824f4f8a092ca3e0ea6617f3109f`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - presenter local passa a operar em single-buffer por padrão

- A rodada seguinte ainda reforcou a suspeita do usuario: o presenter parecia usar a pagina errada e o custo estrutural do double buffer seguia alto mesmo depois de reduzir a copia do handoff.
- O corte local atual simplifica a arquitetura:
  - `src/combo_screen_device.*` passa a operar em single-buffer por padrao (`m_bPageFlipEnabled=FALSE`)
  - `GetDrawPageBase()` e `GetVisiblePageBase()` convergem para a pagina `0`
  - `PresentIfDirty()` deixa de fazer `WaitForVerticalSync()+SetVirtualOffset()` nesse modo e passa a atuar apenas como flush/commit do retangulo dirty
  - o plumbing do wrapper double-buffered permanece no codigo, mas inerte
- Motivacao:
  - remover o risco de apresentar a pagina errada
  - eliminar o custo estrutural do page flip no caminho principal do viewport/mailbox
  - preservar o wrapper local para reativacao futura, se um novo presenter double-buffered fizer sentido
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-565c8c8561d4e9b190b2199417d5baa9afff76cb`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - `Scale` volta a ser puramente numerico

- A rodada seguinte abandonou de vez o `Scale [MAX]`.
- O corte local atual restaura o contrato simples:
  - o menu volta a exibir apenas `1x`, `2x`, `3x`, `4x` e assim por diante
  - `src/kernel.cpp` deixa de tratar `m_ScaleMaxFitEnabled` como estado funcional do viewport
  - `src/tools/menu/combo_menu.cpp` deixa de ciclar para `MAX` no item `Scale`
  - `src/tools/menu/combo_menu_items.cpp` volta a renderizar apenas labels numericas
  - `msxbarepi.cfg` volta a gravar somente `scale=<Nx>`
- Compatibilidade:
  - `scale=500` ou `scale_max=1` ainda sao aceitos na leitura e migram para o maior fator discreto valido da resolucao atual
- Efeito esperado:
  - `Scale` volta a ser previsivel e discreto
  - o viewport deixa de ter qualquer modo especial fora da sequencia numerica
  - o comportamento entre UI, runtime e persistencia volta a ser uniforme
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-7788bae85726a25f5460d5ff92033899bdcbce84`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - fast path de escala inteira exata para o presenter

- O proximo gargalo local da `#238` apareceu no A/B do usuario em `1080p + 4x`, onde o viewport numerico ficou funcional, mas ainda caiu para ~`50fps`.
- A causa estava em `src/kernel.cpp`:
  - o presenter ja tinha um fast path dedicado apenas ao caso fisico `2x`
  - `1080p + 4x` em modo normal e varios casos `HIRES` fisicos exatos continuavam caindo no mapper generico `xmap/ymap`
- O corte local atual generaliza esse fast path:
  - `BlitLineExpand2xRgb565NoDim()` foi substituido por `BlitLineExpandNxRgb565NoDim()`
  - `BlitFmsxFrame()` agora detecta qualquer escala fisica inteira exata (`dst = src * N`, com `N >= 2`) quando `scanlines == OFF`
  - nesses casos, o presenter expande horizontalmente por `FillRun565()` e replica verticalmente por `memcpy`, evitando o custo do mapper generico
- Objetivo:
  - recuperar `1080p + 4x` no path numerico
  - beneficiar tambem `HIRES` quando o frame fisico cair em um multiplo inteiro exato
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-74fb1d5011cb5a41e7f565e24a441b5aff386d39`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - flush do dirty rect deixa de varrer padding invisivel

- A rodada seguinte da `#238` mostrou que `1080p + 4x` ainda seguia perto de `52fps`, mesmo depois do fast path de escala inteira exata.
- A causa nova ficou no wrapper single-buffer em `src/combo_screen_device.cpp`:
  - no modo sem page flip, `PresentIfDirty()` ainda flushava o dirty rect como um span contiguo unico entre a primeira e a ultima linha
  - isso incluia todo o padding lateral fora da mailbox entre cada linha do viewport
  - em `1080p + 4x` (`1024x972` dentro de `1920x1080`), esse flush acabava varrendo quase `1.87x` o viewport util
- O corte local atual introduz `ComboFlushDCacheRect565()`:
  - flush contiguo apenas quando o retangulo ocupa a largura inteira do pitch
  - caso contrario, flush linha a linha apenas na largura real da mailbox
- Objetivo:
  - reduzir o custo estrutural do presenter single-buffer em viewports grandes centralizados
  - recuperar desempenho em `1080p + 4x` sem reabrir page flip ou mudar a geometria
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-ea4c20eb3135434e806ab2f4f874f3f12de1704a`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 08/04/2026 - resíduo de `1080p + 4x` desmembrado para minor issue

- Depois das ultimas rodadas locais e do A/B em hardware, a `#238` ficou funcionalmente estabilizada:
  - boot logo do `MSX2+` correto
  - presenter local estavel
  - `Scale` novamente numerico e previsivel
- O único resíduo remanescente validado em campo ficou de performance:
  - em `1080p + 4x`, `HIRES/interlaced` ainda roda perto de `~53 FPS`
  - isso nao bloqueia mais o objetivo funcional da `#238`
- Decisao operacional:
  - desmembrar esse residual para a milestone `m17` como follow-up de baixa prioridade
  - a `#238` fica pronta para consolidacao/fechamento assim que a issue minor estiver publicada e sincronizada
