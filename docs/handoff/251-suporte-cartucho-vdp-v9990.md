# Handoff Persistente da Branch 251-suporte-cartucho-vdp-v9990

Ultima atualizacao: 19/04/2026 (pausa/checkpoint para main)

## Atualizacao 19/04/2026 - pausa da trilha e desinstrumentacao UART

- A trilha `#251` foi deixada em checkpoint para merge local em `main`, sem fechar a issue e sem remover a branch.
- A telemetria UART do `V9990/GFX9000` (`G9*`) foi desligada por padrao para reduzir custo de runtime e ruido na UART:
  - macro: `MSXBARE_V9990_UART_TRACE`
  - default: `0`
  - a macro tambem controla o default de `MSXBARE_V9990_PHASE_TRACE_UART`
- Para reativar a instrumentacao em uma futura retomada:

```bash
make DEBUG=1 MSXBARE_V9990_UART_TRACE=1
```

- O estado funcional no checkpoint:
  - `CODEINTRUDER.ROM` usa mapper `ASCII16` no fallback SHA e no `roms/initramfs/CARTS.SHA`
  - autoativacao `GFX9000` para ROMs V9990 permanece no kernel/runtime
  - `UNDERWATER` teve largura/altura/cor `B1/BD16` alinhadas ao `WebMSX`
  - `DEBUG [MIN]` mostra `PAL/NTSC` via `VDP R#9 bit1`
- Pendencia central ao retomar:
  - `GHOSTGOBLINS.ROM` ainda precisa fechar a corrupcao de background/colisao no gameplay
  - a issue `#251` permanece aberta por esse criterio de aceite nao concluido

## Atualizacao 18/04/2026 - `UNDERWATER` em `B1/BD16`: decode de cor alinhado ao `WebMSX`

- A UART da build `67DE` manteve o mesmo diagnostico estrutural:
  - o demo `UNDERWATER` segue em `B1`
  - o presenter continua limpo
  - o framebuffer ja nasce corrompido dentro do `V9990`
- Evidencias principais:
  - `G9M mode ... dm:B1 sm0:87`
  - `G9D fb ... mk:5 dm:3 mn:B1 sc:00 sm0:87 sm1:00`
  - os comandos `0x90/0x80` continuam a montar a imagem no `B1`, mas a cor ainda saía psicodelica mesmo depois do ajuste de geometria
- Comparacao direta com:
  - `third_party/WebMSX/src/main/msx/video/V9990.js`
  - `third_party/WebMSX/src/main/msx/video/ColorCache.js`
  fechou uma divergencia semantica concreta no caminho `BD16`
- No `WebMSX`, a cor direta de `16` bits do `V9990` usa o layout `GRB`, nao `RGB555`:
  - bits `0..4`   = blue
  - bits `5..9`   = red
  - bits `10..14` = green
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_rgb555_to_rgb565()` foi alinhada a `ColorCache.getColors16bitValues()`
  - novo decode:
    - `b = value & 0x1f`
    - `r = (value >> 5) & 0x1f`
    - `g = (value >> 10) & 0x1f`
- Racional tecnico:
  - isso remove a maior divergencia remanescente de cor no `UNDERWATER` sem tocar em presenter, mapeamento de VRAM ou bootstrap
  - o alvo desta rodada e puramente a fidelidade de cor do `B1/BD16`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604180218-ebbecfe`
  - `TXTDBG BUILD: 2870`
  - `BUILD_HASH: ebbecfe-0b94271ab05157ef8fc494541b3e88e79ddf33fe`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 18/04/2026 - `UNDERWATER` virou o repro principal do `Bx`

- O novo repro principal passou a ser o demo `UNDERWATER`, usado como evidencia do caminho `Bx`.
- Sintoma observado em hardware:
  - tela duplicada horizontalmente
  - imagem com metade da altura esperada
  - cores completamente corrompidas
- Comparacao direta com `third_party/WebMSX/src/main/msx/video/V9990.js` fechou uma divergencia estrutural no decode de modo do `Bx`:
  - o core local ainda nao distinguia `B5/B6` de `B7`
  - `fmsx_v9990_frame_height()` ainda devolvia `212` para todos os modos
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novos modos:
    - `FMSX_V9990_MODE_B5`
    - `FMSX_V9990_MODE_B6`
  - `fmsx_v9990_get_display_mode()` agora segue o `WebMSX` para `DCKM=2` com `CSM=0`:
    - `C25M/HSCN = 0x01 -> B5`
    - `C25M/HSCN = 0x41 -> B6`
    - `0x00/0x40 -> B7`
  - `fmsx_v9990_get_active_display_width()` passou a reconhecer `B5/B6 = 640`
  - `fmsx_v9990_frame_height()` passou a reconhecer:
    - `B0/B2/B4 = 240`
    - `B5 = 400`
    - `B6 = 480`
    - demais modos mantidos
  - `fmsx_v9990_get_left_border_ticks()` e `fmsx_v9990_get_top_border_lines()` passaram a respeitar modos sem borda (`B0/B2/B4/B5/B6`), aproximando a metrica visivel do `WebMSX`
  - `fmsx_v9990_is_bx_hires()` deixou de testar so `B3/B7` e passou a usar `active_display_width > 512`
  - `fmsx_v9990_get_active_display_x()` ganhou caminho especifico para `B5/B6`
  - UART ampliada:
    - `G9M mode ... dm:<nome>`
    - `G9V ... mn:<nome>`
    - `G9D fb ... mn:<nome> sm0:<..> sm1:<..>`
- Objetivo tecnico:
  - validar, por UART, se o `UNDERWATER` esta de fato em `B5/B6`
  - remover a principal causa semantica para largura/altura erradas no `Bx`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604180032-ebbecfe`
  - `TXTDBG BUILD: 4C52`
  - `BUILD_HASH: ebbecfe-b590bf91814e0b94dcc0123b6b9fde2874e44503`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 16/04/2026 - tipos `BYUV/BYUVP/BYJK/BYJKP` do `Bx` portados do `WebMSX`

- A UART desta rodada nao ficou disponivel em arquivo local (`/private/tmp/msx2p-boot-serial.log` veio vazio), entao o corte foi guiado por comparacao direta do caminho `Bx` com:
  - `third_party/WebMSX/src/main/msx/video/V9990.js`
  - `third_party/WebMSX/src/main/msx/video/ColorCache.js`
- O defeito da apresentacao ainda nascia antes do `P1`, no decode de tipo do `Bx`.
- Divergencia concreta encontrada:
  - no `WebMSX`, `CLRM=2` + `PLTM/YAE` distingue:
    - `BP6`
    - `BD8`
    - `BYJK`
    - `BYJKP`
    - `BYUV`
    - `BYUVP`
  - no core local, `fmsx_v9990_bytes_per_line()` ainda tratava isso como:
    - `BP6`
    - fallback 8-bit generico
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_bytes_per_line()` agora decodifica:
    - `BP2`
    - `BP4`
    - `BP6`
    - `BD8`
    - `BD16`
    - `BYJK`
    - `BYJKP`
    - `BYUV`
    - `BYUVP`
  - novos helpers:
    - `fmsx_v9990_signed6()`
    - `fmsx_v9990_clamp5_to_rgb565()`
    - `fmsx_v9990_decode_byuv_pixel()`
    - `fmsx_v9990_decode_byjk_pixel()`
    - `fmsx_v9990_palette_offset_b_from_control()`
  - `fmsx_v9990_render_bx_line()` agora segue o `WebMSX` no caminho `BYxx/BYxxP`:
    - fetch em grupos de `4` bytes
    - chroma compartilhado por grupo
    - caminho `palette` vs `YUV/YJK` nos modos `*P`
    - offsets pares/impares de palette em modos hi-res
  - `G9D fb` foi ampliado com `dm/sc/pc` para a UART indicar explicitamente:
    - modo de display
    - `system_control`
    - `palette_control`
- Racional tecnico:
  - a apresentacao inicial quebrada antes do `P1` continuava apontando para o `Bx`
  - essa era a maior divergencia semantica restante entre o nosso renderer `Bx` e o `WebMSX`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604160012-ebbecfe`
  - `TXTDBG BUILD: 99FE`
  - `BUILD_HASH: ebbecfe-a9ec5e6ae58859b18c794f77641b304343d6e3b2`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 15/04/2026 - decode de modo `Bx` alinhado ao `systemControl` do `WebMSX`

- A UART da build `1E2B` separou o defeito em dois estagios:
  - apresentacao/boot ainda corrompidos em caminho `Bx` (`mk:3/2`, `iw:512`)
  - gameplay ainda corrompido em `P1`
- Comparando o core local com `third_party/WebMSX/src/main/msx/video/V9990.js`, apareceu uma divergencia estrutural no decode de modo:
  - o `WebMSX` escolhe `B0/B1/B2/B3/B4/B7` a partir de `systemControl & 0x01` (`CSM`)
  - o core local ainda usava `status & 0x04` para:
    - `fmsx_v9990_get_display_mode()`
    - calculo de bordas/ticks/altura ativa do `Bx`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novo helper `fmsx_v9990_is_csm_mode()`
  - `fmsx_v9990_get_display_mode()` agora usa `g_fmsx_v9990.system_control`
  - `fmsx_v9990_get_left_border_ticks()`
  - `fmsx_v9990_get_right_border_ticks()`
  - `fmsx_v9990_get_top_border_lines()`
  - `fmsx_v9990_get_bottom_border_lines()`
    tambem passaram a usar `system_control`
- Racional tecnico:
  - isso remove um erro semantico de base do bloco `Bx`, capaz de selecionar renderer/largura/bordas errados ja na apresentacao, antes de qualquer efeito especifico do `P1`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604152304-ebbecfe`
  - `TXTDBG BUILD: 2FD7`
  - `BUILD_HASH: ebbecfe-8d95723ede31c798fce2b74737cfb0115a4364b0`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 15/04/2026 - `NX1` e `AY1/BY1` alinhados ao `WebMSX`

- Comparando o command engine e o scheduler de scroll com:
  - `third_party/WebMSX/src/main/msx/video/V9990.js`
  - `third_party/WebMSX/src/main/msx/video/V9990CommandProcessor.js`
  ficaram dois desvios concretos no core local:
  - `NX1` ainda aceitava `4` bits (`0x0F`), enquanto o `WebMSX` usa so `3` (`0x07`)
  - `AY1/BY1` ainda nao atualizavam o frame ativo como no `WebMSX`; o core local so tratava parte do estado e ignorava o offset alto de scroll no frame corrente
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_cmd_get_total_nx()`, `fmsx_v9990_cmd_dims_are_zero()` e `fmsx_v9990_cmd_set_reg(NX1)` agora usam `NX1 & 0x07`
  - novos eventos raster:
    - `FMSX_V9990_RASTER_EVENT_AY1`
    - `FMSX_V9990_RASTER_EVENT_BY1`
  - `fmsx_v9990_note_scroll_ay_high_write()` agora atualiza:
    - `scroll_ay_lines[]`
    - `scroll_ay_frame_lines[]`
    - `scroll_ay1_lines[]`
    - baseline das linhas seguintes
  - `fmsx_v9990_note_scroll_by_high_write()` agora atualiza:
    - `scroll_by_lines[]`
    - `scroll_by_frame_lines[]`
    - `scroll_by1_lines[]`
    - baseline das linhas seguintes
  - `fmsx_v9990_get_p1_frame_initial_state()` passou a usar `scroll_ay1_lines[0]`, em vez do latch global cru
- Racional tecnico:
  - isso remove uma divergencia direta com o `WebMSX` em dois pontos que afetam o gameplay:
    - largura logica dos opcodes `LMMV/LMMM`
    - offset alto de scroll do `P1` durante o frame ativo
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604151612-ebbecfe`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 15/04/2026 - acesso da CPU a VRAM agora segue a semantica linear bruta do `WebMSX`

- A engenharia reversa da `roms/games/roms/V9990/GHOSTGOBLINS.ROM` fechou um corte mais forte no gameplay:
  - a ROM usa `COMMAND_DATA` (`0x62`) em rajadas grandes de `0x2000` bytes
  - e o gameplay ainda depende de atualizacoes dinamicas da VRAM fora das telas estaticas de apresentacao
- Comparando com `third_party/WebMSX/src/main/msx/video/V9990.js`, apareceu uma divergencia estrutural no nosso core:
  - no `WebMSX`, acesso da CPU a VRAM via port `0x60` e sempre linear bruto (`vram[vramPointerWrite] = val`)
  - no core local, `fmsx_v9990_read_vram_cpu()` e `fmsx_v9990_write_vram_cpu()` ainda passavam por `fmsx_v9990_map_vram_address()`, dependendo do modo ativo
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_read_vram_cpu()` agora le VRAM linear bruta
  - `fmsx_v9990_write_vram_cpu()` agora escreve VRAM linear bruta
  - renderer e command helpers continuam sendo os unicos pontos com transform `P1/P2/Bx`
- Racional tecnico:
  - isso pode corromper exatamente o gameplay dinamico, sem necessariamente quebrar os uploads estaticos por command engine
  - e alinha a semantica do core local com `WebMSX` para o caminho CPU->VRAM
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604151527-ebbecfe`
  - `TXTDBG BUILD: 56AC`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 15/04/2026 - sprites `P1/P2` agora seguem a ordem e a coleta do `WebMSX`

- Entrou um porte semantico importante da composicao de sprites `P1/P2`, comparado diretamente com `third_party/WebMSX/src/main/msx/video/V9990.js`.
- Desvio encontrado:
  - o core local ainda renderizava sprites com um atalho proprio por `info/level`
  - tratava `attr & 0x10` como caso especial na coleta de sprites por linha
  - desenhava todos os sprites numa unica passada apos as planes
- No `WebMSX`, a logica e:
  - coletar ate `16` sprites visiveis sem esse filtro extra
  - desenhar em duas passadas por prioridade real:
    - `0x20` entre back-plane e front-plane
    - `0x00` depois da front-plane
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novo `fmsx_v9990_draw_sprite_pixel_direct()`
  - novos coletores:
    - `fmsx_v9990_collect_p1_sprites_on_line()`
    - `fmsx_v9990_collect_p2_sprites_on_line()`
  - novos renderizadores:
    - `fmsx_v9990_render_p1_sprites_line_pass(..., pri)`
    - `fmsx_v9990_render_p2_sprites_line_pass(..., pri)`
  - `render_p1_frame()` agora segue a ordem do `WebMSX`:
    - backdrop
    - back plane
    - sprites `0x20`
    - front plane
    - sprites `0x00`
  - `render_p2_frame()` tambem passou a usar duas passadas por prioridade
- Racional tecnico:
  - isso ataca diretamente os sintomas de sprites trocados / ordem errada
  - e remove outra divergencia estrutural entre o core local e o `WebMSX`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604151505-ebbecfe`
  - `TXTDBG BUILD: D3F1`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 15/04/2026 - command engine `P1` por coordenada agora segue a semantica crua do `WebMSX`

- Entrou um corte estrutural no command engine `P1`, comparado diretamente com `third_party/WebMSX/src/main/msx/video/V9990CommandProcessor.js`.
- Desvio encontrado:
  - os comandos `x/y` do `P1` (`normalPGETX`, `logicalPSETX`, `logicalPCOPYXX`) ainda passavam por `transform_linear_p1()`
  - no `WebMSX`, esses caminhos usam VRAM crua:
    - `pos = (sy * imageWidthBytes) + sx`
    - a swizzle linear `((addr >>> 1) | ((addr & 1) << 18))` fica restrita aos comandos por endereco linear em `P1`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novo helper `fmsx_v9990_cmd_p1_xy_direct_address()`
  - `fmsx_v9990_cmd_address_of(P1)` passou a retornar endereco cru por coordenada
  - `fmsx_v9990_cmd_p1_logical_pcopyxx()`, `fmsx_v9990_cmd_p1_logical_psetx()` e `fmsx_v9990_cmd_p1_normal_pgetx()` passaram a usar endereco cru
  - `fmsx_v9990_cmd_p1_logical_pcopylx()` passou a usar:
    - source cru `x/y`
    - destination linear swizzled
  - `fmsx_v9990_cmd_p1_logical_pcopyll()` permaneceu linear/swizzled
- Racional tecnico:
  - esse era o primeiro desvio forte que explicava simultaneamente:
    - background em blocos faltando no gameplay
    - sprites/patterns parecendo buscar dados do lugar errado
  - a partir daqui, o command engine `P1` por coordenada deixou de escrever em enderecos swizzled que so fazem sentido para a familia linear `BMLX/BMLL/CMMM`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604151453-ebbecfe`
  - `TXTDBG BUILD: EEA4`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 15/04/2026 - `P1` agora consome baseline de frame + eventos raster, com `CONTROL` latched por frame

- Entrou um corte estrutural consolidado no renderer `P1` para sair do modelo hibrido de snapshots por linha e aproximar a execucao do `WebMSX`.
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novo baseline explicito de frame para o `P1` (`fmsx_v9990_get_p1_frame_initial_state()`)
  - `render_p1_frame()` deixou de reconstruir cada scanline a partir de `scroll_*_lines[]`, `priority_control_lines[]`, `palette_control_lines[]` e `backdrop_color_lines[]` da propria linha
  - o frame agora nasce do baseline do frame e reaplica `raster_events` em ordem de `y` enquanto avanca as scanlines
  - `CONTROL` e `sprites enabled` passaram a ser latches do frame atual (`control_frame`, `display_enabled_frame`, `sprites_enabled_frame`), em vez de leituras vivas de `regs[CONTROL]`
  - isso passa a usar os eventos raster como fonte primaria do gameplay, em vez de arrays ja expandidos e misturados com registradores vivos
- Racional tecnico:
  - o `WebMSX` renderiza `PP1` a partir do estado vivo do frame, nao de snapshots por linha preexpandidos
  - o core local ainda misturava baseline latched, arrays preexpandidos e leituras vivas de `CONTROL`; esse corte remove essa mistura no `P1`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604151438-ebbecfe`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 15/04/2026 - `P1` migrou para offsets de frame no estilo `WebMSX`

- Entrou um corte maior no `P1`, saindo do modelo `displayYA/displayYB` e aproximando a semantica de `scrollYOffsetFrame/scrollYBOffsetFrame` do `WebMSX`.
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novos baselines por frame:
    - `scroll_ay_frame_lines[]`
    - `scroll_by_frame_lines[]`
  - `AY0/BY0` com display ativo agora passam a registrar e propagar offsets de frame (`scroll - split`), em vez de depender de `displayYA/displayYB` como fonte principal
  - `render_p1_segment()` passou a calcular:
    - `display_ay = (y + scroll_ay_frame) & scrollYMax`
    - `display_by = (y + scroll_by_frame) & 511`
    - isso substitui o caminho antigo baseado em `displayYA/displayYB + scroll`
  - `render_p1_frame()` e o bloco de debug do `P1` foram migrados para o mesmo modelo
- Racional tecnico:
  - o `WebMSX` nao reconstrui o `P1` a partir de `displayYA/displayYB` por linha; ele usa offsets de frame vivos (`scrollYOffsetFrame/scrollYBOffsetFrame`)
  - esse corte troca o nosso `P1` para esse mesmo eixo semantico antes do proximo reteste em hardware
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604151324-ebbecfe`
  - `TXTDBG BUILD: 2B8C`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 15/04/2026 - `PRX` removido da composicao do `P1`

- A comparacao literal com `WebMSX` fechou uma divergencia forte no `P1`: `PRX` nao corta a linha nesse modo.
- Em `third_party/WebMSX/src/main/msx/video/V9990.js`, `renderLineTypePP1()` decide a ordem `A/B` apenas por `PRY` (`priBYLine`).
- O core local ainda usava `PRX` como `split_x`, o que e compativel exatamente com o sintoma de `3/4` correto + `1/4` faltando repetido.
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `render_p1_segment()` deixou de usar `prio_x/split_x`
  - a ordem de composicao `A/B` agora depende apenas de `display_y < prio_y`
  - abaixo de `PRY`, `A` vira back plane e `B` vira front plane na linha inteira
  - acima de `PRY`, `B` fica back plane e `A` fica front plane na linha inteira
- Isso alinha a composicao do `P1` com a logica real do `WebMSX`, em vez do modelo hibrido local.
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604151311-ebbecfe`
  - `TXTDBG BUILD: A246`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 15/04/2026 - writes imediatos do `WebMSX` agora entram como eventos raster no `P1`

- O porte da semantica do `WebMSX` avancou no ponto que ainda faltava no frame ativo do `P1`.
- Em `third_party/WebMSX/src/main/msx/video/V9990.js`, os writes de:
  - `BY1` (`*SDA/*SDB`)
  - `PALETTE_CONTROL`
  - `BACK_DROP_COLOR`
  sao efetivos durante o display e afetam apenas o restante da linha/frame.
- O core local ainda aplicava esses 3 writes como estado de linha inteira, mesmo quando ocorriam com display ativo.
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novos eventos raster `y/x`:
    - `FMSX_V9990_RASTER_EVENT_BY1_PLANES`
    - `FMSX_V9990_RASTER_EVENT_PALETTE_CONTROL`
    - `FMSX_V9990_RASTER_EVENT_BACKDROP_COLOR`
  - `fmsx_v9990_note_scroll_by_high_write()` passou a:
    - registrar evento raster para `*SDA/*SDB`
    - atualizar apenas as linhas seguintes como baseline
  - `fmsx_v9990_note_palette_control_write()` e `fmsx_v9990_note_backdrop_color_write()` passaram a:
    - registrar evento raster
    - atualizar apenas as linhas seguintes como baseline
  - `fmsx_v9990_apply_p1_raster_event()` agora aplica esses 3 estados no segmento horizontal correto da linha
- Objetivo tecnico:
  - continuar substituindo o modelo “estado por linha inteira” por um pipeline dirigido por eventos, como no `WebMSX`
  - atacar o restante do defeito do gameplay no proprio framebuffer do `P1`, nao no presenter
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604151257-ebbecfe`
  - `TXTDBG BUILD: 1E68`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 15/04/2026 - `DISKBASE.DSK` agora preserva so o boot sector

- A rodada anterior ainda preservava tambem o conteudo antigo da imagem-base (`FAT`, root e arquivos), e isso nao serve como disco "em branco" reutilizavel.
- Ajuste aplicado em `scripts/build-msx-disk.py`:
  - `scripts/DISKBASE.DSK` passou a ser usada apenas como fonte do setor de boot
  - a imagem nova nasce zerada fora do primeiro setor
  - `FAT1`, `FAT2`, diretorio raiz e area de dados sao reconstruidos do zero
  - os arquivos do source entram sobre uma imagem limpa, preservando apenas o bootstrap real do disco-base
- Validacao local desta rodada:
  - `python3 -m py_compile scripts/build-msx-disk.py`
  - geracao de imagem temporaria com:
    - `AUTOEXEC.BAS`
    - `SUBDIR/TEST.BAS`
    - ocultos do macOS para confirmar filtro
  - checks confirmados:
    - setor `0` da imagem gerada identico ao de `scripts/DISKBASE.DSK`
    - `FAT` reinicializada com `F9 FF FF`
    - root sem `MSXDOS2.SYS` e sem `COMMAND2.COM`
    - somente `label`, `AUTOEXEC.BAS` e `SUBDIR` no root
- Implicacao pratica:
  - o utilitario agora produz um disco limpo reutilizavel, mas com o boot loader funcional da imagem-base preservado

## Atualizacao 15/04/2026 - `build-msx-disk.py` agora usa `DISKBASE.DSK`

- O gerador local de `.dsk` deixou de montar um FAT12 "do zero" e passou a clonar `scripts/DISKBASE.DSK` como base obrigatoria para qualquer imagem nova.
- Motivo da mudanca:
  - a imagem sintetica anterior permitia ler os arquivos normalmente
  - mas, ao dar `RESET` com o disco inserido, o MSX entrava em boot loop
  - a causa pratica era a ausencia do bootstrap real de disco e dos arquivos de sistema ja presentes na imagem extraida de hardware
- Correcao aplicada em `scripts/build-msx-disk.py`:
  - preserva byte a byte o setor de boot de `scripts/DISKBASE.DSK`
  - preserva o conteudo ja presente na imagem-base, incluindo `MSXDOS2.SYS` e `COMMAND2.COM`
  - passa a alocar os arquivos/diretorios do source apenas nos clusters livres da FAT da imagem-base
  - adiciona `volume label` no root sem deslocar os arquivos de sistema da base
  - bloqueia sobrescrita acidental do proprio `scripts/DISKBASE.DSK`
- Documentacao sincronizada:
  - `scripts/README.md`
- Validacao local desta rodada:
  - `python3 -m py_compile scripts/build-msx-disk.py`
  - geracao de imagem de teste a partir de diretorio temporario com:
    - `AUTOEXEC.BAS`
    - `SUBDIR/TEST.BAS`
    - ocultos do macOS (`.DS_Store`, `._AUTOEXEC.BAS`) para confirmar filtro
  - checks confirmados:
    - boot sector da imagem gerada identico ao de `scripts/DISKBASE.DSK`
    - `MSXDOS2.SYS` e `COMMAND2.COM` preservados no root
    - novos arquivos inseridos corretamente
    - ocultos do macOS continuam fora da imagem
- Implicacao pratica:
  - os proximos discos gerados pelo utilitario passam a herdar o boot loader funcional da imagem-base e deixam de depender de um boot sector generico
  - isso deve eliminar o boot loop observado em `RESET` com disco inserido

## Atualizacao 15/04/2026 - `MSX2+` e slot fisico do `MSXDOS2.ROM`

- O sintoma residual do `MSX2+` ficou fechado: o perfil `HB-F1XDJ` usa um mapa interno diferente do layout generico que o `fMSX` assume para o cartucho de sistema DOS2.
- Referencias locais consultadas:
  - `third_party/openMSX/share/machines/Sony_HB-F1XDJ.xml`
  - `third_party/bluemsx/blueMSX/Make/blueMSXlite/linux-sdl/Machines/MSX2+ - Sony HB-F1XDJ/config.ini`
- Nessas referencias, o `MSX2+` local trabalha assim:
  - `RAM mapper` em `3-0`
  - `SubROM + Kanji BASIC` em `3-1`
  - `DISK.ROM` em `3-2`
  - `MSX-MUSIC` em `3-3`
- O desvio do core local era este:
  - o bootstrap do `MSXDOS2.ROM` ainda herdava do upstream a suposicao de que o cartucho de sistema podia entrar fixamente em `3-0`
  - no `MSX2+`, isso colide com o `RAM mapper`
  - `PAINTER/FMPAC` tambem usavam apenas `ROMData[]` livre, sem validar se o subslot fisico estava realmente vazio
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_local/MSX.c`:
  - novo helper `fmsx_find_next_free_system_cart_slot()`
  - cartuchos auxiliares de sistema agora exigem um slot cujo `MemMap[ps][ss][2..5]` esteja vazio
  - `MSXDOS2.ROM` deixou de assumir `3:0`; no `MSX2+` ele passa a procurar um slot interno livre compativel com o perfil
  - `PAINTER` e `FMPAC` passaram a usar o mesmo critério, evitando colisao com subslots internos ocupados
- Telemetria UART de `DEBUG=1` ficou mais objetiva:
  - `DOS2 ... slot:<n> ps:<p> ss:<s> try:<0|1> ok:<0|1>`
  - isso permite ver, no hardware, em qual slot fisico o bootstrap colocou o DOS2 no `MSX2+`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh`
  - `make -j4`
- Build atual:
  - `BUILD_BID: 202604151227-1e936ec`
  - `TXTDBG BUILD: C021`
  - `BUILD_HASH: 1e936ec-6b8ee7c58292f093f234120ae463d333d35b68f2`
  - artefato: `artifacts/kernel8-issue251.img`
- Estado:
  - compilacao OK
  - proximo reteste em hardware deve confirmar se o `MSX2+` sai de `Disk BASIC Version 1.0` para `Disk BASIC Version 2.1`

## Atualizacao 15/04/2026 - carga do `MSXDOS2.ROM` no `boot-minimal`

- A investigacao do sintoma "continua em `Disk BASIC 1.0` mesmo com `MSXDOS2.ROM` no initramfs" fechou a causa raiz restante em `src/backend/msx/modules/fmsx/fmsx_local/MSX.c`.
- Mesmo apos ligar `MSX_MSXDOS2` no `startup_mode` e expor `MSXDOS2.ROM` no VFS minimo, o `StartMSX()` ainda tinha dois fluxos diferentes:
  - no startup completo, tentava `LoadCart("MSXDOS2.ROM",2,MAP_GEN16)`
  - no `FMSX_BAREMETAL_BOOT_MINIMAL_STARTUP`, pulava essa tentativa inteira
- Correcao aplicada:
  - extraido helper `fmsx_try_load_msxdos2_system_cart()`
  - helper chamado tanto no ramo completo quanto no ramo minimal
  - slot do cartucho DOS2 ficou explicito como `MAXCARTS` (`3:0`)
  - `DEBUG=1` agora emite telemetria UART curta para esse gate:
    - `DOS2 minimal/full opt: vis: dsk: free: try: ok: mask: ss:`
- Leitura esperada da telemetria:
  - `opt`: bit `MSX_MSXDOS2` presente no modo da maquina
  - `vis`: `MSXDOS2.ROM` visivel via VFS
  - `dsk`: `DISK.ROM` ja mapeada no subslot esperado
  - `free`: slot `3:0` ainda livre para o cartucho de sistema
  - `try/ok`: tentativa e sucesso do `LoadCart()`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh`
  - `make -j4`
- Build atual:
  - `BUILD_BID: 202604151211-1e936ec`
  - `TXTDBG BUILD: 87B2`
  - `BUILD_HASH: 1e936ec-6e271d71223ff0bb705082bb61daba4db38aae24`
  - artefato: `artifacts/kernel8-issue251.img`
- Estado:
  - compilacao OK
  - falta reteste em hardware para confirmar `try:1 ok:1` no UART e o boot efetivo em `MSX-DOS 2`

## Atualizacao 15/04/2026 - boot MSX-DOS 2 no fMSX

- Foi fechado um desvio estrutural do boot `MSX2/MSX2+` que explicava o sintoma de cair em `Disk BASIC 1.0` mesmo com `MSXDOS2.ROM` e `.DSK` preparados.
- A causa local era tripla:
  - `fmsx_runtime_start()` montava `startup_mode` sem o bit `MSX_MSXDOS2`
  - o `boot-minimal` do initramfs nao whitelistava `MSXDOS2.ROM`
  - o `boot-minimal` whitelistava `DISKA.DSK/DISKB.DSK`, mas o runtime canonico usa `DRIVEA.DSK/DRIVEB.DSK`
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_runtime.c`
    - perfis `MSX2` e `MSX2+` passaram a incluir `MSX_MSXDOS2` no `startup_mode`
  - `src/backend/msx/modules/fmsx/fmsx_initramfs.cpp`
    - `boot-minimal` agora monta tambem `MSXDOS2.ROM`, `DRIVEA.DSK` e `DRIVEB.DSK`
- Documentacao sincronizada:
  - `roms/initramfs/README.md`
  - `docs/machine-profiles/msx2.md`
  - `docs/machine-profiles/msx2p.md`
- Implicacao pratica:
  - o primeiro `StartMSX()` passa a enxergar, ja no boot inicial, o trio necessario para DOS2 por disco:
    - `DISK.ROM`
    - `MSXDOS2.ROM`
    - `DRIVEA.DSK`
  - isso remove o fallback silencioso para `Disk BASIC 1.0` por falta de ROM/imagem no VFS minimo
- Validacao local de compilacao/higiene: pendente nesta rodada

## Atualizacao 15/04/2026 - utilitario local para `.dsk`

- Entrou um utilitario novo em `scripts/build-msx-disk.py` para gerar imagens MSX FAT12 `720KB` a partir de um diretorio host.
- O ponto central desta implementacao foi evitar justamente o problema do macOS com AppleDouble/metadados em volumes FAT:
  - o script nao monta a imagem
  - nao usa Finder
  - nao copia arquivos para um volume FAT do host
  - escreve a estrutura FAT12 diretamente em Python
- Guardrails operacionais do utilitario:
  - ignora qualquer entrada cujo nome-base comece com `.`, cobrindo `._*`, `.DS_Store` e demais ocultos
  - copia subdiretorios recursivamente
  - exige nomes compativeis com DOS `8.3` e falha com erro claro quando houver nome invalido/ambiguo
  - bloqueia saida dentro do proprio diretorio de origem
- Validacao local desta rodada:
  - `python3 -m py_compile scripts/build-msx-disk.py`: OK
  - geracao de imagem de teste com `AUTOEXEC.BAS` + `SUBDIR/TEST.BAS`: OK
  - montagem em modo somente leitura via `hdiutil`/`diskutil`: root visivel sem `._*` e sem `.*` oriundos do source
  - tamanho da imagem gerada: `737280` bytes
- Documentacao operacional atualizada em `scripts/README.md`

## Corte mais recente

- A trilha dos `3` gaps do gameplay do `P1` entrou no ponto mais forte das referencias (`openMSX`): os writes raster sao sincronizados por tempo/pixel, nao aplicados como estado unico da linha.
- A UART desta rodada reforcou isso:
  - `AX` muda com display ativo em linhas recorrentes do gameplay (`54`, `126`, `160/161`, `176`, `194/195`)
  - isso bate diretamente com as bandas horizontais corrompidas vistas no hardware
- O desvio local era este:
  - `AX/BX/AY0/BY0/PRIORITY` com display ativo ainda sobrescreviam a linha inteira a partir de `y`
  - o `render_p1_frame()` desenhava cada scanline como se houvesse um unico estado horizontal
- A correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
  - novo buffer transiente `raster_events` por frame
  - helper para capturar `x` ativo de display a partir do clock `UC` do `V9990`
  - `AX/BX/AY0/BY0/PRIORITY` com display ativo:
    - registram evento `y/x` da propria linha
    - atualizam apenas as linhas seguintes como baseline
  - `P1` passou a renderizar a linha em segmentos, aplicando o novo estado apenas a partir do `x` do evento
- Objetivo do proximo reteste:
  - confirmar se os `3` gaps finalmente respondem ao mesmo mecanismo de split horizontal usado pelas referencias
  - se mover, o proximo foco fica restrito aos registradores que ainda nao entraram no modelo por segmento
- Build atual:
  - `BUILD_BID: 202604150242-1e936ec`
  - `TXTDBG BUILD: 02EF`

## Corte anterior

- O defeito restante do gameplay ficou mais coerente com stream do command engine do que com presenter/raster.
- O dissassembly da `GHOSTGOBLINS.ROM` continua mostrando uploads grandes por `COMMAND_DATA` (`0x62`) cercados por programacao do `V9990`.
- O desvio local era este:
  - `LMMC/LMCM/CMMC` ainda consumiam `mode/pitch/image_width` recalculados ao vivo durante o stream
  - isso divergia do `openMSX`, que latches o geometry do command engine no inicio do opcode
- A correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
  - latch de `mode/pitch/image_width` no inicio de `fmsx_v9990_cmd_execute()`
  - `LMMC` e `CMMC` em `PORT_COMMAND_DATA` passaram a usar `cmd_latched_mode/pitch`
  - `LMCM` (`cmd_get_data`) passou a recarregar com `cmd_latched_mode/pitch`
  - save/load state promovido para `version 4`, persistindo:
    - `cmd_mode`
    - `cmd_pitch`
    - `cmd_image_width`
  - compatibilidade `v3` preservada por reconstrucao do geometry no load
- Objetivo do proximo reteste:
  - confirmar se os `3` gaps do gameplay mudam quando o stream deixa de ser reinterpretado no meio do opcode
- Build atual:
  - `BUILD_BID: 202604141105-1e936ec`
  - `TXTDBG BUILD: C34C`
  - `BUILD_HASH: 1e936ec-613a64b3e85522b09b1abb51a48bbab910d41061`

## Corte anterior

- A UART da build `7AF9` mostrou um dado mais forte que as hipoteses anteriores: nao saiu nenhum `G9L`.
- Isso invalida a leitura estreita de que o defeito restante vinha apenas de `LMMC` em `P1`.
- Revisitando o dissassembly da ROM:
  - existem rotinas claras de `0x34 <- 0x10` no banco `7`
  - elas fazem upload em rajadas de `0x2000` bytes para `COMMAND_DATA` (`0x62`)
  - mas esse upload nao precisa ocorrer com o command engine ja em `P1`
- A resposta local desta rodada foi ampliar a instrumentacao em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `G9L` deixa de depender de `mode == P1`
  - qualquer `LMMC` grande (`>= 0x2000` bytes) passa a registrar:
    - `md`
    - `iw`
    - `pt`
    - `dx/dy/nx/ny/sx/sy/wm/arg/log`
- Objetivo do proximo reteste:
  - confirmar em que modo real (`P1`, `Bx` ou `P2`) a ROM esta gerando os `4` blocos
  - separar definitivamente `command engine` de `renderer`
- Build atual:
  - `BUILD_BID: 202604141027-1e936ec`
  - `TXTDBG BUILD: 7F77`
  - `BUILD_HASH: 1e936ec-7de9f0fede05b11f23ba51596b23d424eab2ebb6`

## Corte anterior

- O defeito residual do gameplay deixou de ser tratado por tentativa em renderer e passou para engenharia reversa da ROM `roms/games/roms/GHOSTGOBLINS.ROM`.
- A desmontagem do banco de gameplay mostrou o ponto mais importante desta trilha:
  - o jogo arma `LMMC` em `P1`
  - faz stream de `COMMAND_DATA` (`port 0x62`)
  - esse stream vem em rajadas de `0x2000` bytes
- Em `P1`, isso equivale a `64` linhas por rajada (`256 px / 2 px por byte = 128 bytes/linha`; `0x2000 / 128 = 64`).
- Isso casa diretamente com o sintoma visual de `4` blocos com `3` cortes horizontais.
- A UART anterior ja fechava que:
  - o presenter esta limpo (`G9D vp ... dis:1 ... scan:0`)
  - os holes nascem no framebuffer `P1`
  - nas linhas furadas, `A/B/final` podem cair juntos em backdrop (`G9D lc ... bg:1 ... fi:1`)
- A resposta local desta rodada entrou em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - instrumentacao `G9L start/chunk/done` no `LMMC`
  - cada evento registra:
    - bytes consumidos
    - total esperado
    - `dx/dy/nx/ny/sx/sy/wm/arg/log`
- Objetivo do proximo reteste em hardware:
  - confirmar se `DX/DY/NX/NY` quebram exatamente nos boundaries de `0x2000`
  - decidir se o bug restante esta no stream do `LMMC` ou no cursor/advance do `P1`
- Build atual:
  - `BUILD_BID: 202604140939-1e936ec`
  - `TXTDBG BUILD: 7AF9`
  - `BUILD_HASH: 1e936ec-1157ea4c8e9fa04db48d539c9e22a21ce2c022ef`

## Corte anterior

- O corte semantico mais forte desta rodada veio do `openMSX`: `display-on/off` nao rebasa `displayYA/displayYB`; apenas `AY0/BY0` fazem isso.
- No backend local, `CONTROL.7` ainda fazia dois ajustes incorretos:
  - no `display-on`, aplicava `apply_line_state_from(split)`
  - no `display-off`, zerava `displayYA/displayYB`
- Isso casa diretamente com o sintoma visual de `3/4` desenhado + `1/4` faltando em janelas sucessivas, porque cada abertura/fechamento de display podia reabrir o frame com offset vertical artificial.
- A correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
  - remover o rebase de `displayYA/displayYB` no `display-on`
  - remover o zeroing de `displayYA/displayYB` no `display-off`
  - manter `AY0/BY0` como unica fonte de rebase vertical do `P1`
- Build atual:
  - `BUILD_BID: 202604121543-1e936ec`
  - `TXTDBG BUILD: 2F36`
  - `BUILD_HASH: 1e936ec-a56b23861b8543aef4ac7787cebf6303f2a9266d`

## Corte anterior

- Os `3` gaps grandes continuam no gameplay do `P1`, e a UART anterior ja tinha fechado que eles nascem no framebuffer final, nao no presenter.
- O problema do corte anterior e que o `G9D ls` mostrava apenas o primeiro split detectado do frame, o que nao respondia pelas linhas reais dos buracos.
- A resposta local desta rodada foi instrumentar o proprio `P1` para emitir o estado exato nas linhas dos `holes`:
  - `G9D lh y:<linha> ay/by/ax/bx/pr/ct/m0/m1`
  - isso elimina a ambiguidade entre split raster e fetch/comando
- Build atual:
  - `BUILD_BID: 202604121528-1e936ec`
  - `TXTDBG BUILD: 524D`
  - `BUILD_HASH: 1e936ec-e7b4eb6631e636f1d46677095aa79c9db1e0b634`

- A build `D51B` validou o diagnostico do `STATUS`, mas introduziu uma regressao clara: os graficos do `GFX9000` ficaram extremamente lentos durante o gameplay.
- O desvio ficou objetivo na leitura de `STATUS`:
  - o passo de `1` tick por leitura com `CONTROL.7=1` parou de inventar janelas extras de display/VBlank
  - mas ficou conservador demais para os loops de polling da ROM do `Ghost'n Goblins`
  - o resultado em campo foi um gameplay funcional, porem muito arrastado
- A correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
  - manter o bootstrap agressivo por leitura com display desligado em `UC_TICKS_PER_LINE / 4`
  - trocar o passo do gameplay para um ponto intermediario `UC_TICKS_PER_LINE / 32`
  - isso busca preservar o corte das falsas janelas sem voltar a travar o ritmo da animacao
- Build atual:
  - `BUILD_BID: 202604121516-1e936ec`
  - `TXTDBG BUILD: 29A4`
  - `BUILD_HASH: 1e936ec-3247e17c6d45155fd8cf5b179feef6750653c389`

## Corte anterior

- A UART desta rodada e a desmontagem da ROM fecharam um desvio mais forte para os `4` blocos do gameplay:
  - a ROM alterna `CONTROL` (`02<->82` / `42<->C2`) e usa loops de polling em `STATUS`
  - o clock sintetico local do `STATUS`, que ainda avancava agressivamente a cada leitura, podia inventar janelas extras de VBlank/display no meio do frame
  - isso bate diretamente com o sintoma visual de `3/4` desenhado + `1/4` faltando repetido
- A correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
  - manter o avanço rapido por leitura apenas no bootstrap com display desligado
  - reduzir o avanço do `STATUS` para `1` tick por leitura quando `CONTROL.7=1`
- Build atual:
  - `BUILD_BID: 202604121505-1e936ec`
  - `TXTDBG BUILD: D51B`
  - `BUILD_HASH: 1e936ec-4a268032985f059b88f5c5680333f1caa7f5417b`

## Corte anterior

- A UART desta rodada mostrou que os `3` gaps grandes restantes do gameplay nao batem com `AY/BY/AX/BX/PRIORITY`:
  - o perfil `G9D p1` continua acusando holes reais no framebuffer final
  - o `G9D ls` ainda cai em `y:194`, entao o mapa raster atual nao explica os cortes visiveis
- O desvio estrutural mais forte passou a ser `CONTROL/SCREEN_MODE` sendo alternados no meio do frame enquanto o backend ainda tratava o `display-on` como reset do estado por linha do frame inteiro.
- A correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
  - substituir o `reset_scroll_line_state()` do `display-on` por `fmsx_v9990_apply_line_state_from(split)`
  - preservar as linhas anteriores ja acumuladas no frame
  - registrar tambem `CONTROL`, `SCREEN_MODE_0` e `SCREEN_MODE_1` por linha
  - ampliar `G9D ls` para mostrar `ct/m0/m1`
- Build atual:
  - `BUILD_BID: 202604121456-1e936ec`

- A UART atual confirmou que os `3` gaps grandes do gameplay `P1` nao estao vindo do presenter nem do mapa raster:
  - `G9D vp src:256x212 ... dis:1 ... scan:0`
  - `G9D ls y:194 ...` ou `G9D ls none`
- O problema do corte anterior era a propria metrica `G9D fb`:
  - ela contava tambem os vazios reais do ceu preto do gameplay
  - por isso `gap/step` ainda parecia grande mesmo quando o defeito visual real eram so os `3` cortes internos do cenario
- A resposta local desta rodada foi trocar a UART para um resumo util do `P1`:
  - contagem por linha da plane `A`
  - contagem por linha da plane `B`
  - contagem por linha da composicao final
  - resumo dos `holes` reais dentro do envelope denso da cena
- Isso fecha a ambiguidade que restava:
  - se os `3` cortes vierem so da plane `A`, o bug esta no fetch/comando dessa plane
  - se vierem so da plane `B`, idem para a plane `B`
  - se `A/B` estiverem densas e so o `final` abrir buracos, o problema esta na composicao `P1`
- Arquivo tocado:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
- Build atual:
  - `BUILD_BID: 202604121441-1e936ec`
  - `TXTDBG BUILD: DADC`
  - `BUILD_HASH: 1e936ec-57683ced246dca8bd4a2f8b7617d58d9bc70c4b3`

- O defeito residual de `P1` continua sendo os 3 grandes gaps horizontais no gameplay do `Ghost'n Goblins`.
- O corte atual ficou estrutural: os writes raster do `P1` sao acumulados durante o `RunZ80()`, mas o `render_frame()` ainda chamava `advance_status_time(full_frame)` logo no inicio do draw.
- Isso zerava o estado por linha (`scroll_*_lines`, `display_y*_lines`, `priority_control_lines`) exatamente antes de desenhar, entao o renderer consumia um baseline limpo ou do frame seguinte, e nao os splits programados pelo gameplay.
- A correcao local desta rodada entrou em:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `src/backend/msx/modules/fmsx/fmsx_v9990.h`
  - `src/backend/msx/modules/fmsx/fmsx_runtime.c`
- Mudanca:
  - novo `fmsx_v9990_begin_frame()`
  - ele avanca o frame/logica de `STATUS` antes do `RunZ80()`
  - `fmsx_runtime_step_frame()` chama esse inicio de frame logo antes da execucao do Z80
  - `fmsx_v9990_render_frame()` deixa de fazer o `advance_status_time(full_frame)` no comeco do draw
- Esta rodada nao mexe em presenter nem em paleta; o alvo e exclusivamente a ordem correta entre captura do raster state e renderizacao.
- Build atual:
  - `BUILD_BID: 202604120139-1e936ec`
  - `TXTDBG BUILD: B08D`
  - `BUILD_HASH: 1e936ec-01ecb876bcd0c17ab1ae2b054d8d6cea2e4d6ba5`

## Objetivo da branch

Executar a issue `#251`, implementando suporte ao cartucho/VDP `V9990` (`GFX9000`) dentro da familia `src/backend/msx/`, sem reacoplar o kernel generico ao core MSX.

## Estado atual da branch

- A issue remota correta desta trilha e a `#251`.
- A branch foi criada e vinculada via `gh issue develop`:
  - branch: `251-suporte-cartucho-vdp-v9990`
  - issue: `#251`
- A branch remota correspondente ja existe em:
  - `origin/251-suporte-cartucho-vdp-v9990`
- O item da issue no projeto `MSX BarePI` esta em `In progress`.

## Corte mais recente

- O crash estrutural do `V9990` saiu da frente. O build `9BBD` deixou de travar e passou a mostrar os primeiros vestigios de imagem real do `GFX9000`.
- O build `4F0B` confirmou mais um marco: o `V9990` ja anima em hardware, mas a imagem ainda aparece com linhas verticais/scanlines espaçadas.
- O UART fecha que o modo ativo e `sm0:86 sm1:40`:
  - `CONTROL` chega a `0xC2`
  - `display-on` acontece
  - o `command engine` ja executa `LMMM` (`op:40`)
  - o guest segue vivo e a emulacao nao trava mais
- O ajuste `FD43` tinha piorado a percepcao do problema porque forcava a largura apresentada para `active_width` (`256`) em `B1`.
- Esta rodada reverteu esse corte e alinhou a geometria ao `openMSX`:
  - o frame apresentado do `Bx/B1` volta a usar `line_width` (`320`)
  - o envelope vertical `0x1FFF` da rodada anterior permanece
- O desvio tecnico desta rodada estava no renderer `Bx`:
  - ele ainda truncava o endereco vertical com `roll mask` de `0x01FF`
  - isso contradiz o `openMSX`, que usa `0x1FFF` em `drawBxMode()`
  - com comandos ja observados em `dy:512`, esse truncamento podia embaralhar a leitura vertical do frame ativo
- A correcao local foi alinhar o caminho `Bx` em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_render_bx_firstlight()` agora usa `fmsx_v9990_get_roll_mask(0x1FFFu)`
  - `scroll_y_base` tambem deixou de ser truncado em `0x01FF`
- Build atual da rodada:
  - `BUILD_BID: 202604112305-1e936ec`
  - `TXTDBG BUILD: 1E95`
  - `BUILD_HASH: 1e936ec-14ca2d3f7f7b00cdd6fcfe2e9a8e228caec3eb1f`
- O UART da build `BUILD_BID: 202604112114-1e936ec` ainda termina em `dwhcidevice.cpp(1518): assertion failed: pThis != 0`, mas a simbolizacao local mudou o foco da falha.
- A pilha desta build fechou em:
  - `CDWHCIDevice::InterruptStub(void*)`
  - `CString::PutChar()` em `third_party/circle/lib/string.cpp`
  - `IRQStub`
- Isso elimina o corte anterior como evidencia forte de corrupcao do renderer `Bx`; o crash atual veio do proprio probe de IRQ, que ainda formatava texto com `CString` no caminho quente.
- A resposta local desta rodada foi:
  - manter a captura/restauro de baseline para `ARM_IRQ_TIMER3` e `ARM_IRQ_USB`
  - remover `CString::Format()` do probe
  - trocar os logs `TIRQ/UIRQ` por emissao minima em buffer fixo/hex sem alocacao ou string formatting do Circle
- Build atual da rodada:
  - `BUILD_BID: 202604112124-1e936ec`
  - `TXTDBG BUILD: 6E09`
  - `BUILD_HASH: 1e936ec-f664bcbec6662fd6dfb5f6f983bf8d8f7781864c`

## Ponto de partida tecnico

- O baseline atual ja contem a modularizacao por familia em `src/backend/`.
- A familia publica MSX esta consolidada em `src/backend/msx/`.
- O backend atual continua `msx.fmsx`.
- O kernel generico ja foi desacoplado do core MSX por meio da adaptacao neutra em `src/backend/runtime/runtime.h`.
- Nao ha implementacao local de `V9990/GFX9000` registrada ainda em `src/`, `docs/` ou `third_party/` dentro do repo.

## Escopo inicial desta trilha

- localizar e registrar as referencias tecnicas primarias para o `V9990`
- mapear onde o dispositivo deve viver dentro da familia `msx`
- definir o baseline funcional minimo da primeira entrega:
  - deteccao do dispositivo
  - estado interno e registradores
  - VRAM/palette basicas
  - caminho inicial de renderizacao
  - integracao com reset e save/load state quando aplicavel

## Referencias analisadas nesta iteracao

- `third_party/openmsx/src/video/v9990/V9990.hh`
- `third_party/openmsx/src/video/v9990/V9990.cc`
- `third_party/openmsx/src/video/v9990/V9990VRAM.hh`
- `third_party/openmsx/src/video/v9990/V9990VRAM.cc`
- `third_party/openmsx/src/video/v9990/V9990CmdEngine.hh`
- `third_party/openmsx/src/video/v9990/V9990CmdEngine.cc`
- `third_party/openmsx/src/video/v9990/V9990Renderer.hh`
- `third_party/openmsx/src/video/v9990/V9990PixelRenderer.hh`
- `third_party/openmsx/src/video/v9990/Video9000.hh`
- `third_party/openmsx/src/DeviceFactory.cc`
- `third_party/openmsx/share/extensions/gfx9000.xml`
- `third_party/openmsx/doc/manual/user.html`
- `third_party/openmsx/doc/manual/commands.html`
- `MSX Top Secret 2` (capitulo `7.8`, comandos do `V9990`) - referencia primaria para `CMMK` e semantica de `PSET/ADVN`

## Conclusoes tecnicas do estudo do openMSX

- O `openMSX` trata o `V9990` como um device proprio de I/O, nao como extensao acoplada ao `V9958`.
- O `GFX9000` e plugado por XML como dispositivo `V9990` com janela de portas `0x60-0x6F`.
- O core do device fica concentrado numa classe `V9990` que agrega:
  - registradores e status
  - IRQ
  - timing horizontal/vertical
  - VRAM dedicada
  - command engine
  - renderer proprio
- A VRAM do `V9990` e separada, com tamanho de `512 KiB`, e o mapeamento muda por modo (`Bx`, `P1`, `P2`).
- O command engine e um subsistema independente, com tabelas de timing por modo/profundidade de cor/estado de display.
- A renderizacao do `V9990` e desacoplada do core do device por uma interface `V9990Renderer`; existe tambem um caminho de superimpose separado via `Video9000`.
- O save-state do `openMSX` serializa explicitamente:
  - VRAM
  - palette
  - registradores
  - command engine
  - estado de timing/sync
- O manual do `openMSX` confirma dois usos distintos:
  - `GFX9000` como fonte de video separada
  - `Video9000` como composicao/superimpose sobre o video MSX classico

## Implicacoes para a implementacao local

- O caminho correto aqui e modelar o `V9990` como dispositivo interno separado dentro da familia `msx`, e nao misturar sua logica diretamente ao bloco existente do `V9958`.
- A primeira entrega local nao precisa portar o renderer/command engine do `openMSX` literalmente; mas deve preservar a mesma divisao de responsabilidades:
  - `device state`
  - `VRAM`
  - `register/IO path`
  - `video output bridge`
  - `command engine`
- O kernel generico nao deve ganhar nocao de `GFX9000` ou `Video9000`; a selecao/composicao de saida precisa ficar contida no backend MSX.
- O save/load state local vai precisar de extensao explicita para incluir o estado do `V9990`, e nao apenas o blob atual do core `fMSX`.

## Proximo passo recomendado

- criar o esqueleto interno do `V9990` em `src/backend/msx/modules/fmsx/` com:
  - struct de estado
  - `512 KiB` de VRAM
  - registradores/portas `0x60-0x6F`
  - hooks de reset/save/load
- deixar command engine e superimpose completos para iteracoes seguintes, depois que o baseline de IO/VRAM/framebuffer estiver em pe

## Observacoes

- O worktree desta branch herdou alteracoes locais pendentes de sincronizacao documental da rodada anterior em:
  - `CONTEXT.md`
  - `docs/handoff/main.md`
  - `docs/handoff/249-backend-framework-modular-por-familia-msx.md`
  - `docs/issues/249-backend-framework-modular-por-familia-msx.md`
- O espelho local da issue `#251` foi criado em:
  - `docs/issues/251-suporte-cartucho-vdp-v9990.md`
- Primeira entrega funcional desta branch ja entrou no menu/config:
  - novo item `GFX9000 [ON/OFF]` em `Settings`, logo abaixo de `Scanline`
  - locales `PT/EN/ES` atualizadas
  - persistencia em `msxbarepi.cfg` com chave `gfx9000=0|1`
  - defaults de SD/scripts atualizados com `gfx9000=0`
- O toggle `GFX9000` deixou de ser apenas UI/config:
  - a API da familia `msx` agora expone `set/get_gfx9000_enabled`
  - o `fmsx_runtime` aplica esse flag ao backend
  - foi criado o device inicial `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - as portas `0x60-0x6F` ja sao interceptadas dentro do core `fMSX` quando o recurso esta ativo
  - o lifecycle foi encaixado em `StartMSX()` e `ResetMSX()` seguindo a divisao `power-on + reset` observada no `openMSX`
  - o save/load state do runtime ganhou extensao leve e versionada para o estado basico do device
  - a saida de video do `V9990` agora tambem entra no pipeline de apresentacao do backend quando `GFX9000` esta ativo
- O renderer deixou de ser placeholder puro:
  - mapeamento de VRAM agora muda por modo (`Bx`, `P1`, `P2`) seguindo a semantica estudada no `openMSX`
  - o caminho `Bx` ganhou scroll X/Y, `roll mask` e tratamento inicial de `even/odd`
  - os modos `P1` e `P2` agora tem renderizacao simplificada por `name/pattern table`, ainda sem sprites
  - larguras de linha e altura/interlace do `V9990` passaram a refletir os modos basicos `P1/P2/B0/B1/B2/B3/B4/B7`
  - o `status` do device agora alterna a paridade de campo a cada frame para acompanhar a apresentacao
- A rodada seguinte aprofundou o renderer de `P1/P2`:
  - sprites/cursors agora sao renderizados nas linhas `P1` e `P2`
  - o limite de `16` sprites por linha foi portado no baseline local
  - a prioridade `front/back` do sprite usa o mesmo modelo de `info plane` observado no `openMSX`
  - o pattern fetch de sprite respeita as bases de pattern separadas para `P1` e `P2`
- O save/load state do `V9990` tambem evoluiu:
  - a versao atual do bloco serializa a VRAM inteira (`512 KiB`) junto de regs/palette/ponteiros
  - a leitura continua aceitando states antigos da versao anterior, que ainda nao carregavam VRAM
- O `command engine` local deixou de ser stub passivo:
  - `COMMAND_DATA`, `STATUS` e `REGISTER_DATA` agora carregam um estado minimo de comando
  - subset implementado com execucao imediata/stream: `STOP`, `LMMC`, `LMMV`, `LMCM`, `LMMM`, `CMMC`, `CMMM`, `BMXL`, `BMLX`, `BMLL`, `LINE`, `SRCH`, `POINT`, `PSET` e `ADVN`
  - `POINT` suporta o fluxo de leitura via `TR`, incluindo retorno em duas leituras para `16bpp`
  - `LMMC/LMCM` ja usam `TR` como handshake CPU<->VRAM, incluindo par de bytes para `16bpp`
  - `CMMC` ja usa o stream de bits CPU->VRAM com `FG/BG`, e `CMMM` usa stream linear da VRAM `Bx`
  - `BMXL/BMLX/BMLL` ja usam o caminho linear `Bx` e operacoes logicas no destino
  - `PSET/ADVN` agora usam a semantica `YYXX` do opcode descrita no manual do `V9990`
  - `PSET/LMMV/LMMC/LMCM/LMMM/CMMC/CMMM/BMXL/BMLX/BMLL/LINE/SRCH` usam o image plane correto por modo (`P1`, `P2`, `Bx`) em vez de reutilizar as `name/pattern tables` do renderer
  - `SRCH` ja atualiza `BD` e `border_x` no baseline local
  - o `save/load state` mais novo agora tambem persiste o estado basico desse `command engine`
- Os registradores e palette do `V9990` tambem ficaram mais fieis:
  - `write masks` dos registradores principais agora seguem o baseline observado no `openMSX`
  - escrita da palette passou a mascarar `R/G/B/YS` como no hardware
- O primeiro teste em hardware desta trilha expôs um bug de selecao de video:
  - `GFX9000 [ON/OFF]` estava forcando a troca da apresentacao para o framebuffer do `V9990`
  - isso produzia pagina preta/flicker quando o chip estava apenas habilitado, mas ainda sem frame valido
  - nesta fase, o toggle deve apenas habilitar/desabilitar o chip/cartucho
  - a comutacao de video precisa ser automatica, somente quando o `V9990` estiver realmente emitindo frame ativo
  - `Video9000`/superimpose continuam fora desta iteracao
- A correcao local desta rodada foi:
  - o loop principal continua renderizando o `V9990` enquanto o chip estiver habilitado
  - o dispatcher de video do runtime agora cai para o `V9958` quando o frame do `V9990` nao estiver ativo
  - reset/load-state do `V9990` nao marcam mais a saida como ativa apenas por o device estar habilitado
  - `display enable=0` no `V9990` deixa de sequestrar a apresentacao com tela preta
- O reteste seguinte em hardware revelou uma segunda falha:
  - o UART em `/private/tmp/msx2p-boot-serial.log` fecha em `Settings: GFX9000 ON`
  - nao apareceu excecao de kernel nem novo log de loop apos o toggle
  - isso indica travamento logo depois da action do menu, ainda no hot path do pause/runtime
- A resposta local desta iteracao foi:
  - remover o `fmsx_v9990_render_frame()` imediato do toggle `GFX9000`
  - o menu agora apenas habilita/desabilita o chip; o primeiro render do `V9990` volta a acontecer no loop normal da emulacao
  - o kernel ganhou telemetria curta `G9A` via UART para marcar:
    - aplicacao do runtime
    - retorno ao `pause render`
    - `present` concluido
  - com isso, o proximo log de hardware deve mostrar se a trava fica no runtime apply, no redraw do menu, ou somente depois do retorno ao loop
- O log seguinte de hardware fechou essa etapa:
  - `G9A: runtime apply ON`
  - `G9A: runtime applied ON`
  - `Settings: GFX9000 ON`
  - `G9A: pause render begin`
  - `G9A: pause present OK`
  - `Emulation RESUMED`
  - em seguida o kernel aborta em `third_party/circle/lib/usb/dwhcidevice.cpp:1518` (`assert(pThis != 0)`)
  - isso desloca a suspeita principal para o primeiro retorno ao loop apos o resume, e nao mais para o toggle do menu
- A leitura mais recente do UART confirmou dois detalhes adicionais:
  - o boot testado ainda e da imagem compilada em `Apr 10 2026 18:31:00`, portanto anterior a rodada local que adicionou a trilha `G9R`
  - por isso o log ainda nao traz `G9R: armed/step/blit/present`; ele so confirma que a falha atual acontece depois de `Emulation RESUMED`
- A rodada local seguinte adicionou uma segunda trilha `G9R`:
  - `G9R: armed`
  - `G9R: step begin`
  - `G9R: step OK frame=... err=...`
  - `G9R: blit begin`
  - `G9R: blit OK`
  - `G9R: present begin`
  - `G9R: present OK`
  - o objetivo e separar se a corrupcao aparece durante `backend_runtime_step_frame()`, `fmsx_v9990_render_frame()`, blit ou apenas apos o primeiro `present`
- A rodada atual endureceu o proprio core `V9990` para o proximo reteste:
  - o `command engine` agora recusa opcodes patologicos quando chegam com `NX/NY=0` e cairiam no caso "maximo" (`2048x4096` ou `0x80000 bytes`) sem setup valido
  - tambem foi adicionado um guard de custo para operacoes absurdamente grandes antes da execucao imediata
  - isso visa impedir que um acesso espurio a `0x60-0x6F` dispare um blit massivo logo apos o resume
- A UART do proprio `V9990` tambem foi instrumentada em build `DEBUG=1`:
  - `G9P in/out ...` para os primeiros acessos de porta ao device
  - `G9C exec/drop ...` para opcode executado ou descartado pelo guard
  - `G9V ...` para os primeiros frames renderizados do `V9990`
  - a ideia e confirmar se a trava nasce de render puro ou de um comando disparado por escrita inesperada nas portas do cartucho
- O reteste seguinte em hardware fechou mais o ponto do bug:
  - o UART mais novo mostra `G9R: step begin` e aborta imediatamente em `dwhcidevice.cpp:1518`
  - nao aparecem `G9R: step OK`, `G9P`, `G9C` nem `G9V`
  - isso indica que a quebra acontece antes do primeiro acesso rastreado ao device e antes do primeiro `render_frame()` do `V9990`
  - a suspeita principal passou a ser o hot-attach do `GFX9000` no estado corrente, e nao mais o renderer/command engine
- A rodada local seguinte mudou a politica de aplicacao do `GFX9000`:
  - `fmsx_v9990_set_enabled()` deixou de fazer `power_on/reset` imediato; agora ele apenas atualiza o estado configurado do device
  - o kernel passou a tratar `GFX9000` como acao pesada diferida no menu
  - ao alternar `GFX9000`, o fluxo agora faz:
    - `config apply`
    - `backend_runtime_menu_reset()`
    - `prime step` ainda no contexto controlado do menu
  - isso evita hot-plug do cartucho/chip no estado atual da CPU e desloca a aplicacao para um ponto de reset mais seguro
- A trilha UART para esse novo fluxo ficou:
  - `G9A: config apply ...`
  - `G9A: menu reset begin/OK/FAIL ...`
  - `G9A: prime step begin/OK/FAIL ...`
  - `G9E: cfg-set/menu-set/start-set/power/reset ...`
- O renderer completo, `command engine`, composicao `Video9000` e deteccao automatica do cartucho `GFX9000` continuam pendentes.
- A validacao da rodada tambem exigiu endurecer o build do topo:
  - `Makefile` raiz agora chama `src clean` com `CHECK_DEPS=0`
  - isso evita que `.d` antigos/corrompidos bloqueiem o rebuild antes da recompilacao completa
- Build atual para o proximo teste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604101907-1e936ec`
  - `TXTDBG BUILD: B96A`
  - `BUILD_HASH: 1e936ec-27da9a0c1f6e42243e0b4b5c7f4c433ad0978304`
- O corte mais recente de depuracao ajustou o hot path do menu:
  - o `prime step` do toggle `GFX9000` foi removido depois de o UART fechar em `G9A: prime step begin ON` com abort em `third_party/circle/lib/timer.cpp:606`
  - o menu voltou a fazer apenas `config apply -> menu reset -> redraw`
  - a depuracao do primeiro frame real voltou para o caminho normal de `resume`
- A telemetria de backend em `DEBUG=1` foi corrigida e ampliada:
  - `src/Makefile` agora propaga `MSXBARE_ENABLE_DEBUG_OVERLAY=$(DEBUG)` tambem aos arquivos `.c`
  - isso expôs um bug latente em `src/backend/msx/modules/fmsx/fmsx_local/MSX.c`, corrigido com um forward declaration local de `RAM`
  - o kernel agora expone `msxbare_debug_trace()` para o backend emitir linhas pelo logger
  - o `fmsx_runtime_step_frame()` ganhou a trilha `G9S`:
    - `G9S: frame begin`
    - `G9S: runz80 begin`
    - `G9S: runz80 end`
    - `G9S: frame end`
- Build atualizada para o novo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604101917-1e936ec`
  - `TXTDBG BUILD: 2AAD`
  - `BUILD_HASH: 1e936ec-ae99c0f5373c8824b32613dc6314d545c23c2c7c`
- O UART do reteste com essa build fechou melhor o ponto da falha:
  - `G9R: step begin`
  - `G9S: frame begin`
  - `G9S: runz80 begin`
  - `G9S: runz80 end`
  - `G9V f:600 m:0 ctl:00 sm0:00 sm1:00 w:320 h:212`
  - sem `G9S: frame end`
- Interpretacao atual:
  - o backend ja passa pelo primeiro `RunZ80()` com `GFX9000=ON`
  - a falha nao esta mais antes do core nem no hot path do menu
  - o `V9990` ainda esta totalmente ocioso (`CONTROL=00`, sem display habilitado), mas o freeze acontece logo depois de entrar no caminho de `render_frame()`
- Resposta local desta rodada:
  - o caminho `render_frame()` do `V9990` agora retorna imediatamente quando o display do chip esta desabilitado
  - nessa politica, `GFX9000=ON` mantem apenas o chip/cartucho presente; se o guest ainda nao habilitou video no `V9990`, o backend nao toca no framebuffer dele
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604101925-1e936ec`
  - `TXTDBG BUILD: C56D`
  - `BUILD_HASH: 1e936ec-f10902084237e1a166d6444a3da09d6e70ee2ad6`
- O UART com `GHOSTGOBLINS.ROM` mostrou que a trilha funcional avancou:
  - com `GFX9000=OFF`, a ROM acusa ausencia do `V9990`
  - com `GFX9000=ON`, a ROM detecta o device e continua executando, mas ainda cai em tela preta
  - a emulacao continua viva, inclusive com `F12`, entao o problema atual ja e de pipeline de video/estado do `V9990`, nao mais de freeze global
- O log de registradores/comandos trouxe o primeiro estado util do guest:
  - escrita em `CONTROL=0x02`
  - escrita em `SCREEN_MODE_0=0x85`
  - escrita em `SCREEN_MODE_1=0x40`
  - disparo de `LMMV` (`op:20`) com area grande
  - ainda sem `display enable` no bit 7 de `CONTROL`
- Ajuste local desta rodada:
  - `cmd_ready()` do `V9990` agora levanta `CMD_IRQ` (`pending_irqs |= 0x04`) alinhado ao `openMSX`
  - o device ganhou trilha curta de registradores criticos:
    - `G9I reg ...`
    - `G9I cmd-ready ...`
  - os logs de render do `V9990` foram ampliados para capturar a transicao ate o primeiro frame ativo real
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604101934-1e936ec`
  - `TXTDBG BUILD: 79FE`
  - `BUILD_HASH: 1e936ec-5cfaaf224ad7b69c8613f5698af93fa6e75d0ba2`
- O UART do reteste com `GHOSTGOBLINS.ROM` confirmou:
  - a ROM detecta o `V9990` quando `GFX9000=ON`
  - a emulacao segue viva e o `F12` continua funcional
  - o `guest` ainda nao habilitou `display enable` em `CONTROL`
  - o log termina com `CMD_IRQ` pendente (`irq:04`) e sem escrita observada em `INTERRUPT_0`
- Resposta local desta rodada:
  - o `V9990` agora propaga IRQ real para a linha de IRQ do MSX quando `pending_irqs & INTERRUPT_0 != 0`
  - escrita em `INTERRUPT_0`, clear de `INTERRUPT_FLAG`, reset e load-state agora reavaliam essa linha
  - o bit `EO` do `STATUS` volta a girar a cada frame mesmo com display do `V9990` desligado, alinhando melhor com o `openMSX`
  - o `STATUS` passou a devolver tambem os bits de borda `0x60` no baseline local, em vez de um status “morto”
  - a trilha UART foi ampliada:
    - mais budget de `G9P out/in`
    - `G9P sts` para leitura de `STATUS`
    - `G9P irq` para leitura de `INTERRUPT_FLAG`
    - mais budget de `G9I reg`
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604101943-1e936ec`
  - `TXTDBG BUILD: 11CE`
  - `BUILD_HASH: 1e936ec-03f37d4d5334c578eddc387d66c58d97352f4e35`
- O UART desta rodada fechou um ponto novo:
  - o guest esta lendo `STATUS` (`0x65`)
  - nao apareceu leitura de `INTERRUPT_FLAG` (`0x66`) no recorte observado
  - depois do `LMMV`, o `STATUS` ainda aparecia preso em `0x60`
  - isso desloca o foco de `IRQ ack` para `STATUS` dinamico (`HR/VR/EO`)
- Resposta local desta rodada:
  - o `STATUS` do `V9990` deixou de devolver `0x60` estatico
  - foi adicionada uma base temporal local em UC ticks para o device
  - `HR/VR` agora sao calculados dinamicamente a partir de timing inspirado no `openMSX`
  - o `STATUS` avanca fase a cada leitura, para o guest enxergar transicoes durante polling apertado
  - o reset do `V9990` agora reposiciona a fase sintetica no inicio da area ativa
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604101949-1e936ec`
  - `TXTDBG BUILD: 52D6`
  - `BUILD_HASH: 1e936ec-67091c953b114f2158ec1881028564b6b01317cf`
- Foi encontrado um bug objetivo nesta rodada:
  - o `PORT_STATUS` (`0x65`) ainda estava preso no caminho estatico antigo
  - o helper novo `fmsx_v9990_read_status_port()` existia, mas nao estava sendo usado no `switch`
- Correcao local aplicada:
  - `FMSX_V9990_PORT_STATUS` agora chama de fato `fmsx_v9990_read_status_port()`
  - isso finalmente coloca em uso o `STATUS` dinamico com `HR/VR/EO`
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604101955-1e936ec`
  - `TXTDBG BUILD: 207A`
  - `BUILD_HASH: 1e936ec-4284a3a0e5dd2fd7533588c0c8b6597b3a30f5fe`
- O UART desta rodada descartou a suspeita de `timer.h`:
  - o assert continua em `dwhcidevice.cpp(1518)`
  - o `addr2line` da pilha fecha em `fmsx_v9990_render_frame()`
  - o ponto exato caiu no hot path do renderer `Bx`, na linha do `src_x`
- Resposta local desta rodada:
  - o renderer `Bx` deixou de usar `% image_width` no hot path
  - para larguras potencia de 2, `src_x` agora usa mascara (`& (image_width - 1)`)
  - o fallback com `%` foi mantido apenas para casos nao-potencia de 2
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102000-1e936ec`
  - `TXTDBG BUILD: 06A1`
  - `BUILD_HASH: 1e936ec-f5a9d387a6accde34eb7f81a988eb2f1c8e17860`

## Entrega tecnica desta iteracao

- API publica/familia:
  - `src/backend/msx/backend.h`
  - `src/backend/msx/backend.c`
  - `src/backend/msx/backend_internal.h`
  - `src/backend/runtime/runtime.h`
- Runtime `fMSX`:
  - `src/backend/msx/modules/fmsx/fmsx_runtime.c`
  - `src/backend/msx/modules/fmsx/fmsx_runtime.h`
  - `src/backend/msx/modules/fmsx/module.c`
- Device `V9990` inicial:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.h`
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
- Integracao no core local:
  - `src/backend/msx/modules/fmsx/fmsx_local/MSX.c`

## Escopo funcional ja entregue

- toggle `GFX9000` do menu agora chega ate o backend MSX
- `V9990` modelado como device separado, sem acoplamento no kernel generico
- janela de I/O `0x60-0x6F` viva somente quando `GFX9000` esta habilitado
- registradores/palette/ponteiros de VRAM basicos inspirados no layout de portas do `openMSX`
- `power_on/reset` do device acoplados ao ciclo `StartMSX()/ResetMSX()`
- extensao de save/load state do runtime para estado leve do `V9990`
- persistencia completa da VRAM do `V9990` dentro do bloco de state versionado
- `command engine` minimo com `STOP`, `LMMC`, `LMMV`, `LMCM`, `LMMM`, `CMMC`, `CMMM`, `BMXL`, `BMLX`, `BMLL`, `LINE`, `SRCH`, `POINT`, `PSET` e `ADVN`
- `STATUS/COMMAND_DATA/REGISTER_DATA` integrados ao estado minimo de comando
- `LMMC/LMCM` com handshake de stream via `TR`, incluindo fluxo de `16bpp`
- `CMMC/CMMM/BMXL/BMLX/BMLL` com baseline funcional no caminho linear `Bx`
- `SRCH` com `BD/border_x` e `LINE` com baseline de Bresenham inspirada no `openMSX`
- `PSET/ADVN` com avanço `YYXX` baseado no manual do `V9990`
- `write masks` de registradores e palette mais proximos do comportamento real
- framebuffer proprio do `V9990` ligado ao pipeline de apresentacao do backend
- mapeamento de VRAM por modo (`Bx`, `P1`, `P2`) no caminho de CPU e renderer
- caminho `Bx` com scroll X/Y, `roll mask` e tratamento inicial de `even/odd`
- renderizacao simplificada de `P1/P2` por `name/pattern table`
- sprites/cursors basicos em `P1/P2`, com limite de `16` sprites por linha e prioridade `front/back`
- decodificacao inicial de modos bitmap a partir de VRAM/palette, com fallback visual para casos ainda nao suportados
- build do kernel e do modulo loadable preservados

## Limites conhecidos desta iteracao

- o renderer atual e um baseline local do backend, nao um porte completo do renderer do `openMSX`
- o `command engine` ainda e parcial; falta principalmente `CMMK`, que depende de uma fonte Kanji ROM que o backend local ainda nao modela
- a composicao `Video9000`, prioridade/superimpose finais e a politica definitiva de selecao entre `V9958` e `V9990` continuam pendentes
- ainda nao existe deteccao automatica do cartucho `GFX9000`; o controle atual e via setting `GFX9000 [ON/OFF]`
- os modos `P1/P2` agora tem renderer e sprites basicos, mas ainda faltam page layout refinado e fidelidade completa
- a composicao `Video9000` e a prioridade/superimpose finais ainda nao foram portadas

## Validacao local desta iteracao

- `scripts/check-third-party-pristine.sh`: OK
- `make DEBUG=1`: OK
- `make backend-module DEBUG=1`: OK
- `make DEBUG=0`: OK
- `make DEBUG=1` apos corrigir o `src/Makefile` para os `.c`: OK
- `make DEBUG=1` apos integrar IRQ/status do `V9990`: OK
- `make backend-module DEBUG=1` apos integrar IRQ/status do `V9990`: OK
- `make DEBUG=1` apos tornar `STATUS` dinamico no `V9990`: OK
- `make backend-module DEBUG=1` apos tornar `STATUS` dinamico no `V9990`: OK
- `make DEBUG=1` apos ligar `PORT_STATUS` ao helper dinamico: OK
- `make DEBUG=1` apos remover `% image_width` do hot path `Bx`: OK
- `make DEBUG=1` apos trocar o `Bx` inicial para decode seguro sem `palette[]`: OK
- `make backend-module DEBUG=1` apos trocar o `Bx` inicial para decode seguro sem `palette[]`: OK
- `make DEBUG=1` apos rearmar telemetria no `display-on` do `V9990`: OK
- `make DEBUG=1` apos cortar o logging do hot path ativo do `V9990`: OK
- `make backend-module DEBUG=1` apos cortar o logging do hot path ativo do `V9990`: OK
- `make DEBUG=1` apos trocar o `Bx` ativo para first-light linear: OK
- `make DEBUG=1` apos trocar o `Bx` ativo para fill solido sem leitura de VRAM: OK
- `make DEBUG=1` apos instrumentar o render ativo em fases (`phase0..phase3`): OK
- Re-teste em hardware: pendente apos remover o render imediato do toggle e adicionar telemetria `G9A`
- Observacao operacional:
  - a iteracao anterior terminou em `make DEBUG=0` e sobrescreveu o `artifacts/kernel8-issue251.img`
  - a imagem correta para o proximo reteste foi regenerada em seguida com `make DEBUG=1`
  - a build de debug atual da issue foi regenerada outra vez apos adicionar a trilha `G9R`

## Atualizacao 2026-04-10 20:09 -03

- UART mais recente:
  - o guest ja detecta o `V9990`, executa `LMMV` e chega ate:
    - `ctl:42 sm0:85 sm1:40 i0:01 irq:04`
    - `ctl:C2 sm0:85 sm1:40 i0:01 irq:00`
  - o crash volta logo depois, ainda materializado como assert em `third_party/circle/lib/usb/dwhcidevice.cpp:1518`
- Fechamento de diagnostico desta rodada:
  - o `addr2line` da pilha atual nao aponta mais para `src_x`
  - o PC interrompido fecha agora em `fmsx_v9990_palette_color()` durante o primeiro caminho de display ativo
  - isso nao prova bug na `palette[]` em si; o mais provavel e corrupcao anterior no primeiro frame `Bx` ativo, com a leitura de palette sendo apenas o ponto onde a IRQ do USB entrou
- Plano coeso de correcao ate o primeiro funcionamento inicial do `V9990`:
  - fase 1: estabilizar o primeiro frame ativo do `V9990`, priorizando seguranca sobre fidelidade
  - fase 2: validar em hardware que `CONTROL=C2` nao derruba mais o loop e que o backend continua vivo apos o primeiro frame `Bx`
  - fase 3: recuperar a leitura real de palette/cores por cima do baseline estavel
  - fase 4: expandir fidelidade de video e fechar as pendencias maiores (`Video9000`, autodetect do cartucho, `CMMK`)
- Resposta local desta rodada:
  - o framebuffer do `V9990` ganhou canarios antes/depois da area de pixels
  - `power_on/reset` voltam a restaurar esses canarios
  - o renderer agora verifica esses guards antes e depois do frame e emite `G9X pre/post` na UART se houver overwrite
  - o primeiro-light do renderer `Bx` deixou de depender da `palette[]`
  - indices `2/4/6bpp` agora usam um decode seguro direto para `RGB565` monotono, preservando enderecamento de VRAM, `scroll` e command engine
  - modos diretos `8/16bpp` continuam usando os conversores locais existentes
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102009-1e936ec`
  - `TXTDBG BUILD: 4B00`
  - `BUILD_HASH: 1e936ec-66c97458f6319fa02a9bed56e46c3f3f3ed348d7`

## Atualizacao 2026-04-10 20:18 -03

- UART do reteste seguinte:
  - nao houve novo assert do Circle
  - nao houve `G9X pre/post`
  - o log termina em `ctl:C2 sm0:85 sm1:40 i0:01 irq:00`
- Interpretacao desta rodada:
  - a ultima imagem tirou o crash explicito anterior
  - mas a UART ficou cega exatamente no ponto critico, porque os budgets de `G9P/G9I/G9V` se esgotaram antes do primeiro frame ativo do `V9990`
  - portanto, esse log ainda nao distingue “congelou no primeiro frame ativo” de “entrou em loop do guest com o display do `V9990` habilitado”
- Resposta local desta rodada:
  - os budgets de telemetria do `V9990` foram ampliados
  - a escrita de `CONTROL` que liga o bit 7 agora rearma a janela de debug e emite `G9A display-on`
  - os primeiros frames ativos do `V9990` agora emitem:
    - `G9A rf-begin`
    - `G9A rf-end`
  - isso garante visibilidade imediatamente apos o `ctl:C2`, sem depender do budget ja consumido no bring-up inicial
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102018-1e936ec`
  - `TXTDBG BUILD: 407D`
  - `BUILD_HASH: 1e936ec-00f620aaed140a91939fead32b3dbcf900a80420`

## Atualizacao 2026-04-10 20:25 -03

- UART do reteste mais recente:
  - o `display-on` realmente acontece
  - o primeiro frame ativo do `V9990` completa inteiro:
    - `G9A display-on`
    - `G9V f:376 m:3 ctl:C2 sm0:85 sm1:40 w:320 h:212`
    - `G9A rf-begin f:376 ...`
    - `G9A rf-end f:376 ...`
  - nao houve assert
  - nao houve `G9X pre/post`
  - o log corta ja no comeco do frame seguinte: `G9V f:377 m:3 ctl:C2 sm0:`
- Fechamento de diagnostico desta rodada:
  - o primeiro frame ativo do `V9990` ja nao e mais o ponto do freeze
  - o novo suspeito virou a propria telemetria UART no caminho quente do video ativo
  - o frame seguinte corta no meio da emissao de `G9V`, o que aponta para saturacao/reentrancia de logging, nao para overwrite do framebuffer
- Resposta local desta rodada:
  - `G9V` deixou de logar enquanto o display do `V9990` estiver ativo
  - a janela rearmada em `display-on` foi reduzida ao minimo:
    - `G9A display-on`
    - um unico `rf-begin`
    - um unico `rf-end`
  - budgets de `port/cmd/reg` apos `display-on` tambem foram reduzidos para nao pressionar UART no caminho ativo
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102025-1e936ec`
  - `TXTDBG BUILD: 1FE1`
  - `BUILD_HASH: 1e936ec-63d11e22287712a32e2623321b60f6672e799b7b`

## Atualizacao 2026-04-10 20:30 -03

- UART do reteste seguinte:
  - `G9A display-on` acontece
  - o log para em `G9A rf-begin`, sem `rf-end`
- Fechamento de diagnostico desta rodada:
  - o freeze voltou para dentro do primeiro render ativo `Bx`
  - como o corte anterior ja tinha reduzido a telemetria ativa, o eixo principal deixa de ser UART e volta para o renderer `Bx`
- Resposta local desta rodada:
  - o caminho `Bx` foi simplificado novamente para um first-light linear
  - essa versao evita:
    - `scroll`
    - `transform_bx`
    - `roll mask`
    - `even/odd`
  - o frame ativo passa a ler VRAM linearmente e converter apenas o minimo necessario por `mode_kind`
  - o objetivo desta fase e provar estabilidade do video ativo antes de recolocar o decode fiel do `Bx`
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102030-1e936ec`
  - `TXTDBG BUILD: 123D`
  - `BUILD_HASH: 1e936ec-2b8733611243a33862d27f79aaa99e1bfcf7e3c4`

## Atualizacao 2026-04-10 20:33 -03

- Resposta local desta rodada:
  - o `Bx` first-light foi simplificado ao maximo
  - o primeiro frame ativo agora nao le VRAM nenhuma
  - o renderer ativo passa a preencher a area inteira com uma cor solida por `mode_kind`
- Objetivo tecnico deste corte:
  - separar definitivamente “freeze no renderer ativo” de “freeze no handoff/apresentacao do framebuffer do `V9990`”
  - se a imagem ainda travar, o proximo alvo deixa de ser decode e passa a ser o simples fato de ativar/apresentar o framebuffer do `V9990`
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102033-1e936ec`
  - `TXTDBG BUILD: 60D5`
  - `BUILD_HASH: 1e936ec-12776fee3d9f0d889ce6ae10aa919558e61b492a`

## Atualizacao 2026-04-10 20:37 -03

- Resposta local desta rodada:
  - o diagnostico saiu de “suposicao de renderer” para bisect rigido por fases
  - o primeiro `display-on` do `V9990` agora executa, em ordem:
    - `phase0 inactive`
    - `phase1 nofill`
    - `phase2 line1`
    - `phase3 full`
- Objetivo tecnico:
  - `phase0`: validar se o freeze acontece mesmo sem o kernel alternar para o framebuffer do `V9990`
  - `phase1`: validar a troca para `active=TRUE` sem nenhuma escrita no framebuffer
  - `phase2`: validar uma unica scanline
  - `phase3`: validar o frame inteiro
- Interpretacao esperada do proximo log UART:
  - se travar em `phase0`, o problema esta antes do handoff de video
  - se travar em `phase1`, o problema esta no handoff/apresentacao do framebuffer ativo
  - se travar em `phase2`, o problema esta na primeira escrita de framebuffer
  - se travar apenas em `phase3`, o problema esta na extensao/custo do frame inteiro
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102037-1e936ec`
  - `TXTDBG BUILD: BACB`
  - `BUILD_HASH: 1e936ec-0dc21536a7ab8bc0b1063f7c5804d0c10aaf7362`

## Atualizacao 2026-04-10 20:42 -03

- O UART do reteste fechou o ponto do freeze com mais precisao:
  - `phase0 inactive` passou
  - `phase1 nofill` passou
  - `phase2 line1` passou
  - o travamento apareceu quando o renderer saiu do trivial e entrou em `phase3 full`
- Interpretacao consolidada desta rodada:
  - o freeze nao esta mais na presenca do chip
  - nao esta no handoff para `active=TRUE`
  - nao esta na primeira escrita do framebuffer
  - o gargalo esta na profundidade/extensao da escrita do primeiro frame ativo do `V9990`
- Resposta local desta rodada:
  - o antigo `phase3 full` foi substituido por um bisect de linhas no primeiro frame ativo:
    - `phase3 line16`
    - `phase4 line64`
    - `phase5 line128`
    - `phase6 line160`
    - `phase7 line212`
  - o helper `fmsx_v9990_fill_frame_lines()` passou a isolar o threshold real sem voltar a heuristicas de renderer
- Objetivo tecnico do proximo reteste:
  - descobrir em qual profundidade de escrita o Raspberry Pi congela de fato
  - correlacionar o ponto exato com os artefatos visuais observados no terco inferior da tela
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102041-1e936ec`
  - `TXTDBG BUILD: 370D`
  - `BUILD_HASH: 1e936ec-652a1692c8b7d7a065230056690b4a01b2f0d5fd`

## Atualizacao 2026-04-10 20:48 -03

- O UART do reteste seguinte estreitou o bisect:
  - `phase3 line16` passou
  - `phase4 line64` passou
  - o freeze agora fica antes de `phase5 line128`
- Isso reforca que o problema nao e mais “ativar o V9990”, e sim algo ligado ao consumo/escrita de uma faixa maior do primeiro frame ativo.
- A inspecao do caminho de apresentacao encontrou um bug concreto no consumidor generico:
  - o `V9990` escreve em framebuffer com `pitch` fixo de `1280` pixels
  - o blit do kernel estava lendo as linhas como se o buffer fosse tight (`src_y * width`)
  - isso explica os artefatos visuais incoerentes com as linhas efetivamente escritas
- Correcao local desta rodada:
  - o contrato generico de apresentacao ganhou `pitch_pixels`
  - o backend `fMSX` agora publica `pitch_pixels = g_image_buffer_width`
  - o `V9990` agora publica `pitch_pixels = FMSX_V9990_FB_MAX_WIDTH`
  - o blit do kernel passou a usar `src_pitch` em todos os caminhos de copia/escalonamento, sem acoplamento ao backend MSX
- Objetivo tecnico do proximo reteste:
  - validar se o freeze era efeito colateral da leitura com stride errado
  - verificar se a imagem ativa do `V9990` deixa de produzir artefatos no terco inferior
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102048-1e936ec`
  - `TXTDBG BUILD: 61AD`
  - `BUILD_HASH: 1e936ec-32bbfe5cc8e19b31e14a8ad583956c061ec68cfa`

## Atualizacao 2026-04-10 20:52 -03

- O reteste seguinte mostrou que o congelamento continuou exatamente no mesmo ponto:
  - `phase3 line16` passou
  - `phase4 line64` passou
  - nao houve avancos para `phase5 line128`
- Conclusao desta rodada:
  - o conserto de `pitch_pixels` era necessario para o consumidor generico e corrige um bug real de stride
  - mas ele nao foi suficiente para remover o freeze do primeiro frame ativo
- Resposta local desta rodada:
  - o diagnostico passou a separar explicitamente “layout do buffer real do `V9990`” de “volume de escrita”
  - foi adicionado um segundo framebuffer de depuracao, compacto, usado apenas em `DEBUG=1`
  - a trilha de fases agora fica:
    - `phase0 inactive`
    - `phase1 nofill`
    - `phase2 line1`
    - `phase3 line16`
    - `phase4 line64`
    - `phase5 compact128`
    - `phase6 compact212`
    - `phase7 live128`
    - `phase8 live160`
    - `phase9 live212`
- Objetivo tecnico do proximo reteste:
  - se `compact128` passar, mas `live128` travar, o problema esta no layout/alcance do framebuffer real do `V9990`
  - se `compact128` tambem travar, o problema deixa de ser o layout do buffer e passa a ser custo/tempo geral de escrita no primeiro frame ativo
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102052-1e936ec`
  - `TXTDBG BUILD: 854A`
  - `BUILD_HASH: 1e936ec-257d4bf926ccbcaf51e310cbaef72cba3d878f02`

## Atualizacao 2026-04-10 21:07 -03

- O reteste seguinte regrediu no boot: congelamento antes da UART.
- Diagnostico local desta rodada:
  - a fase `compact` da rodada anterior tinha introduzido um segundo framebuffer inteiro de depuracao em `.bss`
  - o ELF dessa build foi de `0x3B4D95` bytes em `.bss` (`3886869`)
  - o simbolo extra era `g_fmsx_v9990_debug_framebuffer` com `0x109000` bytes
  - esse buffer nao existia nas builds que ainda conseguiam bootar ate a UART
- Correcao local desta rodada:
  - o framebuffer extra de debug foi removido
  - o bisect `compact` continua existindo, mas agora reaproveita o proprio `g_fmsx_v9990_framebuffer` com `pitch_pixels = width`
  - isso preserva a separacao:
    - `compact128` / `compact212`
    - `live128` / `live160` / `live212`
    sem custo adicional de memoria estatica
- Medicao apos a correcao:
  - `.bss` caiu para `0x2ACD95` bytes (`2801429`)
  - reducao exata de `0x109000` bytes em relacao a build que congelava antes da UART
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102107-1e936ec`
  - `TXTDBG BUILD: D355`
  - `BUILD_HASH: 1e936ec-cb7bad6b5d6e5a2e9b3bd7c5a9f19260788c37f3`

## Atualizacao 2026-04-10 23:08 -03

- Leitura consolidada da UART anterior:
  - o log para em `phase4 line64`
  - isso nao prova que `64` linhas passaram; o marcador era emitido antes do preenchimento
- Correcao local desta rodada:
  - cada fase critica agora registra tambem conclusao real (`done`)
  - o bisect foi refinado para:
    - `phase2 line1 done`
    - `phase3 line16 done`
    - `phase4 line32 done`
    - `phase5 line48 done`
    - `phase6 line64 done`
    - `phase7 compact96 done`
    - `phase8 compact128 done`
    - `phase9 live128 done`
- Objetivo tecnico do proximo reteste:
  - descobrir o ultimo tamanho de bloco que conclui de fato, e nao apenas o ultimo marcador de entrada
  - separar se o gargalo real esta em `32-64` linhas ou so depois disso
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102308-1e936ec`
  - `TXTDBG BUILD: E5E0`
  - `BUILD_HASH: 1e936ec-1461b5d20dd6bbb67d9afdcd2a10e725f5ce2c33`

## Atualizacao 2026-04-10 23:13 -03

- O UART desta rodada finalmente fechou um ponto sem ambiguidade:
  - `phase2 line1 done`
  - `phase3 line16 done`
  - `phase4 line32 done`
  - `phase5 line48 done`
  - o freeze acontece depois disso
- Interpretacao atual:
  - o renderer ativo ja conclui pelo menos `48` linhas reais
  - a falha agora pode estar:
    - entre `48` e `64` linhas dentro do render
    - ou logo apos o `render_frame()` devolver, no restante do `backend_runtime_step_frame()` ou no `blit/present`
- Resposta local desta rodada:
  - o `display-on` do `V9990` agora rearma tambem a trilha `G9S` do runtime por alguns frames
  - isso deve mostrar no proximo UART se o freeze acontece antes ou depois de `G9S: frame end`
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102313-1e936ec`
  - `TXTDBG BUILD: 3121`
  - `BUILD_HASH: 1e936ec-07f4a18403da9c8215a1ad5147970224e8426310`

## Atualizacao 2026-04-10 23:17 -03

- Leitura consolidada da UART mais recente:
  - o log ainda fecha em `G9A phase5 line48 done`
  - nao aparece `G9S: frame end`
  - isso elimina o `blit/present` do kernel como suspeito primario nesta rodada
- Interpretacao atual:
  - o ultimo trecho sem evidencia entre o ultimo marcador do `V9990` e o fim do frame esta em `backend_runtime_step_frame()`
  - a fronteira restante passa a ser:
    - retorno final de `fmsx_v9990_render_frame()`
    - `fmsx_audio_end_frame_render_accounting()`
    - `RenderAndPlayAudio(samples_per_frame)`
- Resposta local desta rodada:
  - `src/backend/msx/modules/fmsx/fmsx_runtime.c` ganhou telemetria curta e objetiva:
    - `G9S: v9990 end`
    - `G9S: audio acc begin`
    - `G9S: audio acc ready|skip`
    - `G9S: audio play begin`
    - `G9S: audio play end`
  - o objetivo e separar, no proximo reteste, se o freeze ainda esta no tail do render ou se a falha real esta no caminho de audio apos o primeiro frame ativo do `V9990`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102317-1e936ec`
  - `TXTDBG BUILD: 3EFC`
  - `BUILD_HASH: 1e936ec-20187a688632b84a3077988d762c8e11eecb4766`

## Atualizacao 2026-04-10 23:23 -03

- O UART do reteste com a build `3EFC` fechou um ponto importante:
  - para `phase0` ate `phase4`, o runtime completa:
    - `G9S: v9990 end`
    - `G9S: audio acc ...`
    - `G9S: audio play ...`
    - `G9S: frame end`
  - no frame de `phase5 line48`, o log para em `G9A phase5 line48 done`
  - isso tira o audio do foco imediato e confirma que a falha segue dentro do tail do proprio `fmsx_v9990_render_frame()`
- Diagnostico local desta rodada:
  - os caminhos de `phase2..phase9` retornavam antes do `post-guard` global
  - portanto um overwrite silencioso nessas fases podia escapar sem qualquer log
- Correcao local desta rodada:
  - os `return` das fases de debug foram centralizados num finalize unico
  - esse finalize agora sempre faz `phase-post` guard check antes de sair
  - foi adicionado um marcador minimo `G9A phase-ret` imediatamente antes do retorno da fase
  - o objetivo do proximo UART e separar:
    - se aparece `phase-ret` e depois trava, o problema esta depois do finalize da fase
    - se nao aparece `phase-ret`, a falha continua dentro do tail imediato do render/finalize
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102323-1e936ec`
  - `TXTDBG BUILD: 8CA8`
  - `BUILD_HASH: 1e936ec-adcb5535b069515899f20f3aa380dfbc4cf8a97e`

## Atualizacao 2026-04-10 23:33 -03

- Diagnostico estrutural desta rodada:
  - o framebuffer do `V9990` nao esta colidindo com a stack
  - confirmacao local no ELF:
    - `g_fmsx_v9990_framebuffer_storage` em `0x246590`
    - fim do storage em `0x34f598`
    - `_end`/fim do `.bss` em `0x3e3415`
    - folga ate o fim da `.bss`: `605821` bytes
  - portanto o freeze em `phase5 line48` nao e explicado por alcance do framebuffer ate a stack
- Bug objetivo encontrado:
  - os "guards" anteriores do framebuffer eram falsos
  - eles estavam em `.data`, antes de `__bss_start`, enquanto o framebuffer real estava em `.bss`
  - isso significa que overwrite do framebuffer nunca seria detectado pelo guard antigo
- Correcao local desta rodada:
  - o framebuffer passou a viver em `g_fmsx_v9990_framebuffer_storage`
  - os guards baixo/alto agora sao fisicamente adjacentes ao array de pixels no mesmo bloco em `.bss`
  - o footprint da imagem foi preservado:
    - regressao temporaria para `1836280` bytes foi corrigida ao remover inicializacao estatica do storage
    - `kernel8.img` voltou para `750824` bytes
- Objetivo tecnico do proximo reteste:
  - verificar se o freeze em `phase5` agora dispara `phase-post`/guard real
  - se nao disparar guard, o proximo suspeito deixa de ser overwrite linear do framebuffer e passa a ser o tail de controle/logica do renderer
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - inspeção local do ELF via `aarch64-elf-nm`
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102333-1e936ec`
  - `TXTDBG BUILD: 48E3`
  - `BUILD_HASH: 1e936ec-51450d773842c79e45b94c98cf6b28e7ea6900d5`

## Atualizacao 2026-04-10 23:38 -03

- Mudanca de estrategia desta rodada:
  - a depuracao do `V9990` deixou de depender exclusivamente de ciclos em hardware
  - foi criado um harness host-side reutilizavel em:
    - `tools/host/v9990_phase_harness.c`
    - `scripts/run-v9990-host-harness.sh`
  - ele compila `src/backend/msx/modules/fmsx/fmsx_v9990.c` nativamente com `ASan/UBSan`
- Resultado local do harness:
  - passa por `phase5 line48`, `phase6 line64`, `phase8 compact128`, `phase9 live128`
  - continua estavel tambem depois do fim das fases artificiais, ja no render normal
  - nao houve `ASan`, `UBSan` nem asserts locais
- Conclusao tecnica nova:
  - o problema deixou de ser tratado como "bug obvio no renderer puro do V9990"
  - com o harness passando no host, o foco agora migra para interacao especifica do target Raspberry/debug path
- Otimizacao aplicada para reduzir ciclos de hardware:
  - o tracing de fase via UART (`phaseX`, `phase-ret`) foi desativado por default no build do target
  - esse tracing agora fica ativo apenas no harness host-side via `-DMSXBARE_V9990_PHASE_TRACE_UART=1`
  - com isso, o Raspberry deixa de gastar UART no hot path do renderer enquanto o harness preserva a visibilidade detalhada das fases
- Impacto observado no build:
  - `kernel8.img` caiu para `750632` bytes com o tracing de fase removido do target
- Novo fluxo recomendado a partir daqui:
  - primeiro reproduzir/validar no harness host-side
  - so depois disso gerar uma build de hardware para um reteste unico e direcionado
- Validacao local:
  - `scripts/run-v9990-host-harness.sh 12`
  - `scripts/run-v9990-host-harness.sh 32`
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual para o proximo reteste em hardware:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102338-1e936ec`
  - `TXTDBG BUILD: 9911`
  - `BUILD_HASH: 1e936ec-729438c4c4b948fc8bb2d409b86ccdcb2949ed5f`

## Atualizacao 2026-04-10 23:44 -03

- Correcao de estrategia desta rodada:
  - o tracing de fase do target Raspberry foi restaurado em `DEBUG=1`
  - a remocao desse tracing do target foi um erro de processo, porque reduziu visibilidade no campo sem autorizacao explicita
  - o harness host-side continua existindo em paralelo; ele nao substitui a UART do target
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual com UART restaurada no target:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604102344-1e936ec`
  - `TXTDBG BUILD: F4EE`
  - `BUILD_HASH: 1e936ec-3be495363fb90f16407f466f5846c9ef4656862f`

## Atualizacao 2026-04-11 00:01 -03

- A trilha local desta rodada mudou o canal da UART do backend sem remover nenhuma mensagem do target:
  - `msxbare_uart_write()` nao chama mais `CSerialDevice::Write()` diretamente no meio do `step/render`
  - agora ele enfileira os bytes em memoria
  - o `Write()` fisico da serial foi movido para pontos controlados do kernel, fora do hot path do `V9990`:
    - logo apos `backend_runtime_step_frame()`
    - logo apos `PresentIfDirty()`
    - logo apos a inicializacao do `UART + Logger`
- Objetivo tecnico da mudanca:
  - preservar a UART do target em `DEBUG=1`
  - evitar que o primeiro bring-up do `V9990` continue chamando o driver de serial do Circle no meio do `render_frame()`
  - reduzir a chance de o freeze atual ser efeito colateral do proprio caminho sincrono de telemetria
- O harness host-side continua passando apos essa mudanca:
  - `scripts/run-v9990-host-harness.sh 20`
  - segue concluindo `phase5`, `phase6`, `phase8`, `phase9` e o render normal
- Validacao local desta rodada:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `scripts/run-v9990-host-harness.sh 20`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604110001-1e936ec`
  - `TXTDBG BUILD: B869`
  - `BUILD_HASH: 1e936ec-7cf168cae02e4ed64141ea2f13e386a6054982bc`

## Atualizacao 2026-04-11 00:08 -03

- Leitura do UART mais recente (`/private/tmp/msx2p-boot-serial.log`) fechou o novo corte real:
  - o bring-up ativo do `V9990` agora completa ate `phase3 line16 done`
  - o runtime tambem completa `G9S: v9990 end`, `audio acc`, `audio play` e `G9S: frame end`
  - o log nao mostra `assert`, `panic` nem `UARTDROP`
- Conclusao tecnica nova:
  - o freeze deixou de ficar no `render_frame()` ate `phase3`
  - a fronteira atual esta depois do retorno de `backend_runtime_step_frame()`
  - o suspeito principal agora passa a ser o trecho do kernel entre:
    - `BlitBackendFrame()`
    - `PresentIfDirty()`
    - `Scheduler::Yield()`
- Resposta local desta rodada:
  - foi adicionada uma nova trilha curta `G9K` no kernel, rearmada no `display-on` do `V9990`
  - essa trilha cobre:
    - `G9K: blit begin/end`
    - `G9K: present begin/end`
    - `G9K: yield begin/end`
  - o hook do `display-on` agora rearma tanto a trilha `G9S` do runtime quanto a `G9K` do kernel
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `scripts/run-v9990-host-harness.sh 12`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604110008-1e936ec`
  - `TXTDBG BUILD: E7E0`
  - `BUILD_HASH: 1e936ec-d4bc9aa9f1b2387f4a056badf4a570bf812462c6`

## Atualizacao 2026-04-11 00:12 -03

- Leitura do UART com a trilha `G9K` fechou melhor o corte:
  - apos `phase3 line16`, o kernel completa:
    - `G9K: blit begin/end`
    - `G9K: present begin/end`
    - `G9K: yield begin/end`
  - o log seguinte avanca ate:
    - `phase4 line32 done`
    - `G9S: v9990 end`
    - `G9S: audio acc ready`
    - `G9S: audio play end`
    - `G9S: frame end`
  - e para exatamente ai
- Conclusao tecnica nova:
  - o freeze ja passou por `blit`, `present` e `yield` do frame anterior
  - a fronteira atual ficou ainda mais estreita:
    - depois de `G9S: frame end`
    - antes do proximo `G9K: blit begin`
  - isso coloca o suspeito principal no trecho do kernel imediatamente apos o retorno do runtime, antes da entrada no `blit` do frame seguinte
- Resposta local desta rodada:
  - a trilha `G9K` foi refinada para o pos-step do kernel, cobrindo:
    - `G9K: step ret`
    - `G9K: status begin/end`
    - `G9K: sync begin/end`
    - `G9K: flush begin/end`
    - `G9K: tick end`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `scripts/run-v9990-host-harness.sh 8`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604110012-1e936ec`
  - `TXTDBG BUILD: 7DD7`
  - `BUILD_HASH: 1e936ec-619968423fbb0d5870dbd98d406c8d0d2c9a104a`

## Atualizacao 2026-04-11 00:16 -03

- O UART mais recente fechou o corte atual com a trilha `G9K` refinada:
  - o ultimo trecho observado e:
    - `G9K: step ret`
    - `G9K: status begin/end`
    - `G9K: sync begin/end`
    - `G9K: flush begin/end`
    - `G9K: tick end`
    - `G9K: blit begin/end`
    - `G9K: present begin/end`
    - `G9K: yield begin/end`
  - o log para exatamente em `G9K: yield end`
- Conclusao tecnica nova:
  - a falha atual ja passou por todo o pos-step do kernel, incluindo `blit`, `present` e `yield`
  - o proximo corte precisa entrar no topo da iteracao seguinte do loop principal:
    - `loop top`
    - `USB`
    - tarefas diferidas
    - `frame pacing`
    - entrada no proximo gate de step
- Resposta local desta rodada:
  - a trilha `G9K` foi expandida no topo do loop para marcar:
    - `G9K: loop top`
    - `G9K: usb begin/end`
    - `G9K: deferred begin/end`
    - `G9K: pace begin/end`
    - `G9K: step gate`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `scripts/run-v9990-host-harness.sh 6`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604110016-1e936ec`
  - `TXTDBG BUILD: BA93`
  - `BUILD_HASH: 1e936ec-77721a3dab50991f47fb24e43db18677948a8697`

## Atualizacao 2026-04-11 00:20 -03

- O UART atual confirmou um corte mais estreito:
  - o `V9990` ja passa por:
    - `phase0 inactive`
    - `phase1 nofill`
    - `phase2 line1 done`
    - `phase3 line16 done`
  - depois disso o kernel ainda passa por:
    - `G9K: step ret`
    - `G9K: status begin/end`
    - `G9K: sync begin/end`
    - `G9K: flush begin/end`
    - `G9K: tick end`
    - `G9K: blit begin/end`
    - `G9K: present begin/end`
    - `G9K: yield begin/end`
  - o ultimo ponto observado continua sendo `G9K: yield end`
- Conclusao tecnica nova:
  - o freeze atual nao esta mais no `backend_runtime_step_frame()` nem no primeiro `render_frame()` ativo do `V9990`
  - a fronteira restante ficou entre o trecho imediatamente posterior ao `yield` e o inicio real da proxima iteracao do loop
  - o candidato mais forte agora e o `FlushBackendUartTraceBuffer()` final, porque ele acontece logo apos `yield end` e antes de qualquer nova marca da proxima iteracao
- Resposta local desta rodada:
  - o flush de UART do backend foi mantido no target `DEBUG=1`, mas agora com limite por chamada:
    - chunk maximo de `128` bytes por `Write()`
    - budget maximo de `256` bytes por chamada de flush
  - a trilha `G9K` ganhou o corte pos-yield:
    - `G9K: post-yield consume begin/end`
    - `G9K: post-yield flush begin/end`
  - a trilha `G9K` no topo do loop agora tambem drena backlog cedo:
    - `G9K: top flush begin/end`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604110020-1e936ec`
  - `TXTDBG BUILD: 1667`
  - `BUILD_HASH: 1e936ec-7aed2623c7cc4ef9b09425ebbcfd3923b0f6cbd4`

## Atualizacao 2026-04-11 00:27 -03

- O UART mais recente empurrou o corte outra vez:
  - depois de `phase3 line16 done`, o kernel agora tambem passa por:
    - `G9K: post-yield consume begin/end`
    - `G9K: post-yield flush begin/end`
    - `G9K: loop top`
    - `G9K: top flush begin/end`
    - `G9K: usb begin/end`
    - `G9K: deferred begin/end`
    - `G9K: pace begin/end`
  - o ultimo ponto observado ficou em `G9K: step gat`, isto e, ja na entrada do gate do proximo step
- Conclusao tecnica nova:
  - a falha atual saiu do pos-yield e agora ficou entre `G9K: step gate` e o primeiro `G9S: frame begin` da iteracao seguinte
  - isso deixa como suspeitos imediatos:
    - o empacotamento de input antes do `backend_runtime_step_frame()`
    - a propria chamada inicial do `backend_runtime_step_frame()` antes de o runtime emitir `G9S: frame begin`
- Resposta local desta rodada:
  - o kernel ganhou os marcadores:
    - `G9K: input key end`
    - `G9K: input joy end`
    - `G9K: step call`
  - esses marcadores sao drenados com flush explicito antes de entrar no `backend_runtime_step_frame()`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604110027-1e936ec`
  - `TXTDBG BUILD: 3177`
  - `BUILD_HASH: 1e936ec-f3d5d586bff6c587cad41dc91e84b23fa3a5f28d`

## Atualizacao 2026-04-11 00:34 -03

- O UART mais recente empurrou o corte mais uma vez:
  - agora a execucao ja passa por:
    - `G9K: input key end`
    - `G9K: input joy end`
    - `G9K: step call`
    - `G9S: frame begin`
    - `G9S: runz80 begin/end`
    - `G9A phase4 line32 done`
    - `G9S: v9990 end`
  - o log corta logo depois, no inicio do trecho `G9S: audio ...`
- Conclusao tecnica nova:
  - o freeze atual ja passou pela entrada do step, pelo `RunZ80()` e pelo renderer do `V9990` ate `line32`
  - a fronteira restante ficou no bloco de audio do runtime logo apos o `V9990`:
    - contabilidade `fmsx_audio_end_frame_render_accounting()`
    - ou o render propriamente dito `RenderAndPlayAudio()`
  - o corte anterior estava parcialmente ambiguo porque o budget de flush da UART no target era pequeno demais e truncava o pacote de logs do step
- Resposta local desta rodada:
  - o flush da UART no target continua presente, mas agora usa budget maior durante a janela de trace do `GFX9000`:
    - budget normal: `256`
    - budget em trace window: `2048`
    - chunk por `Write()`: `128`
  - o runtime de audio ganhou marcadores mais precisos:
    - `G9S: audio acc call`
    - `G9S: audio acc ret0` / `G9S: audio acc retnz`
    - `G9S: audio play call`
    - `G9S: audio play end`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604110034-1e936ec`
  - `TXTDBG BUILD: 17C5`
  - `BUILD_HASH: 1e936ec-a4a3517d8aa30148910b3c971ee2b71bb4bc7921`

## Atualizacao 2026-04-11 13:00 -03

- O UART mais recente mostrou um detalhe importante:
  - as fases `0`, `1`, `2` e `3` chegam ate:
    - `G9S: audio acc call`
    - `G9S: audio acc ret0`
    - `G9S: audio play call`
    - `G9S: audio play end`
  - na `phase4 line32`, o log para em `G9S: au`
- Conclusao tecnica desta leitura:
  - isso nao prova trava dentro do audio
  - prova apenas que o pacote de logs do step estava sendo truncado pelo flush do target antes de mostrar o corte real
  - como `phase4 line32 done` ja aparece no log, o passo inteiro ja tinha retornado ao menos ate o flush pos-step
- Resposta local desta rodada:
  - a UART do target foi mantida intacta
  - o `trace window` agora drena a fila inteira do backend (`sizeof(queue)`), em vez de limitar a `2048` bytes
  - isso elimina a ambiguidade do flush parcial durante a janela de depuracao do `GFX9000`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111300-1e936ec`
  - `TXTDBG BUILD: 7D5C`
  - `BUILD_HASH: 1e936ec-fb0a58350ca36a04afde5db3881f157bacbf3d7f`

## Atualizacao 2026-04-11 13:06 -03

- A ultima leitura continua travando na mesma regiao logica:
  - `phase4 line32 done`
  - `v9990 end`
  - e o pacote verbose corta em `G9S: au`
- Conclusao tecnica desta rodada:
  - o trace verbose do hot path esta mascarando o ponto real de corte
  - neste estado, continuar empilhando strings longas na UART so piora a visibilidade e nao melhora o diagnostico
- Resposta local desta rodada:
  - o hot path do `GFX9000` foi trocado para marcadores compactos de 1 byte durante a janela ativa
  - o objetivo agora e preservar ordem causal, nao texto longo
  - o `kernel` passou a compactar `G9K` em marcadores curtos
  - o `runtime` passou a compactar `G9S` em marcadores curtos
  - o `V9990` passou a compactar `phase*` e `rf-begin/rf-end`
  - a UART do target continua ativa; nada foi removido, apenas comprimido
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111306-1e936ec`
  - `TXTDBG BUILD: 7CEB`
  - `BUILD_HASH: 1e936ec-07420d5bafd5d2fc70d5c79c267a2ef04b3a59da`

## Atualizacao 2026-04-11 13:16 -03

- A leitura compacta da UART finalmente fechou um comportamento estrutural:
  - apos `display-on`, a sequencia progride por `phase0`, `phase1`, `phase2`, `phase3`, `phase4`, `phase5` e `phase6`
  - isso acontece sem retornar ao kernel entre todas as fases visiveis
- Conclusao tecnica nova:
  - o runtime ainda estava em modo `boot burst` e podia produzir varias frames dentro de uma unica chamada de `backend_runtime_step_frame()`
  - esse comportamento e aceitavel para warmup normal, mas nao para o caminho do `GFX9000`, onde o primeiro renderer ativo fica muito mais caro
  - o freeze observado passa a bater com starvation dentro de uma chamada longa demais, nao com um ponto isolado de audio ou de `phase4`
- Resposta local desta rodada:
  - `fmsx_runtime_step_frame()` agora desliga o multi-frame burst durante o warmup sempre que `g_gfx9000_enabled` estiver ativo
  - no caminho `GFX9000`, cada chamada do runtime volta a processar apenas `1` frame por vez ate o warmup drenar naturalmente
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111316-1e936ec`
  - `TXTDBG BUILD: 889B`
  - `BUILD_HASH: 1e936ec-2672e448724855cc36c3a60c9b1db38a7dd91146`

## Atualizacao 2026-04-11 13:30 -03

- A leitura compacta anterior fechou um novo problema de instrumentacao:
  - o alfabeto compacto ainda tinha colisao entre marcadores do `kernel` e do `runtime`
  - alem disso, `phase2..phase9` ainda vazavam em formato verbose na janela ativa
- Conclusao tecnica desta rodada:
  - a ordem dos eventos ainda estava parcialmente ambigua
  - antes de seguir no bisect, era necessario tornar o stream compacto realmente disjunto entre subsistemas
- Resposta local desta rodada:
  - `kernel`, `runtime` e `V9990` agora usam alfabetos compactos sem colisao
  - `phase2..phase9` deixaram de cair para texto verbose na janela compacta
  - a intencao agora e que o proximo UART mostre uma sequencia curta, mas inequivoca
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111330-1e936ec`
  - `TXTDBG BUILD: D7F6`
  - `BUILD_HASH: 1e936ec-b1fe36b2cfa56d4dc9ff7f7726be525884058936`

## Atualizacao 2026-04-11 13:38 -03

- A leitura compacta mais recente finalmente permitiu uma conclusao estrutural melhor:
  - o burst interno do runtime ja nao e o unico responsavel pelo avancar de varias fases
  - ainda havia possibilidade de `double-step` no loop principal do kernel por causa do catch-up (`max_catchup_steps=2`)
- Conclusao tecnica nova:
  - com `GFX9000` ativo, o kernel ainda podia chamar `backend_runtime_step_frame()` duas vezes no mesmo loop principal
  - isso mantinha o caminho ativo do `V9990` acumulando trabalho demais por iteracao, mesmo apos o corte do burst dentro do runtime
- Resposta local desta rodada:
  - o catch-up do kernel agora cai para `1` quando `backend_runtime_get_gfx9000_enabled()` estiver ativo
  - fora do caminho `GFX9000`, o comportamento antigo de `2` passos maximos continua igual
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111338-1e936ec`
  - `TXTDBG BUILD: 9554`
  - `BUILD_HASH: 1e936ec-7254b1495d0a3c7dff87595a6c1c480fd9e6cb4f`

## Atualizacao 2026-04-11 13:50 -03

- A leitura nova do UART (`/private/tmp/msx2p-boot-serial.log`) fechou um problema no proprio diagnostico:
  - a sequencia observada chega ate `phase6 line64 done`
  - cada fase observada (`0..6`) conclui tambem o ciclo completo do kernel
  - o stream termina em `...GKJjC`, isto e, no limite entre `step gate`, envio de input e a chamada do proximo `backend_runtime_step_frame()`
- Conclusao tecnica desta rodada:
  - o log anterior nao prova mais travamento exatamente na `phase6`
  - como o `display-on` rearma a instrumentacao no meio de um frame ja em andamento, a janela de `8` frames ficou curta demais
  - havia ainda bugs na propria instrumentacao:
    - colisao de marcador compacto no kernel
    - tabela de fases do `V9990` desatualizada depois da troca de `compact96/128` para `live96/128/160/212`
    - o gate de fases do `V9990` ainda limitava a ladder a `10` passos, deixando a `phaseA` inatingivel
- Resposta local desta rodada:
  - a janela de trace de `G9S` e `G9K` subiu de `8` para `16` frames
  - `G9K: step call` agora usa marcador compacto unico (`j`)
  - a tabela compacta de fases do `V9990` foi alinhada para:
    - `phase7 live96` -> `7`
    - `phase8 live128` -> `8`
    - `phase9 live160` -> `9`
    - `phaseA live212` -> `A`
  - o gate de fases do `V9990` passou de `< 10` para `< 11`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111350-1e936ec`
  - `TXTDBG BUILD: 22B7`
  - `BUILD_HASH: 1e936ec-d1b571b3c67e819d4a4a91b0a019ef2f16176288`

## Atualizacao 2026-04-11 13:55 -03

- Leitura mais nova do UART mostrou que o corte saiu de vez do renderer do `V9990`:
  - a sequencia compacta progride ate `phase9 live160 done`
  - depois disso ainda aparecem `phase-ret`, `v9990 end`, `audio acc`, `audio play`, `frame end`, `step ret`, `status`, `sync`
  - o ultimo marcador compacto observado e `u` (`G9K: flush begin`)
  - o `U` (`flush end`) nao aparece
- O mesmo log mostrou interferencia de logger normal no meio da janela compacta:
  - `Throttle event: MIXED state=0x00050000`
  - `CLK THR ARM:1200 CORE:400 TEMP:60 ...`
- Conclusao tecnica desta rodada:
  - o `V9990` ja nao e o suspeito principal neste recorte
  - a fronteira atual caiu para dentro de `FlushBackendUartTraceBufferTraceWindow()` no kernel
  - o logger normal de throttle/clock estava concorrendo com a janela compacta do `GFX9000`
- Resposta local desta rodada:
  - o budget da janela de trace caiu de “fila inteira” para `2048` bytes por flush
  - logs de `Throttle event` e `CLK ...` agora deixam de ir ao `CLogger` quando a janela do `GFX9000` estiver ativa
  - nesses casos eles passam a ser enfileirados no mesmo canal `msxbare_uart_write()`, preservando ordem e evitando reentrancia do serial/logger no meio do trace
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111355-1e936ec`
  - `TXTDBG BUILD: 59B4`
  - `BUILD_HASH: 1e936ec-24e53ea65e1e425bdf791936f3c58e7b485dfc83`

## Atualizacao 2026-04-11 14:02 -03

- O ultimo conjunto de logs + print consolidou duas leituras:
  - o `V9990` ja progride ate `phase9 live160 done`
  - o padrao visual com linhas brancas horizontais e o ladder sintetico de bring-up (`phase2..phase9`) somado a `scanlines`; ele nao representa ainda o renderer real do jogo
  - o pequeno bloco colorido no centro indica que o guest ja esta escrevendo dados reais do `GFX9000` por baixo do padrao sintetico
- O gargalo confirmado desta rodada:
  - o ultimo congelamento nao estava mais no renderer do `V9990`
  - a fronteira caiu em `FlushBackendUartTraceBufferTraceWindow()` no kernel
  - alem disso, logs `G9R/G9A` ainda estavam indo para `CLogger`, concorrendo com a janela compacta
- Resposta local desta rodada:
  - a janela ativa do `GFX9000` deixou de fazer `flush` imediato da fila UART
  - durante a janela ativa, `msxbare_debug_trace()` agora enfileira direto em `msxbare_uart_write()` e nao passa pelo `CLogger`
  - os logs `G9R` e `G9A` do kernel (`step/blit/present/armed/pause/resume`) tambem deixam de ir ao `CLogger` durante a janela ativa e passam a ser enfileirados no mesmo stream da UART compacta
- Objetivo tecnico:
  - remover o gargalo de serial/logger do meio do frame
  - deixar o sistema atravessar `phaseA live212` e finalmente chegar ao renderer real do `V9990`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111402-1e936ec`
  - `TXTDBG BUILD: 91EE`
  - `BUILD_HASH: 1e936ec-4f35cb2aecd585296d44eb8f63463667fc78d7c4`

## Atualizacao 2026-04-11 14:10 -03

- A leitura seguinte do UART afinou mais o corte:
  - a sequencia vai ate `phase8 live128 done`
  - depois disso ainda passam `phase-ret`, `v9990 end`, `audio acc`, `audio play`, `frame end`, `step ret`, `status`, `sync`, `flush end`, `tick end`, `blit begin/end` e `present begin/end`
  - o ultimo marcador compacto observado virou `M` (`G9K: present end`)
  - o proximo marcador esperado seria `w` (`G9K: yield begin`), que nao aparece
- Conclusao tecnica desta rodada:
  - o corte saiu do `flush` da UART e foi empurrado para o pos-`PresentIfDirty()`
  - o `flush` normal logo apos o `present` ainda era um suspeito forte, porque continuava rodando mesmo com a janela ativa
- Resposta local desta rodada:
  - `FlushBackendUartTraceBuffer()` agora tambem retorna imediatamente enquanto a janela ativa do `GFX9000` estiver aberta
  - com isso, nenhum `flush` da fila UART roda mais no meio do frame durante a janela compacta
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111410-1e936ec`
  - `TXTDBG BUILD: 96C7`
  - `BUILD_HASH: 1e936ec-e10c600a6338cd82596929f56f92dc95dd80ea05`

## Atualizacao 2026-04-11 14:21 -03

- O corte mais recente voltou para antes do `display-on` do `V9990`:
  - o ultimo estado confirmado no UART fica em:
    - `G9C exec op:20 nx:512 ny:576 ...`
    - `G9I cmd-ready ctl:02 sm0:85 sm1:40 i0:00 irq:04`
    - `G9I reg ctl:42 sm0:85 sm1:40 i0:00 irq:04`
    - `G9I reg ctl:42 sm0:85 sm1:40 i0:01 irq:04`
  - o log para antes de:
    - `G9I reg ctl:C2 sm0:85 sm1:40 i0:01 irq:00`
    - `G9A display-on`
    - qualquer frame ativo do renderer
- Conclusao tecnica desta rodada:
  - o guest habilita apenas `INTERRUPT_0=0x01` nesta fase inicial e fica esperando a IRQ vertical antes de levar `CONTROL` para `0xC2`
  - o device local so estava levantando `CMD_IRQ` (`0x04`) e nao gerava `VER_IRQ` (`0x01`) nem `HOR_IRQ` (`0x02`)
  - isso explica por que a ROM detecta o `V9990`, executa `LMMV`, mas ainda nao chega ao `display-on`
- Referencia tecnica usada para o corte:
  - `third_party/openmsx/src/video/v9990/V9990.hh`
    - `VER_IRQ = 1`
    - `HOR_IRQ = 2`
    - `CMD_IRQ = 4`
  - `third_party/openmsx/src/video/v9990/V9990.cc`
    - `raiseIRQ(VER_IRQ)` no caminho de `VSCAN`
- Resposta local desta rodada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c` agora define explicitamente `VER_IRQ`, `HOR_IRQ` e `CMD_IRQ`
  - o `V9990` passa a sintetizar `VER_IRQ` no inicio de cada frame em `fmsx_v9990_render_frame()`
  - a linha de IRQ do host e reavaliada imediatamente apos esse pulso
  - o objetivo e fechar o handshake que o guest espera antes do `CONTROL=C2`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111420-1e936ec`
  - `TXTDBG BUILD: 142A`
  - `BUILD_HASH: 1e936ec-c26207e293fa8f4fe10310dd35caa72fbeea5640`

## Atualizacao 2026-04-11 14:26 -03

- A leitura detalhada da UART com `VER_IRQ` sintetica mostrou que o corte andou, mas ainda ficou no handshake de `STATUS`:
  - o `irq` passou de `0x04` para `0x05`, confirmando `VER_IRQ + CMD_IRQ`
  - o guest passou a fazer polling apertado em `STATUS` (`0x65`)
  - os valores observados ficaram em `0x00` e `0x20`
  - o log ainda para em `ctl:42 ... i0:01 irq:05`, sem chegar a `ctl:C2` nem `display-on`
- Conclusao tecnica desta rodada:
  - a `VER_IRQ` ja esta presente
  - o desvio restante e que o `STATUS` ainda estava parado no inicio da area ativa, entao o guest so enxergava `HR` variando e nao a fase de `VSCAN` correspondente ao pulso de `VER_IRQ`
- Resposta local desta rodada:
  - no mesmo ponto em que o renderer sintetiza `VER_IRQ`, ele agora tambem reposiciona `status_uc_ticks` para o inicio do frame (`VSCAN`)
  - isso alinha a fase sintetica do `STATUS` com o pulso de `VER_IRQ` e deve permitir ao guest observar `VR=1` no polling imediatamente apos `i0=01`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111426-1e936ec`
  - `TXTDBG BUILD: 61D1`
  - `BUILD_HASH: 1e936ec-fede3719236f17c68b535cc6aed1128ce1cf9dbc`

## Atualizacao 2026-04-11 14:34 -03

- O fluxo de `make menuconfig` ganhou a nova feature de build `GFX9000` em `Expansion support`.
- A integracao desta rodada cobre:
  - `config/Kconfig.msxbarepi`: nova opcao `MSXBARE_FEAT_GFX9000`
  - `scripts/menuconfig.sh`: baseline, migracao incremental de `.config` antiga e emissao de `.config.mk`/`build/config.mk`
  - `Makefile`, `src/Makefile` e `scripts/gen-build-header.sh`: propagacao de `MSXBARE_FEAT_GFX9000`
  - `src/tools/menu/combo_menu_items.cpp`: item `GFX9000 [ON/OFF]` do `F12` so entra no menu quando a feature estiver compilada
  - `src/kernel.cpp`: `NormalizeSettingsForBuild()` forca `m_Gfx9000Enabled=FALSE` quando a feature estiver desligada, o `SaveSettings` persiste `gfx9000=0`, e o `ToggleGfx9000` responde `indisponivel neste build` se acionado fora do fluxo esperado
- Objetivo tecnico:
  - permitir build sem o toggle do `GFX9000` no `F12`
  - impedir que `msxbarepi.cfg` reative estado residual da feature em builds onde ela foi desligada no `menuconfig`
- Validacao local:
  - `NON_INTERACTIVE=1 ./scripts/menuconfig.sh --sync-only`
  - confirmado `CONFIG_MSXBARE_FEAT_GFX9000=y` em `.config`
  - confirmado `MSXBARE_FEAT_GFX9000 := 1` em `.config.mk` e `build/config.mk`
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1 MSXBARE_FEAT_GFX9000=0`

## Atualizacao 2026-04-11 15:31 -03

- A leitura mais nova do UART mudou o diagnostico do handshake antes do `display-on`:
  - o guest ja recebe `CMD_IRQ` e `VER_IRQ` (`irq:05`)
  - ele reprograma `SCREEN_MODE` temporariamente (`05/00`) e depois volta para `85/40`
  - a partir dai entra em polling apertado de `STATUS` (`0x65`) sem chegar a `CONTROL=C2`
- Corte tecnico fechado nesta rodada:
  - a modelagem local ainda fazia `EO` e a geracao recorrente de `VER_IRQ` dependerem do `render_frame()`
  - isso quebra no caso atual, porque o guest fica preso no `RunZ80()` antes do `display-on`; logo o renderer nao roda e o relogio sintetico do `V9990` para
  - nesse estado, o polling de `STATUS` passa a observar so um raster artificial parcialmente movido por leitura, sem as transicoes completas de frame/VSCAN que o software espera
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c` agora centraliza a progressao sintetica em `fmsx_v9990_advance_status_time()`
  - essa rotina passou a:
    - avancar `status_uc_ticks` continuamente
    - levantar `VER_IRQ` ao cruzar `VSCAN`
    - alternar `EO` ao fechar um frame sintetico
  - o `render_frame()` deixou de zerar `status_uc_ticks` e de injetar `VER_IRQ`/`EO` por fora; ele agora apenas avanca um frame inteiro no mesmo relogio sintetico
  - com isso, loops de polling em `STATUS` dentro do proprio `RunZ80()` voltam a enxergar progresso de frame/VSCAN sem depender do renderer
- Referencias usadas:
  - `third_party/openMSX/src/video/v9990/V9990.cc`
    - `execVScan()`: `raiseIRQ(VER_IRQ)`
    - `frameStart()`: alternancia de `EO`
    - `peekIO(STATUS)`: composicao de `cmdEngine.getStatus() | VR | HR | status`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111530-1e936ec`
  - `TXTDBG BUILD: 260C`
  - `BUILD_HASH: 1e936ec-fa9300b9a6396eef4a5a8f8d75aa0aca4532163b`

## Atualizacao 2026-04-11 15:40 -03

- O print mais recente mudou o diagnostico de novo:
  - o overlay mostra `Screen:13`, entao o guest ja passou do bring-up minimo do `V9990`
  - as faixas brancas no topo nao sao imagem real do software; sao a ladder sintetica de bring-up ainda desenhando no framebuffer
  - os blocos coloridos no meio/baixo mostram que ja existe conteudo real do `GFX9000` sendo escrito por baixo dessa ladder
- Leitura consolidada de `print + UART`:
  - a UART atual ainda para em `ctl:42 ... i0:01 irq:05`, sem capturar `ctl:C2`
  - mas o print prova que o `display-on` aconteceu depois desse recorte
  - portanto o orçamento/recorte atual da UART nao e mais suficiente para concluir sozinho esse trecho
- Correcao aplicada nesta rodada:
  - a ladder visual de fases do `V9990` foi desativada no target por padrao
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c` ganhou `MSXBARE_V9990_PHASE_VISUAL_DEBUG`, default `0`
  - a trilha visual `phase0..phaseA` deixa de sobrescrever o framebuffer em build normal; a telemetria UART continua ativa
- Objetivo tecnico:
  - remover o mascaramento visual causado pela escada sintetica
  - fazer o proximo reteste mostrar o framebuffer real do `V9990`, e nao mais o padrao de bring-up
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111540-1e936ec`
  - `TXTDBG BUILD: 03E2`
  - `BUILD_HASH: 1e936ec-9acdcf7e1ef7eac5a64202486ecfa3725e6d8244`

## Atualizacao 2026-04-11 16:01 -03

- A leitura conjunta do print preto e da UART corrigiu um diagnostico anterior:
  - `Screen:13` no overlay nao prova `display-on` do `V9990`
  - no core local `ScrMode=13` e `MAXSCREEN+1` do VDP principal em `src/backend/msx/modules/fmsx/fmsx_local/MSX.c`, nao um estado canonico do `GFX9000`
  - portanto o recorte atual continua coerente com a UART: o guest ainda para antes de `CONTROL=C2`
- Desvio objetivo observado:
  - depois da ultima refatoracao do relogio sintetico, o polling de `STATUS` voltou a ficar em `0x00/0x20`
  - isso significa que o `VR=1` desapareceu do bring-up inicial, regredindo para o mesmo sintoma que ja bloqueava a transicao de `ctl:42` para `ctl:C2`
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - `fmsx_v9990_reset_registers_keep_memory()` agora inicializa `status_uc_ticks = 0`
    - isso reposiciona o raster sintetico no inicio de frame/VSCAN, em vez do inicio da area ativa
  - objetivo:
    - restaurar a familia `0x40/0x60` no polling inicial de `STATUS`
    - manter a progressao sintetica continua de `EO/VER_IRQ` adicionada na rodada anterior
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604111600-1e936ec`
  - `TXTDBG BUILD: 1697`
  - `BUILD_HASH: 1e936ec-3607a3edba31e39fd6886beb868fde125aea2090`

## Atualizacao 2026-04-11 20:00 -03

- O ultimo UART confirma que o raster sintetico voltou a expor `VR=1`, mas o bring-up ainda corta no mesmo ponto:
  - `ctl:42 sm0:85 sm1:40 i0:01 irq:05`
  - nao ha `ctl:C2`
  - nao ha `display-on`
- O problema atual deixou de ser renderer e voltou para o handshake logico do `V9990` com a CPU:
  - depois de `INTERRUPT_0 = 0x01`, precisamos saber se o Z80 realmente recebe/consome a linha de IRQ do cartucho
  - o corte mais util agora e `PC/SP/IFF/IRequest/IRQPending` no exato momento em que `INTERRUPT_0` sobe e quando `pending_irqs & i0` altera a linha do host
- Correcao/telemetria aplicada nesta rodada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - inclui `Z80.h`
    - passa a exportar trace `G9I int0+` e `G9I host+/host-` com:
      - `PC`
      - `SP`
      - `IFF`
      - `IRequest`
      - `IRQPending`
      - `pending_irqs`
      - `INTERRUPT_0`
    - rearm de `port logs` e `reg logs` exatamente na transicao `INTERRUPT_0: 0 -> !=0`
    - `G9P in/out/sts/irq` agora incluem `pc:XXXX`
- Objetivo tecnico:
  - separar definitivamente tres cenarios:
    - o Z80 continua acessando `STATUS/INTERRUPT_FLAG` e fica preso num loop de polling
    - o Z80 recebe a IRQ, entra em ISR e falha fora das portas do `V9990`
    - a linha de IRQ do `V9990` nunca chega a produzir consumo real na CPU local
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604112000-1e936ec`
  - `TXTDBG BUILD: 684F`
  - `BUILD_HASH: 1e936ec-06fa1fe9cc5ee0876817e0e0b279f87621b78f53`

## Atualizacao 2026-04-11 20:14 -03

- O print com `TXTDBG BUILD:684F` e a UART fecharam um corte importante:
  - a CPU recebe a IRQ do `V9990`
  - ela le `INTERRUPT_FLAG` em `0x66`
  - ela faz ack escrevendo `0x05` em `0x66`
  - depois o host volta a subir com `VER_IRQ` em outro PC
- Trecho util observado:
  - `G9I int0+ pc:4652 sp:F08A iff:04 ir:FFFF qp:00 vi:05 i0:01`
  - `G9I host+ pc:4652 sp:F08A iff:04 ir:00FF qp:04 vi:05 i0:01`
  - `G9P in p:66 ... pc:4654`
  - `G9P out p:66 v:05 ... pc:4658`
  - `G9I host- pc:4658 ... vi:00 i0:01`
  - `G9I host+ pc:569D ... vi:01 i0:01`
- Conclusao tecnica desta rodada:
  - a linha de IRQ do `V9990` chega na CPU local e e consumida
  - o bloqueio restante nao e “IRQ nao entregue”
  - o proximo corte util ficou no fluxo apos o ack, para ver se o guest chega a `CONTROL=C2` / `display-on` ou se desvia antes disso
  - o print continua compativel com `VDP principal + scanlines`; ele nao prova `display-on` do `V9990`
- Correcao/telemetria aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - `update_host_irq()` agora rearma budgets de `G9P/G9I/G9C` quando o host volta a subir apenas com `VER_IRQ`
    - objetivo: capturar o trecho imediatamente posterior a `host+ pc:569D`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604112014-1e936ec`
  - `TXTDBG BUILD: 0785`
  - `BUILD_HASH: 1e936ec-29f82fbc37c11d589a73fd94ed5efa221eca7575`

## Atualizacao 2026-04-11 20:26 -03

- A UART do build `0785` avancou bem mais do que o ultimo corte curto sugeria:
  - apos `host+ pc:569D`, o guest ainda:
    - reprograma `PALETTE_CONTROL`
    - volta a escrever `SCREEN_MODE_0=0x85`
    - executa `LMMV` adicionais (`op:20`)
    - fica em polling de `STATUS` com familia `0x40/0x60`
    - chega de novo ao par `int0+/host+` em `pc:4652`
- O print com fundo preto e faixas verdes nao confirma `display-on` do `V9990`:
  - `Screen:13` continua vindo do VDP principal
  - as faixas verdes sao compativeis com o fallback `Bx first-light` em `BP4`
  - em `sm0:85`, o caminho local cai em `mode_kind=2` (`BP4`)
  - o fallback antigo ainda convertia indices para um gradiente verde/azulado, mascarando o conteudo real da VRAM
- Correcao aplicada nesta rodada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - `fmsx_v9990_render_bx_firstlight()` deixa de preencher a tela com cor sintetica por `mode_kind`
    - passa a decodificar VRAM real de `Bx`, respeitando:
      - `image_width`
      - `bytes_per_line`
      - `scroll AX/AY`
      - `roll mask`
    - o call site em `fmsx_v9990_render_frame()` foi alinhado para passar `image_width`
    - limpeza de `debug_phase_return` para manter o source valido quando `MSXBARE_V9990_PHASE_VISUAL_DEBUG=0`
  - `scripts/run-v9990-host-harness.sh`
    - inclui agora os paths de `third_party/fmsx/Z80` e `third_party/fmsx/fMSX`
  - `tools/host/v9990_phase_harness.c`
    - ganhou stubs locais de `CPU` e `IRQPending`, restaurando o harness depois do trace novo de IRQ
- Objetivo tecnico:
  - tirar o falso positivo visual do fallback verde
  - deixar o proximo reteste em hardware mostrar apenas o que vier da VRAM/programacao real do `V9990`
  - manter um harness host-side funcional para validar o caminho `Bx` fora do Raspberry
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `scripts/run-v9990-host-harness.sh 6`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604112026-1e936ec`

## Atualizacao 2026-04-11 20:31 -03

- O reteste com tela preta e UART curta mostrou que o trace geral continua morrendo cedo demais para fechar se o guest chega a `CONTROL=C2`.
- A resposta local desta rodada foi reduzir a ambiguidade do bring-up:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - agora emite `G9W` para qualquer mudanca real em:
      - `SCREEN_MODE_0`
      - `SCREEN_MODE_1`
      - `CONTROL`
      - `INTERRUPT_0`
    - esse trace nao depende do budget generico de `G9P/G9I`
    - ele registra `reg`, `prev->novo`, `pc`, `pending_irqs` e `INTERRUPT_0`
- Objetivo tecnico:
  - eliminar a duvida “o guest escreveu `C2`, mas o budget ocultou”
  - fechar no proximo UART se a tela preta e:
    - ausencia real de `display enable`
    - ou apenas perda de visibilidade do trace
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604112031-1e936ec`

## Atualizacao 2026-04-11 20:39 -03

- O ultimo UART mudou o foco do problema:
  - a IRQ do `V9990` chega, e consumida e o guest faz ack em `0x66`
  - depois disso o abort do Circle acontece em `timer.cpp(606)` com `assertion failed: pThis != 0`
  - a pilha registrada no abort aponta para:
    - `CTimer::InterruptHandler(void*)`
    - `RefreshLineTx80`
    - `IRQStub`
- Leitura tecnica desta rodada:
  - o travamento atual nao e mais “renderer do `V9990` caiu”
  - o risco estrutural mais forte e o kernel inteiro vivendo na stack do `main()`, concorrendo com render/IRQ
  - `src/main.cpp` usava `CComboKernel kernel;` local; isso foi removido
- Correcao aplicada:
  - `src/main.cpp`
    - `CComboKernel` saiu da stack do `main()`
    - o kernel agora vive em storage estatico como `g_Kernel`
    - a ordem do fluxo permanece a mesma: `Initialize()` e `Run()` continuam chamados a partir de `main()`
- Objetivo tecnico:
  - eliminar a possibilidade de corrupcao do objeto `CComboKernel` e, em especial, do caminho de `CTimer`/`CInterruptSystem` por pressao/corrupcao de stack durante render + IRQ
  - confirmar no proximo reteste se o assert `pThis != 0` some com o kernel fora da stack
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604112039-1e936ec`
  - `TXTDBG BUILD: 37C7`
  - `BUILD_HASH: 1e936ec-6ce2796b2ae84656baae8348e20801775a9f29ac`

## Atualizacao 2026-04-11 20:50 -03

- O reteste com o kernel fora da stack respondeu o ponto principal:
  - o assert de `timer.cpp(606)` desapareceu
  - no lugar dele entrou uma excecao sincrona
  - simbolizacao local da mesma build fechou:
    - `PC 0x10CF20` -> `strcmp` em `third_party/circle/lib/util.cpp:96`
    - `LR 0x9BE1C` -> `fmsx_runtime_trace_gfx9000_step_marker()` em `src/backend/msx/modules/fmsx/fmsx_runtime.c`
    - `stack[1] 0x9CB84` -> `fmsx_runtime_step_frame()` linha `1463`
    - `stack[5] 0x9CA8C` -> `fmsx_runtime_step_frame()` linha `1465`
    - `stack[13] 0x8D0FC` -> `CComboKernel::Run()`
- Leitura tecnica desta rodada:
  - o corte novo ja nao e mais timer/stack
  - o proprio trace compacto `G9S` do runtime estava derrubando a execucao
  - o hot path usava `strcmp(text, ...)` para compactar strings, mesmo com todos os call sites sendo fixos/literais
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_runtime.c`
    - o trace `G9S` deixou de usar strings/`strcmp()` no hot path
    - entrou um enum interno `FmsxRuntimeGfx9000TraceStepId`
    - os markers agora sao resolvidos por `switch` em IDs fixos
    - todos os call sites do step trace foram convertidos de texto literal para enum
    - o fallback verbose foi removido desse caminho
- Objetivo tecnico:
  - eliminar o crash do compactador de trace
  - deixar o proximo reteste voltar ao bug real do bring-up do `V9990`, sem o instrumento de debug derrubando o runtime
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604112050-1e936ec`
  - `TXTDBG BUILD: 4056`
  - `BUILD_HASH: 1e936ec-afd8b40aa9906c93612f02f2020bb97c1dd5b61f`

## Atualizacao 2026-04-11 21:00 -03

- O UART do build `4056` descartou o crash do compactador `G9S`, mas o abort de `timer.cpp(606)` continuou ocorrendo.
- Simbolizacao da mesma build fechou o novo corte:
  - `stack[1] 0x10C808` -> `CTimer::InterruptHandler(void*)`
  - `stack[10] 0xB0EA8` -> `fmsx_v9990_safe_index_color()` em `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `stack[11] 0x1128C8` -> `IRQStub`
- Leitura tecnica desta rodada:
  - o runtime nao esta mais caindo no proprio trace de step
  - o timer continua abortando com `pThis == 0` enquanto a CPU esta no caminho de cor do renderer do `V9990`
  - o layout do ELF mostrou dois fatos relevantes:
    - `g_Kernel` termina em `0x17E858` e fica colado nos buffers de trace do kernel
    - `g_fmsx_v9990_framebuffer_storage` termina exatamente onde comeca `g_fmsx_v9990`
- Correcao/instrumentacao aplicada:
  - `src/kernel.h`
    - novo metodo `DebugRepairTimerIrqBinding()` e wrapper estatico `DebugRepairTimerIrqBindingCurrent()`
  - `src/kernel.cpp`
    - sonda ativa do slot `ARM_IRQ_TIMER3` usando o layout real de `CInterruptSystem`
    - o codigo verifica `handler` e `m_pParam[ARM_IRQ_TIMER3]`
    - se o `handler` estiver valido e o `param` nao for `&m_Timer`, o slot e reparado imediatamente
    - quando ocorre desvio/reparo, a UART registra `TIRQ s:XX f:YY h:... p:... e:...`
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - o renderer chama essa sonda:
      - antes do render ativo (`0x10`)
      - logo apos `rf-begin` (`0x11`)
      - a cada linha no caminho `Bx first-light` (`0x20 + y`)
      - apos `rf-end` (`0x12`)
- Objetivo tecnico:
  - descobrir exatamente em qual fase do render do `V9990` o binding do timer degrada
  - e, se a degradacao surgir cedo o bastante, impedir que o abort mate a execucao antes do log
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - artefato: `artifacts/kernel8-issue251.img`
  - `BUILD_BID: 202604112100-1e936ec`
  - `TXTDBG BUILD: D5D5`
  - `BUILD_HASH: 1e936ec-6f063b8f29910e43d29de52e3a8326b2a25202ec`


## Atualizacao 2026-04-11 21:40 -03

- A pilha da build `202604112124-1e936ec` confirmou que o probe antigo ja nao caia mais em `CString`, mas os logs `TIRQ/UIRQ` seguiam contradizendo o proprio fluxo do USB.
- Hipotese mais forte desta rodada: o probe estava lendo o objeto errado, assumindo `&m_Interrupt` como singleton ativo.
- Correcao local aplicada em `src/kernel.cpp`:
  - `DebugRepairTimerIrqBinding()` passou a ler `CInterruptSystem::Get()` e nao mais `&m_Interrupt`
  - foi adicionado um marcador `IQLV` para acusar, uma unica vez, se o singleton ativo diferir do membro local do kernel
- Build atual:
  - `BUILD_BID: 202604112140-1e936ec`
  - `TXTDBG BUILD: 7C3B`
  - `BUILD_HASH: 1e936ec-7be0efa5568f54e6d73854c67206cfa8840387c2`

## Atualizacao 2026-04-11 21:50 -03

- O UART da build `7C3B` fechou um avanco real do bring-up:
  - o guest chega a `CONTROL=C2`
  - a escrita aparece em `pc:508D`
  - a IRQ do `V9990` continua chegando, sendo lida em `0x66` e recebendo ack
- O print tambem confirma que o `V9990` ja nao esta mais morrendo no primeiro frame; ha conteudo estavel na saida antes do abort do USB.
- O novo desvio objetivo ficou no proprio probe de timer:
  - `third_party/circle/include/circle/sysconfig.h` define `USE_PHYSICAL_COUNTER`
  - com isso, `CTimer::Initialize()` conecta em `ARM_IRQLOCAL0_CNTPNS`, nao em `ARM_IRQ_TIMER3`
  - entao o spam de `TIRQ ... f:03` da rodada anterior estava olhando o slot errado e poluindo o diagnostico
- Correcao local aplicada em `src/kernel.cpp`:
  - novo helper `DebugExpectedTimerIrqLine()`
  - `DebugRepairTimerIrqBinding()` passou a usar `ARM_IRQLOCAL0_CNTPNS` quando `USE_PHYSICAL_COUNTER` estiver ativo
  - o reparo e o `EnableIRQ()` do timer agora seguem a mesma linha real usada pelo Circle
  - foi adicionado um marcador unico `TIQN` para registrar qual linha de IRQ do timer esta sendo inspecionada nesta build
- Objetivo do proximo reteste:
  - validar que o spam falso de `TIRQ f:03` some
  - isolar o abort remanescente apenas ao que ainda estiver vivo no `USB/V9990`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112150-1e936ec`
  - `TXTDBG BUILD: E721`
  - `BUILD_HASH: 1e936ec-ce93a16ef1ecadeadce5756c18aafe8bc7d1239e`

## Atualizacao 2026-04-11 22:10 -03

- A analise do UART/print da build `E721` fechou o primeiro bug estrutural real da rodada:
  - o guest chega a `CONTROL=C2`
  - `G9A display-on` dispara
  - o command engine entra em `op:40`
  - mas o abort do `USB` continua aparecendo depois
- O probe `IQLV` sozinho nao provava corrupcao do singleton:
  - `third_party/circle/lib/sysinit.cpp` instancia um `CInterruptSystem InterruptSystem` local antes de `main()`
  - por isso `CInterruptSystem::Get()` nao precisa coincidir com `&m_Interrupt`
- O corte objetivo veio do bootstrap:
  - `src/Makefile` e o topo do projeto compilam o app com `KERNEL_MAX_SIZE=0x400000`
  - mas `third_party/circle/lib/startup64.o` continuava subindo `sp` em `0x002A0000`
  - o literal correto para esta build deveria ser `0x004A0000`
  - isso colocava a stack principal dentro da faixa do framebuffer do `V9990`, o que explica a degradacao de `IRQ`, `USB` e sintomas aleatorios apos `display-on`
- Causa encontrada no build do Circle:
  - a regra de `.S` em `third_party/circle/Rules.mk` usa `AFLAGS`
  - nosso `KERNEL_MAX_SIZE` estava sendo passado apenas via `EXTRAINCLUDE`
  - entao `startup64.S` ignorava o define e mantinha o default de `2 MB`
- Correcao aplicada em `Makefile` do projeto:
  - novo stamp `build/circle-build.stamp` para invalidar/rebuildar Circle quando a configuracao mudar
  - os submakes do Circle agora recebem tambem `AS='$(CROSS)gcc $(CIRCLE_EXTRAINCLUDE)'`
  - isso faz `startup64.S` ver `-DKERNEL_MAX_SIZE=0x400000`
- Validacao local desta rodada:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `aarch64-elf-objdump -d third_party/circle/lib/startup64.o`
  - `aarch64-elf-objdump -d src/kernel8.elf --start-address=0x80078 --stop-address=0x800a8`
- Resultado validado localmente:
  - `startup64.o` agora carrega `sp` em `0x004A0000`
  - o `kernel8.elf` final tambem carrega `sp` em `0x004A0000`
- Build atual:
  - `BUILD_BID: 202604112210-1e936ec`
  - `TXTDBG BUILD: F76A`
  - `BUILD_HASH: 1e936ec-c8381597b9a8b3d878da711f7d72967539d9bf09`

## Atualizacao 2026-04-11 22:12 -03

- Ajuste final desta rodada:
  - `src/kernel.cpp`
    - `IQLV` deixou de acusar `live_interrupt != &m_Interrupt` como anomalia
    - isso era esperado por desenho do `sysinit()` do Circle
    - o marcador agora so aparece se `CInterruptSystem::Get()` vier nulo
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112212"`
- Build atual:
  - `BUILD_BID: 202604112212-1e936ec`
  - `TXTDBG BUILD: 9BBD`
  - `BUILD_HASH: 1e936ec-5c60f6826d4a6d58ee5d8b04da509441ea271e13`

## Atualizacao 2026-04-11 22:18 -03

- O reteste em hardware da build `9BBD` fechou o corte estrutural:
  - o kernel nao travou mais depois do `display-on`
  - a tela saiu do preto total
  - ja apareceu vestigio estavel de imagem do `V9990`
  - o problema remanescente passou a ser fidelidade do renderer `Bx`, nao mais stack/IRQ/bootstrap
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - o caminho `Bx` indexado deixou de usar o fallback visual simplificado
  - `BP2` e `BP4` agora consultam a palette real do `V9990`, incluindo a regra hi-res por subpalette
  - `BP6` passou a usar a palette indexada real
  - `BD8` deixou o fallback `rgb332` e agora mapeia para o espaco de cor do `V9990`
- Objetivo do proximo reteste:
  - sair do “vestigio” para uma leitura visual coerente do conteudo real da VRAM do `GFX9000`
  - validar se a mudanca de palette ja elimina a aparencia monocromatica/esparsa observada em `9BBD`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112218"`
- Build atual:
  - `BUILD_BID: 202604112218-1e936ec`
  - `TXTDBG BUILD: 4F0B`
  - `BUILD_HASH: 1e936ec-2bcb31e8c44aa535fec5e2fc8db8eb28d0d4de98`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 22:34 -03

- O reteste em hardware da build `4F0B` confirmou funcionamento inicial do `V9990`:
  - ja ha imagem util
  - a animacao esta viva
  - o gargalo principal passou a ser apresentacao com linhas separadas/intercaladas
- O padrao observado ficou compativel com `scanline` host-side aplicado em cima do frame ativo do `GFX9000`, e nao com novo bug no renderer `Bx`
- Correcao aplicada no contrato de apresentacao:
  - `src/backend/core/module.h`
  - `src/backend/msx/modules/fmsx/fmsx_runtime.h`
  - `src/backend/msx/backend.c`
  - `src/backend/msx/modules/fmsx/fmsx_runtime.c`
  - `src/kernel.cpp`
- Mudanca:
  - novo flag `disable_scanline_postfx` no `BackendVideoPresentation`
  - quando o frame ativo vem do `V9990`, o backend marca esse flag
  - o kernel deixa de aplicar `scanline` host-side nesse caminho
- Objetivo do proximo reteste:
  - eliminar as linhas intercaladas observadas na build `4F0B`
  - confirmar se o frame do `GFX9000` passa a ocupar linhas contiguas sem escurecimento alternado do host
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112234"`
- Build atual:
  - `BUILD_BID: 202604112234-1e936ec`
  - `TXTDBG BUILD: 7397`
  - `BUILD_HASH: 1e936ec-f819d9cd8416e235e8f916b36e213712032005e5`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 22:41 -03

- O reteste em hardware da build `7397` mostrou que o defeito de linhas separadas continuava igual
- Isso descartou a hipotese de `scanline` host-side como causa principal
- Corte novo, alinhado com `openMSX`:
  - em modo `Bx`, quando `even/odd page` esta ativo, o source `Y` nao avanca `1 em 1`
  - ele comeca na paridade do campo atual e avanca `2 em 2`
  - o display height continua `212`, nao `424`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_frame_height()` passou a devolver `212`
  - `fmsx_v9990_render_bx_firstlight()` agora usa:
    - `display_y = field_parity_odd ? 1 : 0`
    - `line_step = 2` quando `even/odd` esta ativo
  - isso replica o comportamento do `drawBxMode()` do `openMSX`
- Objetivo do proximo reteste:
  - eliminar as linhas alternadas no frame ativo do `GFX9000`
  - confirmar se o `Bx` passa a exibir linhas contiguas por campo
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112241"`
- Build atual:
  - `BUILD_BID: 202604112241-1e936ec`
  - `TXTDBG BUILD: 4861`
  - `BUILD_HASH: 1e936ec-4cf97a3b1b7aafb7ab0bd3088fcca50d952991d9`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 22:47 -03

- O reteste em hardware da build `4861` continuou com o mesmo padrao visual
- Isso descartou o corte anterior como causa principal
- Novo corte tecnico:
  - o frame ativo do modo atual estava sendo apresentado com `line_width` do `V9990` (`320` em `B1`)
  - para o conteudo util do modo `B1/B3/B7`, o width ativo que deve sair do backend e `256/512/1024`
  - o uso de `320` estava forçando wrap horizontal do conteudo util e distorcendo a geometria do frame
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novo helper `fmsx_v9990_get_active_display_width()`
  - `g_fmsx_v9990_video.width` agora usa largura ativa do modo, e nao mais `line_width`
  - mapeamento atual:
    - `P1/B1 = 256`
    - `P2/B3 = 512`
    - `B0 = 192`
    - `B2 = 384`
    - `B4 = 768`
    - `B7 = 1024`
- Objetivo do proximo reteste:
  - remover o wrap lateral/duplicacao visivel do frame `B1`
  - separar o que ainda for defeito de conteudo/VRAM do que era so geometria errada de apresentacao
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112247"`
- Build atual:
  - `BUILD_BID: 202604112247-1e936ec`
  - `TXTDBG BUILD: FD43`
  - `BUILD_HASH: 1e936ec-088cc8f258d10a01333f0c8f2bdb9abfa45e90b7`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:13 -03

- O reteste em hardware confirmou a regressao horizontal:
  - o build com `line_width=320` manteve a imagem animando, mas reabriu o espacamento visivel entre linhas
  - o usuario confirmou que `active_width=256` tinha corrigido melhor a largura do frame
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `g_fmsx_v9990_video.width` voltou a usar `fmsx_v9990_get_active_display_width()`
  - o ajuste vertical anterior de `Bx` (`roll mask`/`scroll_y_base` em `0x1FFF`) foi mantido
- Objetivo do proximo reteste:
  - recuperar a geometria horizontal correta de `B1`
  - verificar se o espacamento restante cai para o nivel anterior, sem reintroduzir wrap lateral
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112313"`
- Build atual:
  - `BUILD_BID: 202604112313-1e936ec`
  - `TXTDBG BUILD: 5C83`
  - `BUILD_HASH: 1e936ec-a3c3147ceea905f325e95fc95833411a1d9dc3e3`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:23 -03

- O reteste seguinte confirmou o corte:
  - `active_width=256` voltou a acertar a largura horizontal
  - o defeito restante passou a ser vertical, com o frame parecendo um field cru do `V9990`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - quando `Bx` esta com `even/odd page` ativo, o backend passa a renderizar ambos os fields no framebuffer
  - saida fisica: `424` linhas
  - saida logica: `212` linhas
  - `g_fmsx_v9990_video.woven_hires = TRUE`
  - o renderer `Bx` agora aceita `weave_even_odd_fields` e, nesse caso, usa `display_y = y` em vez de saltar `2 em 2`
- Objetivo do proximo reteste:
  - eliminar o aspecto de linhas “furadas”/espacadas
  - confirmar que o host passa a apresentar os dois fields do `V9990` de forma tecida
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112323"`
- Build atual:
  - `BUILD_BID: 202604112323-1e936ec`
  - `TXTDBG BUILD: E0D4`
  - `BUILD_HASH: 1e936ec-791f2bc42d84218907b539a8e564d053314aa296`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:33 -03

- O ajuste de `woven_hires` piorou o sintoma visual e foi revertido
- A telemetria UART antiga do bring-up foi praticamente desligada:
  - `G9P`, `G9C`, `G9I`, `G9R/G9K` compactos deixaram de ser rearmados no `display-on`
  - a ativacao do `V9990` agora gera apenas 2 snapshots uteis
- Instrumentacao nova:
  - `G9D fb ...`
    - snapshot do framebuffer do `V9990` depois do render
    - inclui `w/h`, `image_width`, `bytes_per_line`, `mode_kind`, `even/odd`, `field` e estatistica de linhas nao-pretas (`nz/fst/lst/gap`)
  - `G9D vp ...`
    - snapshot da apresentacao no kernel
    - inclui `src`, `logical`, `pitch`, `woven`, `field`, `dst/full/crop` e `scanline_mode`
- Objetivo do proximo reteste:
  - descobrir objetivamente se o espacamento nasce no framebuffer do `V9990` (`G9D fb`) ou no presenter do kernel (`G9D vp`)
  - voltar a partir dai no corte certo, sem ruido de UART
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112333"`
- Build atual:
  - `BUILD_BID: 202604112333-1e936ec`
  - `TXTDBG BUILD: A2E9`
  - `BUILD_HASH: 1e936ec-5095478794b1a9276ad19e69b1f33b446533c0d8`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:37 -03

- O log anterior mostrou que `G9D fb` estava disparando cedo demais:
  - os snapshots saiam com `nz:0`, entao ainda nao mediam a fase em que a imagem ja aparece
- Correcao aplicada:
  - `G9D fb` agora so dispara no primeiro frame com linhas nao-pretas reais
  - o snapshot passou a incluir:
    - `step:min-max` entre linhas nao-pretas consecutivas
    - `samp:` com as primeiras linhas nao-pretas observadas
- Reducao adicional de ruido:
  - `fmsx_v9990_update_host_irq()` nao rearma mais budgets de `G9P/G9I/G9C`
  - escrita em `INTERRUPT_0` nao rearma mais budgets nem emite `G9I int0+`
  - o objetivo e deixar a UART praticamente limitada a `G9A display-on`, `G9D fb ...` e `G9D vp ...`
- Objetivo do proximo reteste:
  - capturar a primeira geometria real do frame do `V9990`
  - verificar se o espacamento ja aparece em `step/samp` do `G9D fb`
  - confirmar se `G9D vp` bate com o mesmo envelope ou se o presenter amplia o gap
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112337"`
- Build atual:
  - `BUILD_BID: 202604112337-1e936ec`
  - `TXTDBG BUILD: 5B7D`
  - `BUILD_HASH: 1e936ec-33f66c34e0e3349b75636e7e7a8ed6e658445bb9`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:42 -03

- Leitura do UART da build `5B7D`:
  - o frame util do `V9990` saiu como `G9D fb w:256 h:212 iw:512 bpl:512 mk:3 eo:0 fld:0 nz:205 fst:7 lst:211 gap:7 step:1-1 samp:7,8,9,10`
  - isso mostra que o framebuffer do `V9990` nao tem gap de `4` linhas; as linhas uteis saem contiguas
  - o problema restante saiu do renderer basico e ficou no presenter/kernel ou em uma metrica de framebuffer ainda grosseira
- Correcao de instrumentacao aplicada:
  - `G9D vp ...` agora tem budget de `4` frames por ativacao do `V9990`, em vez de tentativa unica
  - isso força a UART a finalmente registrar a geometria de apresentacao do kernel no caminho ativo do `GFX9000`
- Objetivo do proximo reteste:
  - capturar `G9D vp ...` junto do `G9D fb ...`
  - confirmar se o presenter esta ampliando um frame continuo do `V9990` em linhas espacadas
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112342"`
- Build atual:
  - `BUILD_BID: 202604112342-1e936ec`
  - `TXTDBG BUILD: 3901`
  - `BUILD_HASH: 1e936ec-3dfcf9e04d26c89608f31b70c18172f40ae04b33`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:50 -03

- Correcao aplicada no runtime:
  - `src/backend/msx/modules/fmsx/fmsx_runtime.c` agora cacheia `pixels + width/height + sequence + presentation` do mesmo snapshot retornado por `backend_runtime_video_frame()`
  - `backend_runtime_get_video_presentation()` passa a devolver esse snapshot cacheado, em vez de consultar novamente o estado live do backend
  - o cache e invalidado em `start`, `shutdown`, `reboot_basic`, `menu_reset`, `load_state` e no toggle do `GFX9000`
- Motivo:
  - os logs da build `3901` ja mostravam `G9D fb ... step:1-1`, ou seja, o framebuffer do `V9990` sai continuo
  - o defeito de linhas visualmente espacadas passou a apontar para desacoplamento entre o framebuffer ativo e os metadados de apresentacao usados pelo kernel
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112350-1e936ec`
  - `TXTDBG BUILD: 25AD`
  - `BUILD_HASH: 1e936ec-ebdcd84798d0b9363a746d8bf812d302faa99dcf`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:56 -03

- Instrumentacao refinada para o defeito de espacamento vertical:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c` agora registra tambem linhas "fortes" por densidade (`sig/sstep/ssamp`), nao apenas linhas com qualquer pixel nao-preto
  - `src/kernel.cpp` agora emite `G9D vp ...` mesmo quando `disable_scanline_postfx` vier `0`, incluindo o campo `dis:` para mostrar explicitamente o que o presenter recebeu
- Motivo:
  - a build `25AD` ainda mostrou espacamento grande, e o `G9D fb ... step:1-1` podia estar mascarando o problema por contar linhas com poucos pixels esparsos
  - o kernel ainda nao estava soltando `G9D vp`, entao a trilha do presenter permanecia cega
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112356-1e936ec`
  - `TXTDBG BUILD: 4589`
  - `BUILD_HASH: 1e936ec-b565fc24e3d4b012a82d5bf8224d17a2936042a8`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:01 -03

- Causa imediata do presenter encontrada:
  - `src/backend/msx/modules/fmsx/module.c` descartava `pitch_pixels` e `disable_scanline_postfx` ao converter `TFmsxVideoPresentation -> BackendVideoPresentation`
  - por isso o kernel via sempre `G9D vp ... pitch:0 dis:0`, mesmo com frame util do `V9990` ativo
- Correcao aplicada:
  - o wrapper do modulo `msx.fmsx` agora copia tambem `pitch_pixels` e `disable_scanline_postfx`
- Impacto esperado:
  - o kernel finalmente blita o `V9990` com stride e politica de postfx corretos
  - se o espacamento visivel vier desse desacoplamento, esta build deve reduzir ou eliminar o sintoma
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120001-1e936ec`
  - `TXTDBG BUILD: 38D1`
  - `BUILD_HASH: 1e936ec-fde6ce1de7b24408b175aedd68260dc1277eec0e`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:10 -03

- Correcao adicional no mesmo eixo:
  - `src/tools/render/viewport_screenshot.cpp` agora aceita `src_pitch_pixels`
  - `src/kernel.cpp` passa `presentation.pitch_pixels` para a captura do pause menu
  - o pause menu tambem deixa de reaplicar `scanline` quando `disable_scanline_postfx` vier ativo no frame do backend
- Motivo:
  - o bug de `F12` ainda tratava o frame como tight (`src_w`) e com `scanline` local, mesmo quando o `V9990` usava stride proprio e pedia bypass de postfx
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120010-1e936ec`
  - `TXTDBG BUILD: 36A0`
  - `BUILD_HASH: 1e936ec-bc07747c49c0a0928d467f0873d1cdd0cb48f096`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:24 -03

- O defeito restante deixou de ser do renderer `Bx`.
- A UART fechou a troca real de modo do Ghost'n Goblins:
  - `SCREEN_MODE_0: 0x86 -> 0x05`
  - `CONTROL: 0x02 -> 0x82`
  - os frames visiveis com defeito passaram a sair como `iw:256 bpl:0 mk:0`, ou seja, caminho `P1`
- Correcao objetiva aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - a base de paleta dos sprites `P1/P2` foi alinhada ao `openMSX`: `(spriteAttr >> 2) & 0x30`
- Correcao estrutural aplicada:
  - o backend agora mantem estado de scroll vertical por linha para `AY0/BY0`
  - quando `SCROLL_CONTROL_AY0` ou `SCROLL_CONTROL_BY0` mudam com display ativo, as linhas restantes do frame passam a usar o novo scroll e o novo `displayYA/displayYB`
  - isso aproxima o comportamento do `openMSX`, que ressincroniza `verticalOffsetA/B` no momento da escrita e e o suspeito principal para os grandes gaps em modo pattern
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120023-1e936ec`
  - `TXTDBG BUILD: 9216`
  - `BUILD_HASH: 1e936ec-70afe2eaeffa0190480927a79b1d9d1295275362`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:33 -03

- Novo corte feito sobre o modo pattern (`P1`), que e o modo ativo do jogo quando o defeito visivel aparece.
- Correcao objetiva:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - sprites `P1/P2` agora tratam transparencia pelo nibble original (`0` continua transparente) antes de somar a base de paleta
  - isso corrige o quadro rosa visivel atras de player/HUD quando o nibble `0` vinha sendo convertido em cor valida do banco `0x10/0x20/0x30`
- Correcao estrutural:
  - `AY1/BY1` passaram a ser latched por frame, como no `openMSX`
  - `scroll_ay_lines/display_ya_lines` e `scroll_by_lines/display_yb_lines` continuam ativos e agora usam os bytes altos latched
  - isso remove uma divergencia de timing/importancia em `P1`, onde o jogo reprograma scroll durante o display ativo
- Instrumentacao util adicionada:
  - `G9Y ay y:<linha> v:<valor>`
  - `G9Y by y:<linha> v:<valor>`
  - a UART so vai soltar poucos eventos apos `display-on`, suficientes para fechar se os 3 gaps restantes ainda estao ligados a raster split vertical
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120033-1e936ec`
  - `TXTDBG BUILD: 0643`
  - `BUILD_HASH: 1e936ec-3355b7f51151dcf3b1d8c629edce548f914305df`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:43 -03

- Causa raiz dos 3 grandes gaps em `P1` encontrada:
  - o split de `AY0/BY0` ainda era derivado de `status_uc_ticks`
  - na pratica isso colapsava as trocas de scroll para `y:211`, o que bate exatamente com a UART recente (`G9Y ay y:211 ...`)
  - resultado: o frame `P1` ficava quebrado em grandes blocos horizontais, mesmo com `sprites` e `palette` ja corretos
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_get_active_display_line()` agora usa a `ScanLine` real do core `fMSX` como fonte primaria
  - o fallback para `status_uc_ticks` foi mantido apenas fora da emulacao ativa
- Justificativa tecnica:
  - o `openMSX` aplica `updateScrollAYLow()/BYLow()` no raster corrente (`verticalOffsetA/B = lastY`)
  - o `fMSX` ja mantem `ScanLine` real durante o `RunZ80()`
  - portanto o split do `V9990` precisa seguir `ScanLine`, nao o relogio sintetico de `STATUS`
- Impacto esperado:
  - os grandes gaps entre blocos do cenario em `P1` devem desaparecer ou reduzir drasticamente
  - a geometria horizontal e as cores corretas da build `0643` devem ser preservadas
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120043-1e936ec`
  - `TXTDBG BUILD: 8274`
  - `BUILD_HASH: 1e936ec-c6b5d0ef0775a61d7fd8d76c1b664cc0301ae940`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:55 -03

- A UART da build `8274` mostrou que o split basico de `AY/BY` saiu do colapso em `211`, mas os frames `P1` continuavam quebrados em grandes blocos.
- Diagnostico refinado:
  - o renderer `P1` ainda usava `AX/BX` e `PRIORITY_CONTROL` globais para o frame inteiro
  - isso diverge do `openMSX`, que efetivamente sincroniza o raster antes dessas escritas e deixa o novo estado valer apenas para as linhas seguintes
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - adicionado estado por linha para:
    - `scroll_ax_lines`
    - `scroll_bx_lines`
    - `priority_control_lines`
  - `SCROLL_CONTROL_AX0/AX1`, `SCROLL_CONTROL_BX0/BX1` e `PRIORITY_CONTROL` agora atualizam apenas o restante do frame, a partir da linha raster corrente
  - `render_p1_frame()` passou a consumir esses valores por linha
  - `render_p2_frame()` passou a consumir `scroll_ax` por linha
- Impacto esperado:
  - remover os 3 grandes gaps entre blocos do cenario em `P1`
  - preservar as correcoes ja confirmadas de `F12`, `pitch`, paleta e transparencia dos sprites
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120055-1e936ec`
  - `TXTDBG BUILD: E1FC`
  - `BUILD_HASH: 1e936ec-5ef73e8114eecab13f5671effa1a48c2e79e4c11`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 01:06 -03

- Correcao de rastreio:
  - o calculo manual anterior de `TXTDBG BUILD` estava errado em algumas rodadas porque faltava o passo final do kernel: `hash ^= (hash >> 16)`
  - por isso a build `202604120055-1e936ec` apareceu em campo como `E1FC`, e nao `F13F`
- Correcao funcional aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `AY1/BY1` deixaram de ficar travados por frame
  - quando `SCROLL_CONTROL_AY1` ou `SCROLL_CONTROL_BY1` mudam com display ativo, o novo byte alto passa a valer para as linhas seguintes sem resetar `displayYA/displayYB`
- Racional:
  - isso alinha melhor o `P1` ao comportamento do `openMSX`, onde o byte alto do scroll continua sendo lido ao vivo e o reset vertical so acontece no `low write`
- Impacto esperado:
  - atacar os gaps grandes remanescentes quando o jogo alterna `AY` entre `0x37/0x137` e `0x30/0x130`
  - preservar o split de `AX/BX` e `PRIORITY_CONTROL` por linha da rodada anterior
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120106-1e936ec`
  - `TXTDBG BUILD: 96E0`
  - `BUILD_HASH: 1e936ec-681e7bba61c016fb54102d45179459e119a10dc9`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 01:47 -03

- O defeito residual dos `4` blocos em `P1` ganhou uma causa objetiva pela UART:
  - antes do `02->82`, o gameplay escreve `AY/BY` com `display-off`
  - o backend local ainda estava convertendo esses writes em splits raster por linha
  - isso nao bate com o `openMSX`, onde `updateScrollAYLow/ByLow/AX/BX` so sincronizam o renderer quando `displayEnabled`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - writes em `SCROLL_CONTROL_AY0/AY1/AX0/AX1/BY0/BY1/BX0/BX1` e `PRIORITY_CONTROL`
    agora so atualizam o estado por linha quando `CONTROL.7` estiver ligado
  - com `display-off`, os registradores continuam sendo atualizados, mas sem criar cortes de frame antecipados
  - o baseline correto para a proxima janela continua vindo de `fmsx_v9990_reset_scroll_line_state()` no `display-on`
- Efeito esperado:
  - eliminar os `3` grandes gaps persistentes do gameplay em `P1`
  - preservar as correcoes anteriores de presenter, `F12`, paleta e transparencia
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120147-1e936ec`
  - `TXTDBG BUILD: AA0F`
  - `BUILD_HASH: 1e936ec-f8124f06f848c50ab73109b496e8260d63d68ea7`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 01:56 -03

- O feedback de hardware refinou o defeito restante:
  - os `4` blocos aparecem principalmente nas regioes do gameplay em que o cenario troca blocos/paletas
  - isso enfraquece `AY/BY` como unica causa e recoloca `AX/BX/PRIORITY` e o estado raster do `P1` como suspeitos principais
- Correcao de instrumentacao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `G9Y ax`
  - `G9Y bx`
  - `G9Y pr`
  - `G9D ls`
- Objetivo:
  - usar a UART para fechar onde o frame `P1` esta sendo cortado de fato
  - `G9D ls` resume as linhas em que:
    - `displayYA/displayYB`
    - `scrollAY/scrollBY`
    - `scrollAX/scrollBX`
    - `priority_control`
    mudam dentro do frame util
- Tambem foi ampliado o budget de logs de split para `32`, para nao perder writes do gameplay
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120156-1e936ec`
  - `TXTDBG BUILD: A6A1`
  - `BUILD_HASH: 1e936ec-6cb7edd9e04ce9af3eb5e2d66bd99201aa23ba63`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 16:43 -03

- O defeito residual dos `4` blocos entrou em uma trilha mais precisa:
  - a ROM do `Ghost'n Goblins` usa `IN (65h)` para temporizar transferencias do `V9990` durante o gameplay
  - o backend local ainda fazia o `STATUS` avancar por numero de leituras no port `0x65`, o que pode inventar janelas falsas de transferencia
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `STATUS` agora e sincronizado por ciclos reais da CPU via `fmsx_vdp_cpu_cycles_now()` e `HPeriod`
  - o caminho antigo de "andar por leitura" foi removido
- Correcoes de integracao:
  - `reset/power-on/load-state` agora reinicializam `status_last_cpu_cycles` e `status_cpu_cycle_frac`
  - `tools/host/v9990_phase_harness.c` ganhou stubs de `ScanLine`, `HPeriod`, `fmsx_vdp_cpu_cycles_now()` e hooks de debug para validar a nova semantica fora do Raspberry
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `scripts/run-v9990-host-harness.sh 6`
  - `make DEBUG=1`
- Resultado:
  - o harness host-side voltou a renderizar frames ativos do `V9990` com a nova semantica de `STATUS`
  - o build cruzado do kernel fechou com o mesmo comportamento
- Build atual:
  - `BUILD_BID: 202604121642-1e936ec`
  - `TXTDBG BUILD: 37DB`
  - `BUILD_HASH: 1e936ec-661e51b8fbe6fa444080fcd3052e4a7192fabb94`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 16:51 -03

- Comparacao direta com o `openMSX` fechou um desvio estrutural no `P1/P2`
- Causa tecnica:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_image_width()` ainda devolvia a largura visivel (`256/512`) em `P1/P2`
  - no `openMSX`, `IMAGE_WIDTH` e `512` para `P1` e `1024` para `P2`
  - isso afeta diretamente o pitch do command engine, nao so o renderer
- Correcao aplicada:
  - `P1 -> 512`
  - `P2 -> 1024`
  - a largura ativa de apresentacao continua `256/512`; o ajuste e apenas do envelope interno do chip
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `scripts/run-v9990-host-harness.sh 6`
  - `make DEBUG=1`
- Evidencia local:
  - o harness passou a reportar `G9D fb ... iw:512` para `P1`, em vez de `iw:256`
- Build atual:
  - `BUILD_BID: 202604121651-1e936ec`
  - `TXTDBG BUILD: 7FC9`
  - `BUILD_HASH: 1e936ec-107a03d1f833faa1acbb68a254a4ae9a6235453f`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 17:13 -03

- A UART do gameplay estreitou o defeito do `P1` para composicao/paleta, nao mais para presenter:
  - nos buracos, a instrumentacao anterior mostrou `plane A = 0`, `plane B = 256`, `final = 0`
  - isso indica que a plane `B` chega com conteudo, mas a linha final ainda cai para `backdrop`
- Correcao desta rodada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - o backend agora captura um snapshot minimo da primeira linha furada do `P1`
  - novo trace UART: `G9D lc`
  - campos:
    - `pa/pb/bd`
    - amostras dos primeiros `8` nibbles de `A` e `B`
    - flags `bg==backdrop` e `final==backdrop`
- Objetivo:
  - separar de forma objetiva se a plane `B` esta vindo correta e sendo apagada na composicao, ou se o problema nasce antes no fetch
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604121713-1e936ec`
  - `TXTDBG BUILD: 6B8D`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-13 17:48 -03

- A UART mostrou um desvio mais forte no `P1`: o clock sintetico do `STATUS` estava sendo usado tambem para posicionar writes raster com `display-on`
- Evidencia:
  - bursts de `AY0/BY0` caiam com skew de `1-2` linhas
  - isso e coerente com os grandes blocos/gaps do gameplay
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_get_active_display_line()` ficou hibrido:
    - `STATUS/IRQ`: continuam no clock sintetico do `V9990`
    - writes raster com `CONTROL.7=1`: passam a usar `ScanLine` do core `fMSX`
  - objetivo: aproximar o comportamento de `sync(time)->lastY` do `openMSX` para `AY0/BY0/AX/BX/PRIORITY` sem quebrar o bring-up
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604131748-1e936ec`
  - `TXTDBG BUILD: 92D3`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-13 18:15 -03

- O defeito residual do gameplay do `P1` continuava com 3 grandes gaps horizontais, mesmo apos presenter, paleta, timing de `STATUS` e split raster terem sido revisados.
- O proximo desvio forte veio da comparacao direta com `openMSX`:
  - em `third_party/openmsx/src/video/v9990/V9990.cc`, `displayEnabled` e latched em `frameStart()`
  - o write em `CONTROL` nao troca o renderer diretamente no frame corrente
  - `DISPLAY_START` / `VSCAN` e que tornam o latch efetivo no renderer
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - adicionado `display_enabled_frame` ao estado local
  - `fmsx_v9990_reset_scroll_line_state()` agora latches:
    - `display_enabled_frame`
    - `scrollAYHigh`
    - `scrollBYHigh`
  - o core deixou de usar `regs[CONTROL] & 0x80` ao vivo para decidir o frame corrente em:
    - `fmsx_v9990_get_active_display_line()`
    - gating de `PALETTE_CONTROL`
    - gating de `BACK_DROP_COLOR`
    - gating de `AY/BY/AX/BX/PRIORITY`
    - reset de baseline quando `SCREEN_MODE_0/1` muda
    - early return de `fmsx_v9990_render_frame()`
- Objetivo:
  - impedir que writes vivos de `CONTROL.7` influenciem indevidamente o frame corrente, deixando essa transicao no dominio correto de `frameStart()`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604131815-1e936ec`
  - `TXTDBG BUILD: 95D8`
  - `BUILD_HASH: 1e936ec-ed8909d8ab522375dc347556c892b7ee3f775ea9`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-13 18:46 -03

- O ponto atual deixou de ser presenter/paleta/F12. O defeito residual continua sendo o `P1` com `3` gaps horizontais no gameplay.
- A UART e a comparacao com o `openMSX` deixaram um problema estrutural mais claro:
  - `STATUS/IRQ` ja estavam no clock sintetico do `V9990`
  - os writes raster (`AY/BY/AX/BX/PRIORITY`) ainda usavam `ScanLine` do VDP principal
  - isso dividia o frame entre dois dominios de tempo diferentes
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_get_active_display_line()` agora usa o mesmo clock sintetico do `V9990` para todos os writes raster
  - a base tecnica para isso ja existe: esse clock foi corrigido para ciclos reais da CPU e nao depende mais de contagem de leituras do `STATUS`
- Racional tecnico:
  - o gameplay do `GHOSTGOBLINS.ROM` programa o `V9990` em funcao de `STATUS`
  - usar `ScanLine` para os splits e `STATUS` para o polling deixa o frame coerente no bootstrap, mas nao no gameplay
  - as bandas horizontais estaveis sao consistentes com esse mismatch
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604131846-1e936ec`
  - `TXTDBG BUILD: 46F0`
  - `BUILD_HASH: 1e936ec-9da8c68620ad0d4946729ada7de29e06aaf1588c`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-13 19:10 -03

- A mudanca da `46F0` que passava todos os writes raster para o clock sintetico do `V9990` foi revertida.
- Motivo:
  - os `3` gaps do `P1` nao mudaram
  - a imagem voltou a rolar verticalmente em hardware
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_get_active_display_line()` voltou ao modo hibrido:
    - `ScanLine` do `fMSX` com display ativo
    - clock sintetico apenas em bootstrap / display-off
- Leitura tecnica:
  - o clock sintetico continua sendo a base de `STATUS/IRQ`
  - mas os writes raster vivos do gameplay precisam seguir a linha efetivamente desenhada pelo core para manter o frame estavel
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604131910-1e936ec`
  - `TXTDBG BUILD: 570C`
  - `BUILD_HASH: 1e936ec-57bd9640ba1951cdb2402cbe5330fe6c8526faf0`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-14 18:11 -03

- O renderer `P1` do `V9990` saiu da versao simplificada por pixel e passou a seguir a composicao do `openMSX/WebMSX` de forma mais literal.
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - backdrop + back plane + front plane + sprites por linha
  - ordem `A/B` agora depende de `displayY < prioY`, como no `openMSX`
  - `BY1` passou a existir por linha:
    - bit alto do scroll de `B`
    - enable da plane `A` (`SDA`)
    - enable da plane `B` (`SDB`)
  - `AY1` passou a existir por linha para o `roll mask`
  - writes de `AY1/BY1` com display ativo agora atualizam as linhas seguintes
- Racional tecnico:
  - presenter, scanline host-side, paleta e `F12` ja nao eram o gargalo principal
  - os `3` gaps horizontais restantes apontavam para semantica incompleta do `P1`
  - a comparacao com `openMSX` e `WebMSX` mostrou que o core local ainda simplificava demais:
    - ordem de composicao das planes
    - uso de `BY1` para enable de plane
    - persistencia por linha de `AY1/BY1`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604141811-1e936ec`
  - `TXTDBG BUILD: EB60`
  - `BUILD_HASH: 1e936ec-6c60711a2168eccc9d2af295c01e8c6f05f17c7c`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-14 19:03 -03

- O defeito remanescente dos `3` gaps horizontais foi reduzido a uma divergencia semantica na composicao `P1`, nao mais em paleta, presenter, `F12` ou upload bruto.
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - no `P1`, a ordem de composicao agora segue o `openMSX` em todas as linhas:
    - back plane: `B` antes do `split_x`, `A` depois
    - front plane: `A` antes do `split_x`, `B` depois
  - abaixo de `prioY`, o codigo local deixava de usar o mesmo ordering e invertia `back/front`, o que introduzia lacunas horizontais artificiais.
- Racional tecnico:
  - no `openMSX`, `prioY` apenas zera o `prioX`; ele nao troca a ordem das planes
  - o renderer local estava correto acima de `prioY`, mas trocava a ordem inteira abaixo dele
  - isso e compativel com o sintoma observado em gameplay: blocos horizontais com uma plane faltando ou indo para backdrop
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604141903-1e936ec`
  - `TXTDBG BUILD: DA80`
  - `BUILD_HASH: 1e936ec-688802491549ca1449b88c63223f080ea3f43fd4`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-14 20:23 -03

- A comparacao semantica do command engine `P1` com `openMSX` e `WebMSX` fechou uma divergencia concreta de enderecamento.
- Correcao:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_cmd_address_of()` em `P1` passou a:
    - usar `X=0..255` para o byte address
    - usar apenas `X9` como seletor de plane `B`
    - ignorar `X8` no byte address
- Motivo:
  - no `WebMSX`, `getSX()/getDX()` em `P1` mascaram `imageWidthMask=0xFF`
  - o offset de plane vem separado do bit de coordenada
  - o core local ainda deixava `X8` vazar para `((x >> 1) & (pitch - 1))`
  - isso desloca o stream do command engine em `128` bytes dentro da linha e combina com o sintoma de leitura/escrita de area errada da VRAM
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604142023-1e936ec`
  - `TXTDBG BUILD: A6F0`
  - `BUILD_HASH: 1e936ec-812c78295223b1b14b0dd96555e6c75580f88f18`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-15 11:14 -03

- O porte local do `WebMSX` avancou em dois blocos maiores, sem novo ciclo de hardware:
  - command engine `P1` com `WM/FC/BC` por plane nos caminhos que ainda usavam estado bruto
  - renderer `P1` sem segmentacao horizontal artificial por evento `x`
- Correcoes aplicadas:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `LMMC`, `CMMC`, `LMMM` e `BMXL` em `P1` agora usam `getWM/getFC/getBC` por plane, em linha com `V9990CommandProcessor.js`
  - `render_p1_frame()` passou a renderizar a scanline inteira a partir do snapshot da linha
  - os `raster_events` continuam registrados para diagnostico, mas deixaram de cortar a linha horizontalmente
- Racional tecnico:
  - o `WebMSX` constroi `P1` por scanline inteira; writes durante display alteram o baseline das linhas seguintes, nao subfaixas `x` da linha corrente
  - o core local ainda misturava:
    - `WM/FC/BC` brutos no command engine `P1`
    - segmentacao horizontal por evento no renderer
  - isso mantinha uma divergencia estrutural mesmo depois das correcoes de presenter, paleta e IRQ
- Estado atual:
  - o foco local permanece no porte semantico do `P1` contra `WebMSX`
  - o proximo bloco tecnico segue em:
    - revisar `BMXL/BMLX/BMLL` e uploads do gameplay contra `V9990CommandProcessor.js`
    - manter `P1/P2` no modelo line-based, sem reintroduzir cortes horizontais artificiais
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604151413-ebbecfe`
  - `TXTDBG BUILD: 3E29`
  - `BUILD_HASH: ebbecfe-6af258ceb9b5e2305b29a3bc103314f55db69833`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-15 16:20 -03

- A trilha do defeito dos `3` blocos corrompidos mudou de frame-profile generico para telemetria orientada exatamente ao padrao observado no gameplay.
- Instrumentacao nova em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `G9D clk`
    - `ScanLine`
    - linha e posicao horizontal do relogio sintetico do `V9990` (`status_uc_ticks`)
    - `cpu_cycles_now()`
    - quantidade de `raster_events`
    - paridade de campo
  - `G9D b16`
    - resumo so dos blocos suspeitos de `16` linhas
    - por bloco:
      - linhas com plane `A`
      - linhas com plane `B`
      - linhas visiveis no frame final
      - linhas faltantes onde existe background mas o resultado cai em backdrop
      - quantidade de linhas em backdrop
      - `backdrop index`
      - contagem de `raster_events`
      - subconjuntos `scroll/palette/backdrop`
      - faixa `x` dos eventos dentro do bloco
- Objetivo tecnico:
  - provar se o padrao `3x16 corretos + 1x16 corrompido` nasce do fetch/composicao do background ou do agendamento de eventos raster exatamente nesses boundaries
  - correlacionar o bloco ruim com backdrop efetivo e com o relogio CPU/V9990 no mesmo frame
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604151620-ebbecfe`
  - `TXTDBG BUILD: 3889`
  - `BUILD_HASH: ebbecfe-92a95a729fd16186c46ee75d45cf59a4015d06f1`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-15 22:40 -03

- A trilha da apresentacao inicial corrompida foi reduzida ao fetch basico do `P1`.
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_render_p1_plane_pass()` deixou de usar o sampler por pixel
  - o fetch do `PP1` agora segue o `WebMSX` no nivel de linha:
    - `scrollX & 511`
    - `buffPos = - (scrollX & 7)`
    - `realLine`
    - `namePosBase`
    - `namePos = (scrollX >> 3) << 1`
    - `32` names por linha, ou `33` quando ha desalinhamento
    - `pattern` lido em `4` bytes sequenciais por name
    - expansao de `8` pixels por name em ordem identica a `renderLineTypePP1A/PP1B`
- Racional tecnico:
  - a apresentacao inicial corrompida acontece antes do gameplay com splits mais agressivos
  - isso indica divergencia de fetch/composicao basica do `P1`, nao apenas de timing de raster
  - o sampler por pixel local podia aproximar a imagem, mas nao era um porte literal da semantica do `WebMSX`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604152240-ebbecfe`
  - `TXTDBG BUILD: 1E2B`
  - `BUILD_HASH: ebbecfe-5d97e7149965ef75588f2c7225f30fe54e06f29d`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-15 23:53 -03

- A UART da build `2FD7` reposicionou o defeito restante: a apresentacao inicial ja nasce corrompida no caminho `Bx`, antes do gameplay `P1`.
- Evidencias principais em `/private/tmp/msx2p-boot-serial.log`:
  - `G9D vp src:256x212 ... dis:1 ... scan:0`
  - `G9D fb w:256 h:212 iw:512 bpl:256 mk:2 ... gap:0 step:1-1 ...`
  - `G9D fb w:256 h:212 iw:512 bpl:512 mk:3 ...`
- Interpretacao:
  - o presenter HDMI nao e o ponto do defeito
  - o frame `Bx` util ja sai corrompido mesmo quando o perfil vertical aparece continuo
  - isso aponta para layout fisico de VRAM / decode horizontal de `Bx`, nao para gap vertical ou postfx
- Comparacao com `third_party/WebMSX/src/main/msx/video/V9990.js` mostrou uma divergencia estrutural:
  - o `WebMSX` alterna a `vram[]` inteira entre layout normal (`P1`) e interleaved (`modeData != P1`)
  - o core local ainda mantinha layout fixo com compensacao por `transform_bx()` em cada acesso
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novo estado `vram_interleaved`
  - novo buffer `g_fmsx_v9990_vram_interleave_tmp`
  - novos helpers:
    - `fmsx_v9990_vram_enter_interleaving()`
    - `fmsx_v9990_vram_exit_interleaving()`
    - `fmsx_v9990_update_vram_interleaving()`
    - `fmsx_v9990_debug_trace_vram_interleave()`
  - `transform_bx()` agora usa:
    - endereco cru quando a VRAM ja esta fisicamente interleaved
    - transform legado so como fallback para estados antigos ainda lineares
  - `fmsx_v9990_cpu_vram_physical_address()` agora segue o `WebMSX`:
    - acesso CPU cru na VRAM fisica
    - fallback legado apenas se um estado antigo estiver linear em modo nao-`P1`
  - a troca de layout agora ocorre em:
    - `SCREEN_MODE_0`
    - `SYSTEM_CONTROL`
    - `reset()`
  - `load_state()` passou a restaurar `vram_interleaved` conforme o modo salvo
- Nova evidencia UART:
  - `G9V ilv <tag> <antes>-><depois> m:<modo> sc:<system_control> sm0:<...> sm1:<...> pc:<...>`
  - esse trace registra quando o layout fisico da `vram[]` muda
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604152353-ebbecfe`
  - `TXTDBG BUILD: 742A`
  - `BUILD_HASH: ebbecfe-d86ef626962615524b471cec6f5fb708e21f987e`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-16 00:28 -03

- A depuracao do boot/apresentacao `Bx` encontrou uma divergencia semantica objetiva contra o `WebMSX`.
- Em `third_party/WebMSX/src/main/msx/video/V9990.js`, `updateType()` usa:
  - `SCREEN_MODE_0 >> 6` para `DSPM`
  - `SCREEN_MODE_0 & 0x03` para `CLRM`
  - `PALETTE_CONTROL` apenas para diferenciar `BP6/BD8/BYJK/BYUV` quando `CLRM == 2`
- O core local ainda fazia isso errado em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_bytes_per_line()` tratava os bits altos de `PALETTE_CONTROL` como se fossem `CLRM`
- Impacto:
  - o `Bx` podia escolher `mode_kind` incorreto ja na apresentacao inicial
  - isso explica a tela ja nascer corrompida antes mesmo do `P1` do gameplay
- Correcao aplicada:
  - `CLRM` agora vem de `SCREEN_MODE_0 & 0x03`
  - `PALETTE_CONTROL` continua sendo usado so para separar:
    - `BP6`
    - `BD8`
    - `BYJK`
    - `BYJKP`
    - `BYUV`
    - `BYUVP`
- UART:
  - o arquivo local `/private/tmp/msx2p-boot-serial.log` estava vazio nesta rodada, entao a correcao foi guiada por diff semantico direto contra `WebMSX`
  - a telemetria existente `G9D fb` continua mostrando `sm0/sc/pc` para validar o tipo real do frame em campo
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604160028-ebbecfe`
  - `TXTDBG BUILD: F576`
  - `BUILD_HASH: ebbecfe-1de5e8c1686d953e0737b4c51d4e1381d314bcf7`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-16 00:35 -03

- A regressao "nao boota antes da UART" foi tratada como regressao de bootstrap introduzida pelo experimento de interleaving fisico da `VRAM`.
- O corte foi revertido em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_update_vram_interleaving()` agora e no-op e mantem `vram_interleaved = FALSE`
  - `fmsx_v9990_transform_bx()` voltou a aplicar sempre `transform_bx_linear_to_interleaved()`
  - `fmsx_v9990_cpu_vram_physical_address()` voltou ao mapeamento legado por modo (`fmsx_v9990_map_vram_address()`)
- Racional tecnico:
  - o ultimo ponto conhecido de boot estava no modelo de `VRAM` linear
  - a troca fisica de layout e o acesso CPU cru nao resolveram a apresentacao e ainda introduziram travamento antes da UART
  - esta rodada preserva o ajuste semantico seguro do `Bx` (`CLRM` vindo de `SCREEN_MODE_0`) e remove so o bloco arriscado de bootstrap
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604160035-ebbecfe`
  - `TXTDBG BUILD: FC43`
  - `BUILD_HASH: ebbecfe-9120900294996a5d4a9b35ecf4d9612a20bc9178`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-16 22:43 -03

- O bug restante continua aparecendo antes do gameplay, na apresentacao inicial, com `presenter` ja validado como limpo.
- O diff direto contra `third_party/WebMSX/src/main/msx/video/V9990.js` fechou uma divergencia estrutural no layout/logica da `VRAM`:
  - `WebMSX` usa `VRAM` linear crua em `Bx/P2`
  - `input60/output60` tambem usam `VRAM` linear crua
  - o backend local ainda aplicava `transform_bx()` no renderer/command engine e fazia o `port 0x60` passar por mapeamento dependente do modo
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_transform_bx()` agora e identidade logica
  - `fmsx_v9990_transform_p2()` agora e linear
  - `fmsx_v9990_cpu_vram_physical_address()` agora usa endereco cru
  - `G9D fb` ganhou `map:` e `cpu:` para evidenciar na UART que o frame foi produzido nesse novo modelo
- Racional tecnico:
  - o experimento anterior de interleaving fisico da `VRAM` regrediu o boot e foi descartado
  - o corte atual preserva `storage` linear e alinha apenas a semantica de acesso ao `WebMSX`
  - isso e um alvo mais direto para a apresentacao corrompida e para os gaps de background no gameplay
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604162242-ebbecfe`
  - `TXTDBG BUILD: 703A`
  - `BUILD_HASH: ebbecfe-9f47a08605fb5d01afe09a242b2901f83d7e162c`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-16 23:08 -03

- Leitura da UART da build `2FD7` confirmou de novo a separacao do defeito em dois caminhos:
  - `Bx` ja nasce corrompido na apresentacao
  - `P1` continua com `holes` no gameplay
- Evidencias em `/private/tmp/msx2p-boot-serial.log`:
  - `G9D vp src:256x212 ... dis:1 ... scan:0` no `Bx`, descartando presenter/postfx
  - `G9D fb w:256 h:212 iw:512 bpl:256 mk:2 dm:3 sc:00 pc:00 map:lin cpu:lin ...`
  - `G9D fb w:256 h:212 iw:256 bpl:0 mk:0 dm:0 sc:00 pc:04 map:p1 cpu:lin ...`
  - `G9D p1 env:38-195 holes:73...` e `G9D lc y:73 ... a:00... b:00...`, confirmando que o buraco do gameplay ainda nasce no framebuffer final do `P1`
- O maior delta semantico restante contra `third_party/WebMSX/src/main/msx/video/V9990.js` voltou a ser o layout fisico da `VRAM` fora de `P1`.
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_update_vram_interleaving()` voltou a alternar fisicamente a `VRAM`:
    - linear em `P1`
    - interleaved em modos nao-`P1`
  - `transform_bx()` e `transform_p2()` agora usam endereco cru quando `vram_interleaved=TRUE`
  - `fmsx_v9990_cpu_vram_physical_address()` voltou a seguir a `VRAM` fisica, com fallback legado apenas para states antigos lineares
  - save-state promovido para `FMSX_V9990_STATE_VERSION 5`
  - `TFmsxV9990StatePayloadV5` agora persiste `vram_interleaved`
  - load de states `v1..v4` assume dump linear antigo e converte via:
    - `ld1`
    - `ld2`
    - `ld3`
    - `ld4`
  - UART nova de evidencia:
    - `G9V ilv <tag> <antes>-><depois> m:<modo> sc:<system_control> sm0:<...> sm1:<...> pc:<...>`
- Racional tecnico:
  - o experimento anterior de interleaving fisico quebrou o boot porque ainda misturava acesso CPU/renderer/state antigo
  - esta rodada reintroduz o interleaving fisico com persistencia explicita em state e migracao controlada de states antigos
  - o objetivo e atacar a tela de apresentacao corrompida no ponto em que o `WebMSX` diverge mais do backend local
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604162305-ebbecfe`
  - `TXTDBG BUILD: 81B3`
  - `BUILD_HASH: ebbecfe-0d1f6c7ee0172bd4fda6710f74a2aa7b31cbfea6`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-16 23:19 -03

- A build `81B3` reabriu a regressao de boot: o Raspberry travou antes da UART.
- Como nao houve qualquer trilha UART, este corte foi tratado como regressao estrutural do ultimo experimento de interleaving fisico da `VRAM`, e nao como evidencia nova do `V9990` funcional.
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_update_vram_interleaving()` voltou a ser `no-op`
  - `fmsx_v9990_transform_bx()` voltou ao mapeamento legado `transform_bx_linear_to_interleaved()`
  - `fmsx_v9990_cpu_vram_physical_address()` voltou a usar `fmsx_v9990_map_vram_address()`
- Mantido:
  - state version `5`
  - telemetria UART existente (`G9D fb`, `G9D vp`, `G9V ilv`)
  - restante das correcoes anteriores do `V9990`
- Racional tecnico:
  - a rodada `81B3` provou que o interleaving fisico ainda nao esta seguro para entrar no bootstrap
  - o caminho correto agora e recuperar a baseline que boota e continuar a trilha do `Bx/P1` sem reabrir regressao fora da UART
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604162319-ebbecfe`
  - `TXTDBG BUILD: E7FB`
  - `BUILD_HASH: ebbecfe-d553792c3bc9de44d97dbc6317a888fffa5e6cdc`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-16 23:57 -03

- A UART da build `2FD7` confirmou que o defeito da apresentacao continua no `Bx`, antes do gameplay:
  - `display-on` com presenter limpo
  - primeiro frame util do `Bx` ja sai errado (`mk:2` e depois `mk:3`)
  - eventos raster `AX/AY/PC/BD` existem com `x` especifico na mesma linha
- Divergencia concreta encontrada no core local:
  - o `P1` ja desenha por segmentos horizontais guiados por `raster_events`
  - o `Bx` ainda ignorava `event->x`
  - alem disso, eventos com `y == linha atual` so passavam a valer na linha seguinte
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_render_bx_line()` foi substituido por `fmsx_v9990_render_bx_segment()`
  - `fmsx_v9990_render_bx_firstlight()` agora:
    - aplica eventos `y < linha` como baseline persistente
    - processa eventos `y == linha` no `x` correto
    - desenha a propria linha em segmentos horizontais
    - so depois promove esses eventos para o baseline das linhas seguintes
  - `G9D bx` foi trocado para resumir os primeiros eventos raster relevantes do `Bx` com `y/x/k/v`
- Racional:
  - isso alinha o `Bx` ao mesmo modelo por eventos ja usado no `P1`
  - e aproxima o fluxo do `WebMSX`, que trata writes durante display no ponto correto do frame/linha
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604162357-ebbecfe`
  - `TXTDBG BUILD: 30EB`
  - `BUILD_HASH: ebbecfe-8028129f10d9c21970d937da835497d6958695dd`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-17 00:32 -03

- UART da baseline que voltou a bootar (`E7FB`) continuou mostrando:
  - apresentacao `Bx` errada dentro do proprio framebuffer, com presenter limpo
  - gameplay `P1` com holes no framebuffer final, e nas linhas furadas tanto plane `A` quanto plane `B` chegam zeradas antes da composicao
- Divergencia semantica identificada contra `WebMSX`:
  - `SCAY12-8` e `SCBY8` ainda estavam alterando o frame corrente no backend local
  - no `WebMSX`, o high scroll e deferido para a proxima entrada em display ativo
  - writes de `AY/BY/AX/BX/PRIORITY` com display desligado nao estavam recompondo imediatamente a baseline usada no proximo `display-on`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_note_scroll_ay_high_write()`:
    - removeu o recalc de `scroll_ay_frame` no frame corrente
    - passou a aplicar so a mascara de `scrollYMax` (`R512/R256`) para as linhas seguintes do frame atual
  - `fmsx_v9990_note_scroll_by_high_write()`:
    - removeu o recalc de `scroll_by_frame` no frame corrente
    - passou a expor imediatamente apenas `*SDA/*SDB`, mantendo `SCBY8` do frame atual
  - writes de `AY0/AY1/AX/BY0/BY1/BX/PRIORITY` com `display-off` agora chamam `fmsx_v9990_reset_scroll_line_state()`
- Racional:
  - isso reproduz a semantica do `WebMSX` em dois pontos criticos:
    - high scroll diferido para o proximo display ativo
    - baseline coerente enquanto o display esta desligado
  - o corte busca eliminar:
    - preparacao de frame com baseline velha no titulo `Bx`
    - holes no `P1` originados por estado incoerente entre `display-off` e o `display-on` seguinte
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604170032-ebbecfe`
  - `TXTDBG BUILD: 4B42`
  - `BUILD_HASH: ebbecfe-bc89f1103872a603fb8745aa070533d089275318`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-17 13:06 -03

- A baseline que continua bootando (`E7FB`) ainda fecha o mesmo diagnostico de UART:
  - a apresentacao inicial nasce corrompida no `Bx`
  - o gameplay `P1` continua com holes no proprio framebuffer final
  - o presenter continua limpo
- Comparacao semantica contra `third_party/WebMSX/src/main/msx/video/V9990.js` mostrou que o delta mais forte restante fora de `P1` ainda e layout/endereco da `VRAM`.
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - mantida a `VRAM` fisica linear para preservar o boot estavel
  - `transform_bx()` passou a ser tratado explicitamente como traducao de endereco interleaved logico para backing store linear
  - renderer `Bx/P2` agora le por esse mapeamento virtual
  - `port 0x60` fora de `P1` agora tambem usa esse mapeamento virtual
  - acessos lineares do command engine fora de `P1` (`read_vram_linear` / `write_vram_linear`) passaram a usar o mesmo mapeamento
  - `transform_p2()` foi alinhado ao mesmo caminho
  - UART `G9D fb` agora reporta `map:vil cpu:vil` fora de `P1`
- Racional:
  - isso tenta reproduzir a semantica que o `WebMSX` enxerga apos entrar em interleaving, sem reativar o interleaving fisico que regrediu o boot na `81B3`
  - o alvo imediato continua sendo estabilizar o `Bx` da apresentacao antes de voltar a estreitar o `P1`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604171306-ebbecfe`
  - `TXTDBG BUILD: 1A67`
  - `BUILD_HASH: ebbecfe-90fbab5c7cc24626faab5b77e11bcc498f7d6c08`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-17 13:43 -03

- A UART da baseline que boota continua fechando o mesmo quadro:
  - a apresentacao `Bx` nasce errada dentro do proprio framebuffer
  - o gameplay `P1` continua abrindo holes no frame final
  - o presenter permanece limpo
- Comparacao direta com `third_party/WebMSX/src/main/msx/video/V9990CommandProcessor.js` revelou uma divergencia estrutural fora de `P1`:
  - o renderer `Bx/P2` ja consumia `VRAM` virtual-interleaved via `transform_bx()`
  - o command engine ainda mantinha varios caminhos de leitura/escrita lineares brutos
  - em `BPP16`, o core local ainda tratava a palavra como bancos `+0x40000`, enquanto o `WebMSX` usa bytes adjacentes
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - criados helpers dedicados para o command engine fora de `P1`:
    - `fmsx_v9990_cmd_read_vram_nonp1()`
    - `fmsx_v9990_cmd_write_vram_nonp1()`
    - `fmsx_v9990_cmd_read_vram_xy()`
    - `fmsx_v9990_cmd_write_vram_xy()`
  - `POINT/PSET` fora de `P1` agora usam o mesmo mapeamento de `VRAM` do renderer `Bx/P2`
  - `BPP16` do command engine passou a operar com bytes adjacentes (`addr` / `addr + 1`), em vez de bancos `+0x40000`
  - `LMMC` (`0x08`) em `BPP16` agora le a fonte pelo mesmo mapeamento virtual-interleaved
  - `BMLL/CMMM` (`0x0A`) fora de `P1` agora leem e escrevem o destino pelo mesmo caminho do renderer
  - `SRCH` (`0x0C`) fora de `P1` agora compara contra o byte vindo do mesmo mapeamento virtual-interleaved
- Racional:
  - isso remove a divergencia mais forte entre renderer e command engine fora de `P1`
  - o alvo direto continua sendo:
    - a apresentacao `Bx` corrompida antes do gameplay
    - background/collision data inconsistente que acaba abrindo os holes no gameplay
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604171343-ebbecfe`
  - `TXTDBG BUILD: 9463`
  - `BUILD_HASH: ebbecfe-d8dc83ac4ed59a584e0b90ccc87477f02e1ba2bb`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-17 15:01 -03

- A UART da baseline que voltou a bootar (`E7FB`) confirmou uma regressao separada no `Bx`:
  - a apresentacao ja nascia corrompida no primeiro frame util
  - `G9D fb` marcava `map:vil cpu:vil`
  - o presenter seguia limpo
- Isso isolou o problema:
  - a regressao da apresentacao vinha do mapeamento virtual-interleaved fora de `P1`
  - os holes do gameplay continuam sendo um defeito separado no framebuffer `P1`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `Bx/P2` voltaram a usar backing linear puro
  - `port 0x60` fora de `P1` voltou ao backing linear puro
  - acessos lineares do command engine fora de `P1` voltaram ao backing linear puro
  - a UART do frame passou a marcar `map:lin cpu:lin` em modos nao-`P1`
- Racional:
  - recuperar a baseline funcional de boot + apresentacao
  - continuar a depuracao do `P1` exclusivamente por UART, sem manter uma regressao no `Bx`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604171501-ebbecfe`
  - `TXTDBG BUILD: B4A6`
  - `BUILD_HASH: ebbecfe-46e878ac119236b8ad631b5a93cd43db251c1650`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-17 16:19 -03

- A rodada saiu de correcao semantica cega do `V9990` e passou a fechar a infraestrutura do plano de depuracao guiado por evidencia.
- Hotkeys novas em `DEBUG=1`:
  - `F9`:
    - `OFF`
    - `LIVE_BG_A`
    - `LIVE_BG_B`
    - `LIVE_BG_COMPOSITE`
    - `LIVE_BG_PROVENANCE`
  - `F10`:
    - `OFF`
    - `ROM_EXPECTED`
    - `ROM_SIDE_BY_SIDE`
    - `ROM_DIFF`
- Integracao ponta-a-ponta concluida:
  - `src/tools/input/keyboard_input.h/.cpp`
    - `F10` passou a ser decodificada no HID
  - `src/kernel.cpp`
    - `F9/F10` agora alternam diretamente as views de debug do `V9990`
  - `src/backend/msx/backend.h/.c`
  - `src/backend/msx/backend_internal.h`
  - `src/backend/msx/modules/fmsx/module.c`
  - `src/backend/msx/modules/fmsx/fmsx_runtime.h/.c`
  - `src/backend/msx/modules/fmsx/fmsx_v9990.h/.c`
- No `V9990`:
  - `get_video_frame()` agora pode devolver um frame alternativo de debug
  - entrou renderer de debug do `P1` para:
    - plane `A`
    - plane `B`
    - composite de background sem HUD/sprites
    - provenance por tile `8x8`
  - a view de referencia da ROM ainda esta em scaffold:
    - frame alternativo preto
    - UART `G9D ref unavailable dm:<modo>`
- A UART foi padronizada parcialmente para o formato do plano:
  - `G9W` -> `G9M mode`
  - `G9L` -> `G9U`
  - `G9D b16` -> `G9B blk`
- Checkpoints do `Ghost'n Goblins` passaram a existir no runtime, sem porta de debug nova:
  - `G9R sel tag:key`
  - `G9R sel tag:phase`
  - `G9R sel tag:upload`
  - `G9R sel tag:disp`
  - cada linha carrega:
    - `PC`
    - `C719`
    - `C1C1/C1C3`
    - `C1C5/C1C7`
    - `C088/C087/C947`
- Entrou o builder dos discos de debug usando o fluxo canonico `build-msx-disk.py`:
  - `scripts/build-v9990-debug-disks.py`
  - gera:
    - `sdcard/disks/DEBUG/GGDBG.DSK`
    - `sdcard/disks/DEBUG/V9990CHK.DSK`
  - copia fontes host para:
    - `sdcard/disks/DEBUG/src/V9990/`
  - documentacao local:
    - `roms/games/disks/DEBUG/V9990/README.md`
- Estado atual:
  - a infraestrutura de coleta/visualizacao foi fechada
  - a referencia ROM para `F10` ainda nao foi portada; o proximo corte tecnico e ligar o decoder dos recursos da fase do `Ghost'n Goblins` a essa view
  - a partir daqui, novos ajustes semanticos do `V9990` devem vir acompanhados de evidencia UART nesses checkpoints
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `python3 -m py_compile scripts/build-v9990-debug-disks.py scripts/build-msx-disk.py`
  - `python3 scripts/build-v9990-debug-disks.py`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604171619-ebbecfe`
  - `TXTDBG BUILD: AEE4`
  - `BUILD_HASH: ebbecfe-8ab1f0f436415e9520b7ab6188eb00a100e6943c`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-17 17:19 -03

- A build `AEE4` passou a nao bootar mesmo com `kernel8.img` dentro do limite do Circle.
- Verificacao objetiva:
  - `artifacts/kernel8-issue251.img` = `807736` bytes
  - `CIRCLE_KERNEL_MAX_SIZE = 0x400000`
  - `startup64.o` segue com stack alta em `0x004A0000`
- Conclusao:
  - a regressao nao era `KERNEL_SIZE`
  - o maior suspeito passou a ser footprint de `.bss`, em especial o framebuffer extra de debug do `V9990`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - removido `g_fmsx_v9990_debug_framebuffer_storage`
  - `F9/F10` continuam existindo
  - quando ativos, passam a renderizar sobre o framebuffer principal do `V9990`, sem segunda copia residente
- Objetivo:
  - preservar a infraestrutura de depuracao/UART
  - eliminar o candidato mais forte de regressao de boot sem desmontar o plano
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604171719-ebbecfe`
  - `TXTDBG BUILD: 6F0E`
  - `BUILD_HASH: ebbecfe-876fdcf40ead84cd0b779ab91a47e88b881922cb`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-17 23:54 -03

- A baseline voltou a bootar, mas o gameplay continuou abrindo os mesmos gaps no background do `P1`.
- Leitura da UART da baseline:
  - o presenter segue limpo
  - os holes continuam nascendo no framebuffer final do `P1`
  - o padrao observado em campo (`48 linhas boas + 16 ruins`) continua compativel com perda de `0x800` bytes dentro de bursts de `0x2000`
- Correcao desta rodada nao mexe na semantica do `V9990`; so amplia a evidencia UART do command engine em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `G9U chunk` agora dispara a cada `0x0800`
  - o trace passa a carregar:
    - progresso em `0x800` (`c8`)
    - progresso em `0x2000` (`c20`)
    - `row_bytes`
    - linhas equivalentes (`row`)
    - blocos de `16` linhas (`b16`)
- Objetivo:
  - provar ou descartar no proximo log se a corrupcao do background coincide exatamente com boundaries de `0x800`/`16` linhas
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604172354-ebbecfe`
  - `TXTDBG BUILD: D640`
  - `BUILD_HASH: ebbecfe-58ec026f56e769292b85c7f7c13f00550bc5a920`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-18 00:49 -03

- A UART do `UNDERWATER` fechou que o repro principal do `Bx` esta em `B1/BD16`, nao em `B5/B6`.
- Evidencias:
  - `G9M mode ... dm:B1`
  - `G9D fb ... mn:B1 sm0:87 sm1:00`
  - presenter limpo no mesmo frame
- Divergencia semantica direta contra `WebMSX` em `third_party/WebMSX/src/main/msx/video/V9990CommandProcessor.js`:
  - `SX/DX` sempre passam por `imageWidthMask`
  - `SY/DY` sempre passam por `imageHeightMask`
  - o backend local ainda retornava `0` para esses masks fora de `P1/P2`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novo helper `fmsx_v9990_cmd_bits_per_pixel()`
  - novo helper `fmsx_v9990_cmd_latched_image_height()`
  - `imageHeight` fora de `P1/P2` agora segue `VRAM_BYTES / ((imageWidth * bpp) >> 3)`, como no `WebMSX`
  - `fmsx_v9990_cmd_visible_width_mask()` passou a cobrir `BPP2/4/8/16`
  - `fmsx_v9990_cmd_visible_height_mask()` / `fmsx_v9990_cmd_image_height_mask()` passaram a cobrir `BPP2/4/8/16`
  - `G9U start/chunk/done` agora mostra `sx/sy/dx/dy = masked/raw`
- Objetivo:
  - provar no proximo UART se o `UNDERWATER` deixa de executar uploads/desenho fora do envelope real do `B1`
  - atacar o defeito do `Bx` sem tocar no presenter nem reabrir regressao de boot
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604180049-ebbecfe`
  - `TXTDBG BUILD: 6F10`
  - `BUILD_HASH: ebbecfe-78436dbed4cbf99ef946f1388fc94bdaff5bd1a6`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-18 01:10 -03

- A UART do `UNDERWATER` fechou o desvio atual do command engine em `Bx/B1`:
  - `G9M mode ... dm:B1 sm0:87`
  - `G9D fb ... nz:107 sig:106`, confirmando meia altura efetiva ja no framebuffer do `V9990`
  - `G9D vp ... scan:0`, mantendo o presenter fora da suspeita
  - `G9U start op:90 ... sy:0/0 dx:256/256 dy:848/848`
  - `G9U start op:80 ... sx:256/256 sy:848/848 dx:0|256 dy:0/0`
- Leitura objetiva:
  - o demo alterna copias `256x212` para `dx=0` e `dx=256`, o que explica a duplicacao horizontal
  - o command engine ainda estava iniciando `SY/DY` com os valores crus dos registradores (`848`), nao com as coordenadas mascaradas pela altura da imagem como no `WebMSX`
- Comparacao direta com `third_party/WebMSX/src/main/msx/video/V9990CommandProcessor.js`:
  - `getSX()/getSY()/getDX()/getDY()` aplicam `imageWidthMask/imageHeightMask` logo no inicio do opcode
  - o backend local so aplicava essas mascaras no advance do cursor
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - novos helpers:
    - `fmsx_v9990_cmd_start_visible_sy()`
    - `fmsx_v9990_cmd_start_visible_dy()`
    - `fmsx_v9990_cmd_normalize_start_coordinates()`
  - `fmsx_v9990_cmd_execute()` agora chama `normalize_start_coordinates()` imediatamente apos `latch_geometry()`
  - `SX/DX` preservam os bits de plane em `P1`, mas passam a iniciar com as coordenadas visiveis mascaradas
  - `SY/DY` passam a iniciar no envelope vertical mascarado para todos os modos com geometria latched
- Objetivo:
  - fazer a proxima UART mostrar `sy/dy = masked/raw`, em vez de `848/848`
  - cortar a combinacao atual de meia-altura + duplicacao horizontal sem tocar no presenter
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604180110-ebbecfe`
  - `TXTDBG BUILD: 67DE`
  - `BUILD_HASH: ebbecfe-6ff64e626e107bb559acdc85ef8ff7ec0475c40b`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-18 13:45 -03

- O repro mais recente do `UNDERWATER` fechou um corte melhor:
  - a correção anterior removeu o erro grosseiro de envelope do command engine
  - o decode de cor `BD16` já está coerente
  - o `presenter` continua limpo
  - o framebuffer do `V9990` segue embaralhado no `B1/BD16`
- Comparacao direta com `WebMSX`:
  - `V9990CommandProcessor.js` usa o lado linear `16-bit` em ordem `big-endian`
  - o nosso command engine ainda misturava `little-endian` e acesso transformado de `Bx` nas rotas lineares `16-bit`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_cmd_linear_pcopylx_bpp16()`:
    - origem XY em `big-endian`
    - destino linear em `big-endian`
  - `fmsx_v9990_cmd_point()` / `fmsx_v9990_cmd_pset_color()` `BPP16`:
    - leitura/escrita XY em `big-endian`
  - `BMXL` (`0x80`) `BPP16` fora de `P1`:
    - fonte agora lida por `fmsx_v9990_read_vram_linear()`
  - `BMLL` nao-`P1`:
    - destino agora lido/escrito por `fmsx_v9990_read_vram_linear()` / `fmsx_v9990_write_vram_linear()`
- Leitura objetiva:
  - o defeito restante do `UNDERWATER` ficou restrito ao pipeline linear `16-bit` do command engine em `B1/BD16`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604181345-ebbecfe`
  - `TXTDBG BUILD: 0CE6`
  - `BUILD_HASH: ebbecfe-723e8ab1eb5b76a11864e5f52c6896cb434a6eb2`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-18 14:02 -03

- A UART do `UNDERWATER` apos a `0CE6` fechou a regressao:
  - `G9D vp ... scan:0` manteve o presenter fora da suspeita
  - `G9D fb ... nz:212 sig:212` mostrou que geometria e envelope do `B1` continuavam corretos
  - o que piorou foi só o conteúdo/cor do framebuffer
- Leitura objetiva:
  - a mudanca de byte-order `BPP16` da `0CE6` foi larga demais
  - ela reintroduziu corrupcao de cor sem evidência de ganho estrutural no `UNDERWATER`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_cmd_linear_pcopylx_bpp16()` voltou para `little-endian`
  - `fmsx_v9990_cmd_point()` `BPP16` voltou para leitura XY em `little-endian`
  - `fmsx_v9990_cmd_pset_color()` `BPP16` voltou para leitura/escrita XY em `little-endian`
  - `BMXL` (`0x80`) `BPP16` voltou a ler a fonte linear em `little-endian`
- Escopo:
  - nenhum ajuste de geometria, mascara, presenter ou scheduler foi alterado
  - o corte desta rodada remove apenas a regressao de cor introduzida pela `0CE6`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604181402-ebbecfe`
  - `TXTDBG BUILD: 9A9D`
  - `BUILD_HASH: ebbecfe-ae2e42a202ea5b179123695b3390e472756312c6`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-18 14:43 -03

- A UART da `9A9D` confirmou que o `UNDERWATER` ainda nao falha em presenter nem em decode de cor:
  - `G9D fb ... nz:212 sig:212` manteve o `B1` com envelope completo
  - `G9D vp ... scan:0` manteve o presenter limpo
  - o framebuffer continuou embaralhado, mas com cores corretas
- O desvio forte remanescente ficou no command engine linear do `Bx`:
  - `G9U start/done` continuava emitindo `sa/da` reconstruidos a partir de `SX/SY/DX/DY` ja normalizados
  - comparacao direta com `third_party/WebMSX/src/main/msx/video/V9990CommandProcessor.js` mostrou a divergencia:
    - `SA = ((SY1 & 0x07) << 16) | (SY0 << 8) | SX0`
    - `DA = ((DY1 & 0x07) << 16) | (DY0 << 8) | DX0`
  - ou seja, `SA/DA` no `WebMSX` sao lineares crus, nao derivados do XY mascarado
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_cmd_linear_src_address()` agora monta `SA` diretamente de `SX0/SY0/SY1`
  - `fmsx_v9990_cmd_linear_dst_address()` agora monta `DA` diretamente de `DX0/DY0/DY1`
  - os comentarios desses helpers registram a semantica do `WebMSX`
- Leitura objetiva:
  - o bug restante do `UNDERWATER` ficou estreito no uso de endereco linear errado nos opcodes `BMXL/BMLX/BMLL/CMMM` do `Bx`
  - o proximo teste em hardware deve mostrar `G9U sa/da` coerentes sem mexer em presenter, geometrias ou paleta
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604181443-ebbecfe`
  - `TXTDBG BUILD: 8CC6`
  - `BUILD_HASH: ebbecfe-5cd4000fb8e6a54db11d45da5e71ba6edbe31912`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-19 13:11 -03

- Engenharia reversa do `CODEINTRUDER.ROM`:
  - arquivo `roms/games/roms/V9990/CODEINTRUDER.ROM`
  - `SHA1=f7039ebd100695d9a40188d7a3117c0fcc11d442`
  - tamanho `512 KiB`
  - header MSX `AB` em `0000h`, `INIT=4725h`
  - string interna `CODENAME:INTRUDER BITVISION 2016 BTV-002`
  - mapper estimado pela heuristica local: `KONAMI5`
- Fluxo de boot da ROM:
  - `4725h`: inicializacao, stack e hooks
  - escreve `6000h=00` e `7000h=01`
  - chama codigo no banco 1 em `7331h`
  - `7358h`: rotina de deteccao da V9990
  - escreve endereco VRAM `00000h` pelos registradores via `64h/63h`
  - escreve `A2h` na porta `60h`
  - configura endereco de leitura `00000h`
  - le porta `60h` e compara com `A2h`
  - falha: chama `745Ah` e entra no loop infinito `7466h`
- Conclusao:
  - o sintoma "carrega no slot e fica parado" e compatível com V9990 ausente/desligada no momento do `INIT`
  - nao e primariamente um problema de auto-switch do presenter, porque a ROM para antes de entrar no fluxo visual do jogo
- Correcao aplicada:
  - `src/kernel.cpp` passou a detectar ROMs V9990 por caminho/nome (`V9990`, `GFX9000`, `CODEINTRUDER`, `GHOSTGOBLINS`, `UNDERWATER`)
  - ao selecionar/configurar uma dessas ROMs, `m_Gfx9000Enabled` e ligado antes do hard reset e o menu e sincronizado
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c` rearma trace curto de portas/VRAM quando a V9990 e habilitada
  - leitura de `60h` agora emite `G9P rd` com o valor real retornado, para validar o compare `A2h`
- UART esperada para `CODEINTRUDER`:
  - `G9E cart-auto ON src:menu` ou `G9E cart-auto ON src:cfg`
  - `G9P out p:64/63/60 ... pc:7440/735F`
  - `G9P rd p:60 v:A2 ... pc:736A` quando o teste passa
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604191311-ebbecfe`
  - `TXTDBG BUILD: 2CD7`
  - `BUILD_HASH: ebbecfe-48663cc86dd3ab32f35d0970d305f6bcdf8f6d5d`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-19 13:25 -03

- Resultado em hardware da `2CD7`:
  - boot parou em `Boot step: init USB`
  - isso ocorre antes de qualquer execucao do cartucho e antes do teste V9990 do `CODEINTRUDER`
- Contencao aplicada:
  - removida a autoativacao de `GFX9000` durante leitura do `msxbarepi.cfg`
  - mantida a autoativacao somente quando uma ROM V9990 e selecionada pelo menu, depois do USB pronto
- Proximo teste:
  - confirmar que a build entra no main loop (`BT14`)
  - carregar `roms/games/roms/V9990/CODEINTRUDER.ROM` pelo menu
  - UART esperada apos selecao: `G9E cart-auto ON src:menu`
  - UART esperada no teste de presenca: `G9P rd p:60 v:A2 ... pc:736A`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604191325-659cef4`
  - `TXTDBG BUILD: 705D`
  - `BUILD_HASH: 659cef4-d8e23dcc8b9514ac31b59a0c1be35ff77013114b`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-19 13:35 -03

- Hardware reportou que `CODEINTRUDER.ROM` ainda nao entra e aparentemente a V9990 nao e ativada.
- Hipotese corrigida:
  - a build anterior mantinha autoativacao apenas na selecao via menu
  - se a ROM ja estivesse persistida no slot pelo `msxbarepi.cfg`, o backend inicializava com `GFX9000 OFF`
- Mudanca aplicada:
  - criado `ApplyGfx9000AutoForActiveCartridge()`
  - depois de `BT13/USB Host... OK`, o kernel olha os cartuchos ativos no backend
  - se algum caminho ativo parece V9990, liga `GFX9000`, sincroniza menu/backend e reinicia o backend uma vez
  - o mesmo tratamento roda se o USB so inicializar em retry
- UART esperada:
  - ROM persistida no `.cfg`: `G9E cart-auto ON src:boot`
  - ROM selecionada no menu: `G9E cart-auto ON src:menu`
  - teste de presenca da ROM: `G9P rd p:60 v:A2 ... pc:736A`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604191335-659cef4`
  - `TXTDBG BUILD: DB66`
  - `BUILD_HASH: 659cef4-50dd86bb04fbc5f69c6a9891fe41709037c7c941`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-19 14:42 -03

- Hardware reportou que a build anterior ainda nao alterou o comportamento do `CODEINTRUDER.ROM`.
- Correcoes aplicadas:
  - autoativacao por `.cfg` foi restaurada antes do `StartMSX`, mas sem UART precoce; o log `G9E cart-auto ON src:cfg` so sai depois de `BT12`
  - antes do runtime inicializar, `fmsx_runtime_set_gfx9000_enabled()` agora so registra a intencao; a ativacao interna do V9990 fica concentrada no `fmsx_runtime_start()`
  - selecao via menu agora tambem corrige divergencia entre estado local `m_Gfx9000Enabled` e estado real do runtime
  - `CODEINTRUDER.ROM` foi adicionado ao fallback SHA1 local como mapper `KONAMI5` (`2`)
  - a UART agora emite `G9P miss-in/miss-out` quando o Z80 acessa portas `60h..6Fh` com a V9990 desligada
  - `fmsx_v9990_power_on()` preserva a janela curta de logs de porta quando a V9990 ja nasce ligada
- Leitura esperada em hardware:
  - `G9E cart-auto ON src:cfg` confirma autoativacao antes do boot da ROM persistida
  - `G9E cart-auto ON src:menu` confirma autoativacao por selecao no browser
  - `G9P miss-*` indica que a ROM ainda esta batendo nas portas com V9990 desligada
  - `G9P rd p:60 v:A2 pc:736A` indica que o teste de presenca da ROM passou
  - `G9P rd p:60` com valor diferente de `A2` indica falha no caminho CPU VRAM read/write
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604191442-659cef4`
  - `TXTDBG BUILD: 45F5`
  - `BUILD_HASH: 659cef4-18c3a1d46c0db99ea0a46aac9ef60a7d46833f84`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-19 16:07 -03

- Sintoma apos `45F5`:
  - `CODEINTRUDER.ROM` ainda nao entra
  - a autoativacao pelo kernel/menu nao foi suficiente para provar que a V9990 esta ligada exatamente antes do `StartMSX`
- Mudanca:
  - `fmsx_runtime_start()` passou a fazer uma autoativacao local de ultima defesa
  - a deteccao usa `ROMName[]` e `g_cartridge_path[]`, procurando `V9990`, `GFX9000`, `CODEINTRUDER`, `GHOSTGOBLINS` e `UNDERWATER`
  - se a ROM ativa parece V9990 e `GFX9000` ainda esta OFF, o runtime liga `g_gfx9000_enabled` imediatamente antes de chamar `fmsx_v9990_set_enabled()` e `StartMSX()`
  - a funcao `fmsx_runtime_name_contains_casefold()` foi movida para fora do bloco `DEBUG`, para manter a deteccao compilavel tambem em `DEBUG=0`
  - adicionada UART `G9C start tag:pre-start/post-start g9:<0|1> ...` para o `CODEINTRUDER`, mostrando o estado efetivo no boot da ROM
  - adicionada UART `G9C pc tag:vram-test/after-test/no-v9990-loop` para marcar o teste `7358h` e o loop de falha `7466h`
- Evidencias esperadas:
  - `G9C start ... g9:1` confirma que o runtime iniciou o `CODEINTRUDER` com `GFX9000` ligado
  - `G9E rt-cart-auto ON` so aparece se a autoativacao precisou ser feita dentro do runtime
  - `G9C pc tag:no-v9990-loop` confirma que a ROM rejeitou a V9990 no teste de presenca
  - `G9C pc tag:after-test` confirma que o teste passou e o bloqueio e posterior
  - `G9P miss-*` ainda indica porta V9990 acessada com device desligado
  - `G9P rd p:60 v:A2 pc:736A` confirma que o teste de presenca da ROM passou
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `git diff --check`
- Build atual:
  - `BUILD_BID: 202604191607-659cef4`
  - `TXTDBG BUILD: 8E52`
  - `BUILD_HASH: 659cef4-bd02b9d9fb80d03c662a44202a0ec1ab65b0848a`
  - tamanho `kernel8.img`: `816824` bytes, abaixo de `KERNEL_MAX_SIZE=0x400000`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-19 16:29 -03

- Sintoma apos `8E52`:
  - `CODEINTRUDER.ROM` ainda nao entra e aparenta travar logo depois da carga
- Leitura UART:
  - o boot do kernel esta saudavel e chega em `BT14`
  - `G9E cart-auto ON src:cfg` + `G9E cfg-set ON` confirmam `GFX9000` ligada
  - `G9P rd p:60 v:A2 pc:736C` confirma que a rotina de presenca da V9990 passou
  - nao apareceu `G9P miss-*`; autoativacao e caminho basico de porta/VRAM nao sao mais o bloqueio
  - a sequencia seguinte configura `P1`, zera paleta em `p:61 pc:739C`, ativa `SCREEN_MODE_0=01` e inicia upload CPU VRAM em `07C000`
  - a UART ficou cega porque o budget `G9P` foi consumido pelo loop repetitivo de paleta antes dos pontos de espera reais
- Mudanca:
  - detector do `CODEINTRUDER` agora aceita nomes truncados (`CODEINTR`, `INTRUDER`)
  - `G9P out p:61 pc:739C` repetitivo foi convertido em resumo `G9C pal`
  - adicionados checkpoints compactos `G9C sts` em leituras de `STATUS` nos loops conhecidos do disassembly, expondo `CE/VR/HR`
  - adicionados checkpoints `G9C vram` em boundaries de `0x1000` para uploads CPU VRAM no loop `7487/748A`
- Evidencias esperadas:
  - `G9C start ... g9:1` deve confirmar o nome/path reconhecido
  - `G9C sts` repetindo o mesmo `pc` e `vr` sem alternar aponta para bug de `STATUS`/timing vertical
  - `G9C vram raw:0007C000`, `0007D000`, etc. indica que o software ainda esta fazendo upload e nao travado
  - se `G9C pc tag:after-test` aparece e depois nao ha `G9C sts/vram`, o bloqueio esta em outra rotina da ROM e o proximo passo e ampliar checkpoint por PC
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `git diff --check`
- Build atual:
  - `BUILD_BID: 202604191629-659cef4`
  - `TXTDBG BUILD: 9F50`
  - `BUILD_HASH: 659cef4-6564dc6d37e5d96033b69c8d83289cd2458080fe`
  - tamanho `kernel8.img`: `819016` bytes, abaixo de `KERNEL_MAX_SIZE=0x400000`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-19 16:52 -03

- Sintoma apos `9F50`:
  - `CODEINTRUDER.ROM` continua sem entrar
- Evidencia UART:
  - a V9990 esta ativa e responde ao teste da ROM: `G9P rd p:60 v:A2 pc:736C`
  - a ROM passa pelo init `P1`, zera paleta e inicia upload CPU VRAM em `07C000`
  - `G9C vram raw:0007C000` e `raw:0007D000` batem com a rotina `7474h`, que preenche blocos ate antes de `07E000`; esses dois boundaries sao esperados e nao indicam, sozinhos, o travamento
- Causa corrigida:
  - `third_party/openMSX/share/softwaredb.xml` classifica `Codename: INTRUDER` (`SHA1=f7039ebd100695d9a40188d7a3117c0fcc11d442`) como `ASCII16`
  - o fallback local anterior estava em `KONAMI5` (`2`), incompatível com os writes da ROM em `7000h` para selecionar a janela `8000h-BFFFh`
  - `src/backend/msx/modules/fmsx/fmsx_carts_sha_fallback.c` foi alterado para mapper `ASCII16` (`5`)
  - `roms/initramfs/CARTS.SHA` recebeu a mesma entrada `f7039ebd100695d9a40188d7a3117c0fcc11d442 5`
- Instrumentacao:
  - detector runtime do Code Intruder agora tambem usa assinatura `CODENAME:INTRUDER` dentro da ROM carregada
  - `G9C vram` cobre uploads compactos nas rotinas de decompress/upload da ROM, nao apenas o loop `7487/748A`
  - logs genericos `G9P/G9V` sao suprimidos nos uploads bulk conhecidos para preservar a UART util
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `git diff --check`
  - `make -j4 DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604191652-659cef4`
  - `TXTDBG BUILD: 5A33`
  - `BUILD_HASH: 659cef4-690b959dfbda735cfa0703e5a49c405ea27dd960`
  - tamanho `kernel8.img`: `821064` bytes, abaixo de `KERNEL_MAX_SIZE=0x400000`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-19 17:30 -03

- Sintomas apos a correcao do mapper do `CODEINTRUDER`:
  - overlay `DEBUG [MIN]` continuava mostrando `DFS:NTSC`
  - ROMs V9990 nao relacionadas ao CodeIntruder, como `GHOSTGOBLINS.ROM`, cairam para cerca de `30 FPS` ou menos
- Causa identificada:
  - a nova deteccao por assinatura interna `CODENAME:INTRUDER` estava sendo executada no checkpoint do CodeIntruder dentro do loop de slices de Z80
  - para ROMs que nao eram CodeIntruder, a decisao negativa nao era cacheada, entao o runtime varria a ROM repetidamente no caminho quente do frame
- Correcao aplicada:
  - `TFmsxRuntimeCodeIntruderTraceState` ganhou flag `probed`
  - `G9C start` preenche o cache de deteccao no inicio do runtime
  - `fmsx_runtime_trace_codeintruder_checkpoint()` consulta o cartucho somente uma vez por reset/load quando ainda nao ha cache
  - `TFmsxTimingDebug` ganhou `reg9`
  - o `DFS` do overlay `MIN` e o `PAL/NTSC` de `TM` agora usam diretamente `VDP R#9 bit1`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `git diff --check`
  - `make -j4 DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604191730-659cef4`
  - `TXTDBG BUILD: 8ADA`
  - `BUILD_HASH: 659cef4-a1023396f68d717fef0fd5d1bd1118f24291e59e`
  - tamanho `kernel8.img`: `821064` bytes, abaixo de `KERNEL_MAX_SIZE=0x400000`
  - artefato: `artifacts/kernel8-issue251.img`
