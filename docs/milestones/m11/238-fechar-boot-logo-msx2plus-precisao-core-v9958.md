# Issue #238 - Fechar boot logo do MSX2+ com precisão de core no V9958

- URL: https://github.com/sandersouza/msxbarepi/issues/238
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `bug`, `priority:P1`, `area:video`, `area:timing`, `area:emulation`
- Estado local atual: IN PROGRESS

## Objetivo
Implementar a precisão mínima necessária no nosso core do `V9958 stock` para fazer o boot logo do `MSX2+` funcionar com cadência, paginação e composição corretas, usando `blueMSX` como referência semântica principal e `V9958-Super` como validação cruzada de HDL.

## Atualização incremental de 06/04/2026 - presenter reaproveita samples horizontais repetidos
- Depois do ganho de FPS vindo do reaproveitamento de linhas verticais repetidas, o presenter ainda deixava custo redundante no eixo horizontal.
- O corte local desta rodada atua em `src/kernel.cpp`:
  - `BlitMappedLineRgb565()` e `BlitMappedLineRgb565NoDim()` agora cacheiam `prev_src_x/prev_sample`
  - quando o `xmap` repete a mesma origem, o sample já processado é reutilizado
  - isso não muda a imagem e reduz trabalho redundante por scanline
- Objetivo:
  - preservar a política visual nova
  - extrair performance adicional, sobretudo em `HIRES`
- Build local validada:
  - `BUILD_BID=202604062015-issue238-blit-xmap-sample-reuse`
  - `BUILD_ID=AFAF`
  - `BUILD_HASH=35411b2-d626e9ee1cfd42edaff198525136a4ea54a68c90`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - `SCALE [MAX]` sem sentinel em `scale`

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
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081700-issue238-scale-max-mode-separate` (OK)
  - `BUILD_ID=C624`
  - artefato: `artifacts/kernel8-issue238.img`
  - `BUILD_HASH=408c7e1-264470e464c277a06f3167d2d70aa98255207937`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - flush continuo no presenter direto

- O proximo gargalo objetivo do viewport ficou no flush de cache do presenter:
  - o path direto ao framebuffer ainda fazia `FlushDCacheRect565()` linha por linha
  - isso pagava uma barreira de cache por scanline, custo que explode em `MAX` / `HIRES`
- Corte local aplicado:
  - `src/kernel.cpp`
    - novo helper `FlushDCacheRect565Contiguous()`
    - o path de direct present passa a flushar um span unico do retangulo tocado
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081745-issue238-direct-flush-span` (OK)
  - `BUILD_ID=DF41`
  - artefato `sha1 83c25263f1ad41032eab7956b73267ce47726754`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - mailboxes grandes passam a preferir staging

- O A/B com overlay de debug mostrou que `SCALE [MAX]` ficava mais rapido com debug ligado do que desligado.
- Leitura tecnica:
  - com debug ligado, o presenter ja usava o path de staging (`present buffer + SetArea()`)
  - com debug desligado, `MAX` ainda usava `direct present`
  - isso apontou para uma politica errada de apresentacao, nao para bug no VDP
- Corte local aplicado:
  - `src/kernel.cpp`
    - novo helper `ShouldPreferPresentArea()`
    - `MAX`, `HIRES` e viewport >= 50% da tela passam a preferir staging
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081820-issue238-large-viewport-staging` (OK)
  - `BUILD_ID=4871`
  - artefato `sha1 2dedfb9b7b57285b04f1c0e38c0469026560c5d2`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - `Scale` manual restaurado

- A politica automatica de mailbox passou a ser tratada como suspeita de regressao de performance.
- Corte local aplicado:
  - `src/kernel.cpp`
    - `ComputeViewportBox()` volta a usar `m_OverscanPercent` como controle real do viewport
    - `DEBUG` deixa de forcar `1x` e deixa de restaurar zoom maximo ao ser desligado
    - o toggle de `DEBUG` para de resetar `Scale`
  - `src/tools/menu/combo_menu_items.cpp`
    - o item `Scale` volta a aparecer em `Settings`
- Confirmacao de comportamento do presenter:
  - nao ha limpeza completa de tela a cada frame no hot path normal
  - a limpeza global fica restrita a `force_redraw`, `ClearPresentationSurfaces()` e mudancas de viewport
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - `Scale` volta a seguir a mailbox

- Refinamento do corte anterior:
  - `Scale` nao deve mudar ao entrar em `HIRES`
  - o fator deve nascer da mailbox logica, nao do frame fisico do backend
- Corte local aplicado:
  - `src/kernel.cpp`
    - `ComputeScaleMaxPercentForCurrentFrame()` passa a usar altura logica em `HIRES`
    - `ComputeViewportBox()` usa `logical_src_w/logical_src_h` para manter o fator de zoom entre modos
  - `src/tools/menu/combo_menu_items.cpp`
    - o rotulo de `Scale` volta a `Nx`, sem `+`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - mailbox-base fixa `256x243`

- Refinamento adicional do viewport:
  - o calculo do box deixa de depender do frame corrente do backend
  - a caixa passa a nascer de uma mailbox-base fixa `256x243`
- Corte local aplicado:
  - `src/kernel.cpp`
    - `ComputeScaleMaxPercentForCurrentFrame()` usa base fixa `256x243`
    - `ComputeViewportBox()` escala essa base em todos os modos
- Objetivo:
  - evitar achatamento vertical em `HIRES`
  - impedir que a troca de modo altere o fator efetivo de zoom
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - `SCALE [MAX]`

- O viewport ganhou um estado explicito `MAX` alem de `1x..Nx`.
- Corte local aplicado:
  - `src/kernel.cpp`
    - novo sentinel `kScalePercentMaxFit=500`
    - `ComputeViewportBox()` usa fit maximo da mailbox-base quando `MAX` esta ativo
  - `src/tools/menu/combo_menu.cpp`
    - o ciclo de `Scale` passa a incluir `MAX`
  - `src/tools/menu/combo_menu_items.cpp`
    - o label do item passa a exibir `MAX`
- Objetivo:
  - permitir, por exemplo em `720p`, preencher a tela no maximo possivel mesmo quando a escala inteira fica limitada a `2x`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 06/04/2026 - presenter reaproveita linhas escaladas repetidas
- A política nova de viewport automático/pixel-perfect foi aprovada visualmente, mas derrubou a média de FPS para cerca de `37`.
- O corte local desta rodada não mexe na geometria aprovada; ele ataca só o presenter:
  - `src/kernel.cpp:BlitFmsxFrame()` agora detecta quando `dst_y` repete a mesma `src_y`
  - se `src_rel_y` e o `dim_mode` forem iguais aos da linha anterior, a linha já escalada é reutilizada via `memcpy`
  - isso vale tanto no path com mapas (`m_BlitYMap`) quanto no fallback sem mapas
- Objetivo:
  - preservar a política visual nova
  - recuperar FPS removendo trabalho redundante no blit nearest-neighbor vertical
- Build local validada:
  - `BUILD_BID=202604061930-issue238-blit-row-reuse`
  - `BUILD_ID=C35C`
  - `BUILD_HASH=35411b2-5da9183318418f7775668d582f6ea8b338909ab1`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 06/04/2026 - viewport automático + save/load fechando o `F12`
- A rodada final antes do fechamento da `#238` ajustou dois pontos de UX/host:
  - `Save State` / `Load State` agora fecham o menu `F12` imediatamente e executam no tick seguinte
  - o item `Scale` deixa de ser usado; o kernel passa a escolher o viewport automaticamente
- Política nova do viewport:
  - `DEBUG OFF`: mailbox no maior tamanho disponível preservando a proporção
  - `DEBUG ON`: mailbox reduzida automaticamente ao menor perfil útil equivalente a `1x`
  - modos `HIRES` (`>=512` colunas) sempre usam largura lógica de mailbox normal, mesmo com `Widescreen` ligado
  - `Widescreen [ON]` só expande modos não-`HIRES`
- Também foi corrigido o glitch de toggle do debug:
  - ativar/desativar o overlay agora limpa framebuffer visível e staging/present buffer antes da nova apresentação
- Build local validada:
  - `BUILD_BID=202604061130-issue238-menu-state-pixelperfect`
  - `BUILD_ID=0969`
  - `BUILD_HASH=408c7e1-706a7f181059b14f0ea414d6f7b55bbaadac3a3a`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 06/04/2026 - `rightBorder` também precisa reapresentar a linha futura de sprites
- O tempo total do boot já ficou no alvo, mas o defeito visual residual continuou reagindo ao turbo `7MHz`, o que reforça fase intra-frame e não `PAL/NTSC` ou `R#9 interlace`.
- O diff direto contra o `blueMSX` fechou um desvio estrutural em `SCREEN 6/7`:
  - `colorSpritesLine(vdp,Y,...)` roda ao cruzar `BRK_6/BRK_7`
  - e roda **de novo** no `rightBorder`
  - isso permite que a linha futura de sprites incorpore writes tardias de VRAM/registradores que acontecem no restante da scanline
- O core local ainda congelava `FmsxVDPLineColorSpritesLatched` apenas no primeiro cruzamento do breakpoint.
- Correção local:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_render_screen67_partial()` continua preparando a linha futura ao cruzar `BRK_6/BRK_7`
    - mas agora reapresenta `FmsxLatchColorSpritesLine(scanline,...)` no fechamento da linha (`end_offset >= 33`), espelhando o `rightBorder` do `blueMSX`
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604060020-issue238-screen67-rightborder-sprites` (OK)
  - `BUILD_ID=829C`
  - artefato `sha1 81343e7d63566873d0333c02016971656e2b4b08`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 06/04/2026 - presenter hi-res passa a tecer campos por padrão
- A regressão do demo `UNKNOWN REALITY` mostrou um sintoma diferente do boot logo:
  - no modo `512x512`, as linhas apareciam com espaço entre elas
  - isso recolocou o presenter hi-res do host no centro da investigação
- A comparação aprofundada mostrou a divergência estrutural:
  - `src/fmsx_host_stubs.c` ainda herdava do `fMSX/libretro` o default `HIRES_INTERLACED`
  - esse path do fMSX/libretro deixa um campo preto entre linhas
  - em HDMI progressivo, isso se manifesta exatamente como "linhas espaçadas"
- As referências reforçaram o alvo:
  - `blueMSX` apresenta o resultado interlaced como quadro hi-res composto
  - `V9958-Super` usa double-buffer even/odd, lendo um campo enquanto escreve o outro, em vez de apagar o campo oposto
- Corte local desta rodada:
  - `src/fmsx_host_stubs.c`
    - `g_hires_mode` passa do default `HIRES_INTERLACED` para `HIRES_PROGRESSIVE`
    - comentário expandido registra explicitamente a divergência herdada do fMSX/libretro
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026 - fechamento de `SCREEN 6/7` passa a usar sempre o partial renderer de 32 células
- O teste de hardware da `7AA1` mostrou que alinhar apenas a granularidade interna do partial renderer para `32` células ainda não movia o defeito visual residual do logo.
- A auditoria local do `HBlank` fechou o desvio estrutural seguinte:
  - `fmsx_vdp_render_screen67_partial()` já trabalhava em `0..32`
  - mas o fechamento da scanline em `src/fmsx_local/MSX.c` ainda podia cair em:
    - `fmsx_vdp_render_screen67_partial(...,64u)` quando havia chunk parcial
    - `fmsx_vdp_render_scanline()` full-line quando não havia chunk
- Consequência prática:
  - `SCREEN 6/7` ainda misturavam dois contratos de fechamento de linha
  - isso preserva o tempo total do boot, mas pode manter a fase visual quebrada, exatamente como observado em hardware
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - o fechamento de `SCREEN 6/7` em HBlank passa a forçar sempre `fmsx_vdp_render_screen67_partial((uint8_t)ScanLine,32u)`
    - o path deixa de depender de `FmsxVDPLineChunkEnd` para cair no partial ou no full-line nesses modos
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052300-issue238-screen67-force-partial-tail` (OK)
  - `BUILD_ID=7C38`
  - artefato `sha1 a6d5a57e9f7bbcca35afca84c23cb1dff320bba8`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026 - `SCREEN 6/7` passam a congelar o estado wide no primeiro refresh da linha
- A varredura mais profunda da hipótese `32 vs 64` mostrou o desvio seguinte:
  - no `blueMSX`, `SCREEN 6/7` inicializam `scroll/chrTab/page` no primeiro refresh da linha (`X == -1`)
  - se o BIOS atualiza `R#2/R#25/R#26/R#27` antes desse primeiro refresh, a linha corrente já nasce com o novo estado
  - no core local, o partial wide ainda consumia o snapshot capturado no início bruto da scanline
- Consequência prática:
  - o renderer podia continuar congelando uma versão cedo demais da linha, mesmo com `32` células e tail unificado
  - isso combina diretamente com o relato de campo de que o turbo `7MHz` melhora apenas o primeiro terço do logo
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - novo `FmsxVDPLineScreen67StateValid`
    - novo helper `fmsx_vdp_capture_screen67_render_state_now()`
    - `fmsx_vdp_render_screen67_partial()` passa a capturar `ChrTab`, `ChrTabM`, `R#2`, `R#18`, `R#25`, `R#26`, `R#27`, `odd page` e `VScroll` no primeiro render da linha
    - o flag eh resetado no inicio de cada scanline
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052315-issue238-screen67-lazy-line-snapshot` (OK)
  - `BUILD_ID=ECD0`
  - artefato `sha1 f04af999e87184c22ace3047a1580c03b4e7fde9`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026 - partial `SCREEN 6/7` passa a seguir o `lineOffset -1..33` do `blueMSX`
- A hipótese `32 vs 64` foi aprofundada e mostrou um desvio ainda mais específico:
  - no `blueMSX`, o refresh parcial de `SCREEN 6/7` usa offset discreto `-1..33`
  - o primeiro passo `-1 -> 0` serve para inicializar a linha (`X == -1`)
  - a linha só fecha de fato em `33`, depois da última célula ativa
  - o core local ainda fazia esse caminho por proporção contínua de tempo para `0..32`
- Consequência prática:
  - mesmo já alinhado para `32` células, o partial podia continuar um step cedo em relação ao `blueMSX`
  - isso explica melhor o sintoma remanescente de fase visual errada com tempo total já correto
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - novo `FmsxVDPLineOffset67`
    - novo helper `fmsx_vdp_screen67_line_offset_now()`
    - `fmsx_vdp_render_screen67_partial()` passa a operar em `-1..33`
    - o fechamento em HBlank de `SCREEN 6/7` passa a usar `33` como sentinel
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052345-issue238-screen67-lineoffset-33` (OK)
  - `BUILD_ID=E2CF`
  - artefato `sha1 5c3d21a70f0d79d4cf0d8b018f18de27e3667be6`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026 - debug `Refresh [NTSC/PAL]` passa a forçar `R#9`
- Antes de seguir com a rodada visual da `BE3E`, foi corrigido um desvio do próprio menu de diagnóstico:
  - `Settings -> Refresh [NTSC/PAL]` só alterava `m_RefreshRateHz/g_refresh_hz`
  - o overlay continuava lendo o modo efetivo do VDP (`PALVideo`), então podia seguir mostrando `NTSC`
- Corte local desta rodada:
  - `src/fmsx_runtime.c/.h`
    - novo `fmsx_runtime_debug_force_refresh_hz()`
  - `src/kernel.cpp`
    - o item de menu em `DEBUG=1` passa a usar esse novo caminho em vez de `fmsx_runtime_set_refresh_hz()`
  - em `MSX2/MSX2+`, o toggle agora escreve `R#9 bit1` via `VDPOut(9, ...)`, deixando `PALVideo`, `VPeriod` e o shadow BIOS coerentes imediatamente
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051930-issue238-debug-refresh-r9` (OK)
  - `BUILD_ID=1042`
  - `BUILD_HASH=42a4743-da4f3d9faf8461ead8c52a554557bfba8d7b6f16`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026 - menu de debug passa a refletir `R#9` real em tempo real
- O ajuste anterior corrigiu o forcing do item `Refresh [NTSC/PAL]`, mas o menu ainda dependia de `m_RefreshRateHz`, que só era sincronizado no loop normal do backend.
- Corte local desta rodada:
  - `src/kernel.h/.cpp`
    - novo `SyncRefreshRateStateFromRuntime()`
    - o kernel consulta `fmsx_runtime_get_refresh_hz()` e `fmsx_runtime_get_frame_interval_us_exact()` também com o emulador pausado, antes do render do menu
- Efeito esperado:
  - o item `Standard` passa a espelhar `R#9 bit1` real mesmo com o menu aberto
  - se o software tiver alterado `PAL/NTSC` antes da pausa (ex.: `OUT` no BASIC), o menu já abre mostrando esse estado efetivo
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052005-issue238-debug-refresh-live-menu` (OK)
  - `BUILD_ID=EA99`
  - `BUILD_HASH=42a4743-3f64b4be1e32f777e603190631d7d763644bdd7d`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A rodada offline mais recente fechou uma divergência objetiva entre o helper wide local e o `blueMSX`:
  - em `SCREEN 6`, o `blueMSX` codifica cada byte de sprite como dois subpixels de 3 bits (`spr>>3` e `spr&7`)
  - em `SCREEN 7`, cada byte vira `palette[col>>1]`
  - o helper wide local ainda tratava esse byte como um índice plano único
- Corte local desta rodada:
  - `src/fmsx_host_stubs.c`
    - `fmsx_latch_color_sprites_line_wide()` passa a alinhar `horizontalPos` ao `blueMSX` (`+24 - EC`, com `+8` extra para `16x16`)
  - `src/fmsx_local/Wide.h`
    - novos decoders `V9958Screen6WideSpritePixel()` e `V9958Screen7WideSpritePixel()`
    - `RefreshLine6/7()` e `RefreshLine6/7WideRange()` passam a consumir o buffer wide packed no formato do `blueMSX`
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052115-issue238-wide-sprite-packed-decode` (OK)
  - `BUILD_ID=BE3E`
  - artefato `sha1 36f71b1f83a94c9d584081cd3287183a0bfcb1c7`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A leitura offline mais recente do defeito visual remanescente do logo deslocou o foco da `#238` para o breakpoint de captura de sprites em `SCREEN 6/7`:
  - no `blueMSX`, `BRK_6/BRK_7 = 24` usa a mesma unidade de coluna `X/X2` da rotina de refresh
  - no core local, `fmsx_vdp_render_screen67_partial()` estava convertendo esse valor para `48`, como se o range parcial estivesse em pixels físicos unitários
  - como `RefreshLine6WideRange()/RefreshLine7WideRange()` também trabalham em colunas de `8` pixels, isso empurrava a captura de sprites meia linha para a direita
- Leitura prática:
  - o defeito observado em hardware deixou de apontar para `R#9 interlace`
  - ele passa a combinar melhor com uma composição em duas faixas: uma já capturada e outra ainda scrollando
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `sprite_break` em `fmsx_vdp_render_screen67_partial()` passa de `48` para `24`
    - comentário expandido documentando a equivalência direta com `BRK_6/BRK_7` do `blueMSX`
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052245-issue238-screen67-brk24` (OK)
  - `BUILD_BID=202604052245-issue238-screen67-brk24`
  - `BUILD_ID=628F`
  - artefato `sha1 54540838842898b8ec1489601fdd8bb3f0e9152b`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - helper de sprites wide aproxima `colorSpritesLine()` do `blueMSX`

- O tempo total do boot ficou praticamente no alvo, mas sobrou um defeito visual claro no logo:
  - `R9` permanece em `00`
  - `R25` permanece em `03`
  - a mascara preta do logo aparece fora de fase em relacao ao miolo branco
- Isso deslocou o foco da issue:
  - nao e mais `interlace`
  - o alvo agora e a camada de sprites wide de `SCREEN 6/7`
- Corte local aplicado:
  - `src/fmsx_host_stubs.c`
    - `FmsxLatchColorSpritesLine()` ganhou um helper wide proprio, inspirado em `blueMSX/SpriteLine.h:colorSpritesLine()`
    - tabela de cor por linha
    - `early clock`
    - composicao `CC/OR`
    - sem side effects em `VDPStatus[0]`
  - `src/fmsx_local/Wide.h`
    - `RefreshLine6/7()` full-line passam a usar esse mesmo helper novo
- Objetivo:
  - alinhar a camada de sprites wide ao `blueMSX`
  - remover o desfasamento visual restante do logo sem voltar a mexer em `MASK`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052015-issue238-wide-sprite-helper-unified` (OK)
  - `BUILD_ID=FEA0`
  - `BUILD_HASH=cc918b4-c7605f0e2b1c088a19bf757ce6e66eaf0e16ce73`
  - artefato: `artifacts/kernel8-issue238.img`

## Atualização incremental de 05/04/2026
- A rodada seguinte fechou um erro da própria hipótese anterior:
  - em `SCREEN 6` wide do `blueMSX`, cada passo de `X` desenha `16` pixels físicos
  - então `BRK_6 = 24` realmente equivale a `384 px`, isto é, `48` no nosso range parcial de colunas de `8 px`
  - o problema visual remanescente não estava na unidade do `BRK`, mas no pipeline da linha de sprites
- Leitura prática:
  - o `blueMSX` prepara a linha de sprites no breakpoint e a scanline seguinte consome esse buffer
  - o core local ainda misturava `ColorSprites(Y)` live com a captura mid-scanline da própria linha
  - isso combina melhor com o defeito observado em hardware: uma faixa do logo já composta/parada e outra ainda scrollando
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `sprite_break` volta para `48`
    - o início de cada scanline promove o buffer preparado na linha anterior para buffer de render da linha corrente
  - `src/fmsx_local/Wide.h`
    - `RefreshLine6/7()` e `RefreshLine6/7WideRange()` passam a consumir apenas o buffer de render da linha corrente
    - a linha atual prepara apenas o buffer da linha seguinte, alinhando o fluxo ao `blueMSX`
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052330-issue238-screen67-sprite-pipeline` (OK)
  - `BUILD_BID=202604052330-issue238-screen67-sprite-pipeline`
  - `BUILD_ID=AA66`
  - artefato `sha1 ee274513ccd500f7da5abd9945d610ed2665eadf`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- O corte funcional mais recente da `#238` abriu o próximo checkpoint real do logo:
  - a correção principal agora está em `status0 bit5`
  - o que falta provar é se o worker `7A48` já vê `bit5` no **segundo** `IN (99h)` (`7A68`), que é o read realmente testado antes de cada write indireta em `R26/R27`
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - adiciona contadores separados para leituras de `status0` em `7A66` e `7A68`
    - conta também quantas dessas leituras viram `bit5=1`
  - `src/fmsx_host_stubs.c`
    - `BL238S/BL238P/BL238E` passam a incluir:
      - `S66:<reads>/<bit5>`
      - `S68:<reads>/<bit5>`
- Objetivo:
  - validar a correção do `status0` no ponto quente exato do worker do logo
  - evitar mais um round de patch cego em timing/renderer antes de medir esse contrato
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052220-issue238-status0-reread-trace` (OK)
  - `BUILD_BID=202604052220-issue238-status0-reread-trace`
  - `BUILD_ID=9227`
  - artefato `sha1 40c7ae78ac45a79b350c133f3b57d9731de5eb68`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A análise offline mais recente da `#238` fechou um desvio forte de `status0` contra o `blueMSX` exatamente no worker quente do logo:
  - o `KANJIBASIC` em `7A48` testa o **segundo** `IN A,(99h)` (`7A68`) para liberar cada write indireta em `R26/R27`
  - no core local, `status0 bit5` ainda nascia live só uma vez por linha e era apagado no primeiro read, deixando o segundo read cego na mesma scanline
- Leitura prática:
  - o foco mais impactante continua sendo o tempo total até o BASIC
  - `R#9 interlace`, `odd/even` e `MASK` seguem fora do foco desta rodada
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status0_live()` passa a sintetizar `bit5` a partir do latch cru **ou** da colisão live da scanline corrente
    - `S#3..S#6` continuam sendo latched só uma vez por linha
    - o clear-on-read de `status0` continua alinhado ao `blueMSX` com `&= 0x1F`
  - Objetivo:
    - alinhar o par `7A66/7A68` ao padrão do `blueMSX`
    - remover a cegueira do segundo `IN (99h)` antes de abrir novo corte em `S#2`
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052145-issue238-status0-reread-live` (OK)
  - `BUILD_BID=202604052145-issue238-status0-reread-live`
  - `BUILD_ID=9805`
  - artefato `sha1 8c1440ceeddcd90345447bbdf120cba5d72de886`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A análise offline mais recente da `#238` fechou outro desvio com o `blueMSX` nos loops quentes do `KANJIBASIC`:
  - eu já tinha aproximado o custo do `IN (99h)` em `7A8B/7A91/7BC6`
  - mas o corpo inteiro desses helpers ainda inclui múltiplos `OUT (99h)` de seleção/restauração de `S#2`
  - no core local, esse corpo continuava subpagando tempo em relação ao modelo time-driven da referência
- Leitura prática:
  - o problema mais impactante continua sendo o tempo total até o BASIC
  - `R#9 interlace`, `odd/even` e `MASK` seguem fora do foco desta rodada
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_port99_hotloop_write_extra_cycles()` passa a cobrar também o corpo `OUT/IN/OUT` dos helpers quentes do `KANJIBASIC`
    - `7A85/7A89/7A98/7A9C`: `+1 * HPeriod`
    - `7BBE/7BC2/7BCA/7BCE`: `+2 * HPeriod`
    - o `case 0x99` passa a somar esse custo extra focado aos waits base de write
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051755-issue238-kanjibasic-port99-body-wait` (OK)
  - `BUILD_BID=202604051755-issue238-kanjibasic-port99-body-wait`
  - `BUILD_ID=F8B6`
  - artefato `sha1 b16cb51f58ae36cd078423ddc67f903309fd7ad7`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A comparação offline mais recente contra o `blueMSX` fechou um desvio semântico importante no `status2` live:
  - no `blueMSX`, `S#2 bit6` permanece alto até `onVStart()`
  - o core local ainda projetava um low sintético para o fim do frame anterior
- Leitura prática:
  - isso podia fazer o helper quente `7A83/7A8B/7A91` perder a transição `high -> low` pretendida e cair num frame extra inteiro
  - esse ponto é mais coerente com o sintoma de tempo total do que qualquer hipótese nova em `R#9 interlace`
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_previsible_lines()` passa a `0`
    - `fmsx_vdp_previsible_window_active()` deixa de projetar `bit6 low` para a cauda do frame anterior
    - `fmsx_vdp_projected_next_frame_parity_active()` também deixa de projetar a paridade nova nesse mesmo trecho sintético
  - Objetivo:
    - alinhar o contrato live de `S#2` ao `blueMSX` no ponto mais crítico para o tempo total do boot
    - continuar com `MASK` e `odd/even` fora do foco desta rodada
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051720-issue238-status2-vstart-no-preproject` (OK)
  - `BUILD_BID=202604051720-issue238-status2-vstart-no-preproject`
  - `BUILD_ID=7EF7`
  - artefato `sha1 af413fbdae102a1c55d458548533dcbda710bd09`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A UART mais recente reforçou o ponto dominante da issue:
  - as writes de `R26/R27` continuam corretas, mas seguem espaçadas em blocos de cerca de `85` frames
  - o hot path real continua em `S#2/0x99` pelos sites `7A8B`, `7A91` e `7BC6`
- Leitura prática:
  - o gargalo vivo da `#238` continua sendo tempo total até o BASIC, não `odd/even` nem `MASK`
  - o ajuste anterior de `+64/+96` ciclos nos loops do `KANJIBASIC` era pequeno demais para mover esse sintoma
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status_wait_cycles()` agora sobe o wait desses loops para escala de scanline:
      - `7A8B/7A91`: `4 * HPeriod`
      - `7BC6`: `8 * HPeriod`
  - Objetivo:
    - aproximar o custo desses polls ao comportamento time-driven do `blueMSX`
    - atacar diretamente o sintoma mais impactante do boot logo: a demora total até o BASIC
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051640-issue238-kanjibasic-scanline-wait` (OK)
  - `BUILD_BID=202604051640-issue238-kanjibasic-scanline-wait`
  - `BUILD_ID=7258`
  - artefato `sha1 9af4622d4c5bdfe53bdbd059ef78ed6a45bc7963`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A UART mais recente consolidou o hot path dominante do tempo total do logo:
  - `C0:7A91/999`
  - `C1:7A8B/999`
  - `C2:7BC6/982`
- A disassembly offline do `KANJIBASIC.ROM` fechou o papel desses sites:
  - `7A8B/7A91`: wait `S#2 bit6 high -> low`
  - `7BC6`: wait de `CE` apos os comandos do logo
- Leitura prática:
  - o caminho crítico desta issue deixa `odd/even` e `MASK` fora do primeiro plano
  - o tempo até o BASIC está concentrado no polling quente de `S#2/0x99` do `KANJIBASIC`
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status_wait_cycles()` passa a aplicar wait-state adicional **apenas** nesses loops quentes:
      - `+64` ciclos em `7A8B/7A91`
      - `+96` ciclos em `7BC6`
    - o objetivo é aproximar o custo temporal desses polls do modelo do `blueMSX` sem reintroduzir penalidade global em `0x99`
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051505-issue238-kanjibasic-s2-wait` (OK)
  - `BUILD_BID=202604051505-issue238-kanjibasic-s2-wait`
  - `BUILD_ID=7B8D`
  - artefato `sha1 9560082c89264ea622ee6610d564d3fb0668bab4`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A UART recente fechou um bug da própria telemetria do logo:
  - os hot PCs de `S#2` e das writes de `R26/R27` aparecem como `7A8B/7A91/7BB0/7BC6`
  - mas o `MSX2PEXT` reloca o worker do logo de `0x2A00` para `0x7A00`
  - portanto, tratar `7Axx/7Bxx` como banco genérico `-0x4000` contamina `HOTH/C0..C2` e mascara os callers reais em `2Axx/2Bxx`
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_normalize_s2_caller_pc()` agora trata `0x7A00..0x83FF` como alias `+0x5000` do bloco relocado do logo
  - `src/fmsx_host_stubs.c`
    - `BL238I/BL238R/BL238S/BL238E` passam a imprimir esses PCs já normalizados em `2Axx/2Bxx`
- Objetivo:
  - limpar a telemetria antes do próximo corte funcional de cadência
  - deixar o histograma de `S#2` apontar para os callers reais do prelude do logo
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051845-issue238-logo-pc-alias` (OK)
  - `BUILD_BID=202604051845-issue238-logo-pc-alias`
  - `BUILD_ID=F38C`
  - artefato `sha1 f6717168a12bc80da17b3f11601087f97774bf6c`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A leitura offline do prelude do logo confirmou `0x2BE4` como helper BIOS dominante nas janelas quentes do boot logo, isto é, polling de `S#2 bit0` (`CE`) em torno dos comandos do VDP.
- Comparação direta contra o `blueMSX` fechou outro gap concreto:
  - as tabelas locais herdadas do `fMSX` continuam muito maiores (`818`, `1063`, `439`, ...)
  - o `blueMSX` usa deltas menores (`92`, `120`, `49`, ...)
  - o `/8` local aproximava a referência, mas ainda deixava erro residual de pacing
- Corte local desta rodada:
  - `src/fmsx_local/V9938.c`
  - o boost stateful do boot logo continua restrito à janela BIOS já mapeada
  - mas, com o boost ativo, `GetVdpTimingValue()` passa a usar as tabelas exatas do `blueMSX` para `SRCH`, `LINE`, `HMMV`, `LMMV`, `YMMM`, `HMMM` e `LMMM`
  - fora dessa janela, o core permanece no baseline local atual
- Objetivo:
  - atacar o helper dominante `2BE4` pelo custo real dos comandos observados por `CE`
  - manter `MASK` e `R#9 interlace` fora do foco desta rodada
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051205-cc918b4` (OK)
  - `BUILD_BID=202604051205-cc918b4`
  - `BUILD_ID=7BE9`
  - artefato `sha1 c8c722f904f40f4dcbb04e93d5998f1ae8060dd4`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A UART da `6BDA` fechou o recorte dominante do logo:
  - `R9=00` e `R25=03` permanecem fixos
  - `R26/R27` entram primeiro por `0x99 @ PC 7BB2` e depois seguem no loop `0x9B @ 7A71/7A73`
  - `S7/TR` seguem irrelevantes (`S7:0`, `TR:0`)
- Leitura técnica:
  - o gargalo visível da `#238` não está em `R#9 interlace`
  - o hot path do boot logo ficou reduzido a `S#2` + leituras da `0x99` nos helpers BIOS do prelude
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - adiciona contadores de leitura de `S#2` por helper BIOS:
      - `10D6/10D8`
      - `10DF/10E1`
      - `363B/363D`
      - `3644/3646`
      - `2BE4/2BE6`
      - `other`
  - `src/fmsx_host_stubs.c`
    - `BL238S` e `BL238E` passam a emitir os deltas `H10L/H10H/H36H/H36L/H2BE/HOTH`
- Objetivo do corte:
  - descobrir qual helper BIOS de `S#2` realmente domina o tempo até o BASIC antes de abrir outro patch em `status2` ou no command engine
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051148-cc918b4`
  - `BUILD_ID=D41F`
  - artefato `sha1 3b2cd3a4002f9a1e0e5da572db409954df7794a3`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- O corte offline mais recente saiu da semântica visível de `R#9` e entrou no protocolo de acesso à porta de status da VDP.
- Comparando o helper BIOS `MSX2PEXT:2BEF` com o `blueMSX`, ficou fechado que toda write em `0x99` precisa sincronizar o VDP, inclusive a primeira metade do latch. No core local, essa primeira write ainda pulava o sync e deixava um `OUT (99h)` sem progresso de command engine em cada iteração do polling.
- Correção local aplicada:
  - `src/fmsx_local/MSX.c`
  - o case `0x99` agora sincroniza o VDP também quando `VKey==1`
  - o sync duplicado do segundo byte foi removido, ficando um sync por write
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051018-cc918b4`
  - artefato `sha1 7b8bbce640bd7601cac331c803f3035577d7a8c0`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026
- A UART leve da `85F2` confirmou que a janela visível do logo continua em `R9=00` e `R25=03`, com `R26/R27` dirigindo a animação horizontal. Isso tirou `R#9 interlace` da frente do problema imediato de cadência.
- O corte local seguinte saiu do renderer e alinhou `IE0/VBlank` ao `blueMSX`: em `src/fmsx_local/MSX.c`, `fmsx_vdp_vblank_start()` passou a usar `192/212`, e o gate que sobe `VDPStatus[0].7`, `VDPStatus[2].6` e `INT_IE0` agora dispara no início da borda inferior, não no fim dela.
- Build local validada:
  - `BUILD_BID=202604042230-issue238-vblank-drawarea-start`
  - `BUILD_ID=FCD5`
  - `BUILD_HASH=cc918b4-024ff5eb8ba7a2500f9df7b210693737afdfb42c`
- Estado operacional desta rodada:
  - sem `git commit`
  - sem `git push`
  - `MASK` segue explicitamente fora do foco até o pacing reagir

## Atualização incremental de 05/04/2026 - cadência volta ao fluxo BIOS do logo
- A rodada offline mais recente consolidou que o gargalo vivo da `#238` continua mais perto do polling BIOS de `S#2 bit0` do que de `R#9 interlace` na janela visível do logo.
- A decisão técnica desta rodada foi reaproveitar, com guardrails mais estreitos, a estratégia já sustentada pela antiga `#176`:
  - reduzir o custo dos comandos apenas dentro dos wrappers/polls do boot logo `MSX2+`
  - não tocar em gameplay nem em outros workloads de comando
- Corte local aplicado:
  - `src/fmsx_local/V9938.c`
  - `GetVdpTimingValue()` agora divide o custo por `8` (mínimo `1`) só quando `CPU.PC.W` cai nas janelas BIOS do logo
  - além dos ranges lineares já documentados (`0x2BE4..0x2C27`, `0x2E3E..0x2F97`, `0x3040..0x3147`, `0x3299..0x3325`), o corte aceita também o alias `+0x5000` coerente com a UART atual da `#238`
- Justificativa técnica:
  - a UART visível continua fechando `R9=00`, `R25=03` e `R26/R27` como driver da animação
  - `MASK` segue explicitamente fora do foco
  - o alinhamento busca aproximar o ritmo do producer BIOS-side ao `blueMSX` sem abrir mais uma reescrita cega do renderer
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051005-cc918b4`
  - `BUILD_ID=828F`
  - `BUILD_HASH=cc918b4-4529f3540680781486b58b2948ef41b86cff4688`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualização incremental de 05/04/2026 - boost latched por comando do logo
- O refinamento local seguinte deixou o corte anterior mais coerente com o `blueMSX`.
- Antes, o `/8` de custo ainda dependia do `CPU.PC.W` instantâneo em cada slice do engine; isso era mais fraco do que o modelo temporal da referência.
- Ajuste local aplicado:
  - `src/fmsx_local/V9938.c`
  - o boost do logo agora arma em `VDPDraw()` quando o comando nasce dentro da janela BIOS do boot logo
  - depois permanece ativo enquanto `CE=1`
  - e cai automaticamente quando `CE` limpa
- Leitura prática:
  - o corte continua restrito ao boot logo `MSX2+`
  - mas deixa de depender do `PC` da CPU durante o miolo da execução do comando
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051010-cc918b4`
  - `BUILD_ID=8504`
  - `BUILD_HASH=cc918b4-dbea3990879f647f24d05a06015f29880a2d46e8`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Contexto técnico
- A investigação consolidada em `docs/reverse-engineering/msx2plus/` confirmou que o problema do boot logo não é “falta de ROM”.
- O `ROM set` local continua coerente com o `HB-F1XDJ` do `openMSX`:
  - `MSX2P.ROM`
  - `MSX2PEXT.ROM`
  - `KANJIBASIC.ROM`
  - `KANJI.ROM`
- O `z80dasm` mostrou que o fluxo do logo está na `MSX2PEXT.ROM` e usa pesado o bloco de comandos do VDP:
  - `0x2BE4/0x2BEF`: polling de `S#2`
  - `0x32CD`: leitura de `S#7`
  - `0x32E7`: escrita indireta via `R#17`
  - `0x2E3E`, `0x2EBF`, `0x3040`, `0x3299`: lotes de `R#32..R#45` por `0x9B`, seguidos de disparo em `R#46`
- A análise comparativa fechou três blocos restantes como principais candidatos de causa raiz:
  - sync temporal de `S#2`, `S#7`, `S#8` e `S#9`
  - command engine ainda baseado em quantum fixo, diferente do modelo por tempo corrido do `blueMSX`
  - renderer de `SCREEN 6/7` ainda simplificado para multipage, odd/even, `R#25/R#26/R#27`, `R#2 bit5` e `R#9 interlace`

## Estratégia de ataque

### Fase 1 - Status e contrato do bloco de comandos
- Alinhar `InZ80()` e `fmsx_vdp_sync_before_status_read()` para que `S#2`, `S#7`, `S#8` e `S#9` reflitam o estado do VDP no tempo certo.
- Fechar o contrato de `CE`, `TR` e `BD` com foco em:
  - polling de `S#2`
  - leitura de `S#7`
  - janela de transferência via `R#44`

### Fase 2 - Command engine por tempo
- Substituir a progressão por quantum fixo em `LoopVDP()` por um modelo dirigido por tempo/ciclos corridos, semanticamente compatível com `blueMSX`.
- Manter o comportamento já alinhado em que `R#46` apenas arma o comando, sem consumir trabalho extra imediatamente.

### Fase 3 - Renderer `SCREEN 6/7`
- Reescrever a composição de `SCREEN 6/7` para um fluxo page-aware, em vez do modelo atual de expandir a linha inteira para `BgRaw` e só depois aplicar scroll.
- Tratar como um único bloco:
  - `R#25`
  - `R#26`
  - `R#27`
  - `R#2 bit5`
  - odd/even
  - multipage
  - `R#9 interlace`

### Fase 4 - Validação
- Revalidar primeiro o boot logo do `MSX2+`.
- Em seguida, repetir o corpus mínimo da `#82`:
  - `STS006`
  - `REG004`
  - `Knightmare Gold`
  - `Gradius2E/Nemesis2E`

## Escopo técnico
- Implementar as correções em:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/V9938.c`
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/Wide.h`
- Usar como referências obrigatórias:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
  - `third_party/V9958-Super/src/vdp/vdp_register.sv`
  - `third_party/V9958-Super/src/vdp/vdp_command.sv`
  - `third_party/V9958-Super/src/vdp/vdp_graphic4567.v`

## Fora de escopo
- Trocar `ROM set` como primeira tentativa de correção
- Reabrir hipóteses genéricas de “ROM ausente” antes de fechar o core
- Tratar `R#29+` ou extensões proprietárias do `V9958-Super`
- Criar harness novo fora do corpus já estabelecido na `#82`

## DoR
- [x] Matriz canônica consolidada
- [x] Dossiê do boot logo consolidado com offsets confirmados por `z80dasm`
- [x] Backlog implementável derivado da `#236`
- [x] Ordem técnica de ataque fechada

## DoD
- [ ] O boot logo do `MSX2+` anima com cadência compatível com a referência
- [ ] O quadro final não apresenta blocos/tarjas de página errada
- [ ] `S#2` e `S#7` obedecem ao fluxo esperado pela `MSX2PEXT.ROM`
- [ ] `STS006` e `REG004` continuam válidos após as correções
- [ ] Não há regressão visual óbvia em `Knightmare Gold` e `Gradius2E/Nemesis2E`

## Checklist operacional
- [ ] Fechar sync temporal de `S#2/S#7/S#8/S#9`
- [ ] Migrar o command engine para progressão por tempo
- [ ] Fechar `CE/TR/BD` no caminho observado pelo BIOS
- [ ] Reescrever `SCREEN 6/7` para fluxo page-aware
- [ ] Revalidar o corpus mínimo da `#82`
- [ ] Atualizar a matriz e o dossiê com o veredito final da implementação

## Testes e cenários
- Boot logo `MSX2+`
  - reprodução principal
  - critério de aceite: cadência normal, sem tarjas e sem página errada
- `STS006`
  - validação de `SRCH`, `S#2`, `S#8` e `S#9`
- `REG004`
  - validação de `R#17/0x9B`
- `Knightmare Gold`
  - regressão de timing e renderer
- `Gradius2E/Nemesis2E`
  - regressão de scroll, multipage e addressing

## Referências iniciais
- `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
- `docs/reverse-engineering/msx2plus/boot-logo/boot-callflow.md`
- `docs/reverse-engineering/msx2plus/boot-logo/fix-strategy.md`
- `docs/reverse-engineering/msx2plus/vdp9958-stock/implementation-backlog.md`
- `docs/reverse-engineering/issues/issue-82/README.md`

## Vinculo operacional
- Branch derivada ativa: `238-fechar-boot-logo-msx2plus-precisao-core-v9958`
- Branch umbrella/base: `82-auditar-registradores-v9958`
- PR alvo desta branch: `82-auditar-registradores-v9958`

## Atualização incremental de 03/04/2026
- A `#236` foi concluida e mergeada na umbrella `#82` via PR `#241`.
- Esta issue passa a ser a primeira frente ativa de implementação da camada de correção do `V9958 stock`.
- O objetivo imediato desta branch deixa de ser descoberta e passa a ser implementar, na ordem já consolidada:
  - sync temporal de status
  - command engine por tempo
  - renderer `SCREEN 6/7` page-aware

## Atualizacao incremental de 03/04/2026 - primeiro corte de implementacao
- O primeiro patch de core desta issue entrou em `src/fmsx_local/MSX.c` e `src/fmsx_local/V9938.c`.
- Referencia primaria usada no diff:
  - `blueMSX/VDP.c:readStatus(), write(), sync()`
  - `blueMSX/V9938.c:vdpCmdExecute()`
- Decisao tecnica desta rodada:
  - trocar o flush coarse de "um slice" por acumulacao temporal do engine baseada no contador monotônico de CPU do core local
  - preservar, neste primeiro corte, a vazao media local por scanline para evitar trocar ao mesmo tempo a escala dos `timing[]`
- Efeito esperado para hardware:
  - `S#2/S#7/S#8/S#9` deixam de chegar um passo atrasados em relacao ao polling do BIOS
  - o boot logo deve ganhar cadencia melhor antes de qualquer rework de renderer
- Build local validada:
  - `BUILD_BID=202604031130-issue238-vdp-time-sync`
  - `BUILD_ID=050B`
  - `BUILD_HASH=26d676a-2b85c3c8dce987f4281c92bfb4249fd6d256de35`
- Proximo gate:
  - validar o boot logo `MSX2+` em hardware com a build `050B`

## Atualizacao incremental de 03/04/2026 - regressao `E3EC` descartada
- O segundo corte de pacing do engine, que tentou colapsar `delta_cycles => budget` na mesma escala absoluta do `blueMSX`, foi testado em hardware e descartado.
- Evidencia de campo:
  - a build `E3EC` passou a congelar ainda na tela azul anterior ao boot logo
  - o problema deixou de ser apenas "cadencia insuficiente" e virou regressao de boot
- Decisao tecnica:
  - restaurar o comportamento temporal da `050B`
  - nao insistir nesta issue no alinhamento literal dos `timing[]` enquanto o BIOS ainda trava antes do logo
- Build local validada apos o rollback:
  - `BUILD_BID=202604031435-issue238-drop-abs-timing-regression`
  - `BUILD_ID=CBAC`
  - `BUILD_HASH=6967d68-ef1f9b429bfa4c1a6b3fd11d0ad9a32adf1247dd`
- Leitura operacional:
  - a base segura da branch continua sendo o primeiro corte temporal (`050B`)
  - o proximo trabalho util volta a ser renderer `SCREEN 6/7` page-aware + odd/even/interlace

## Atualizacao incremental de 03/04/2026 - primeiro corte de renderer `SCREEN 6/7`

- A base segura da issue foi confirmada em hardware com a `CBAC`: lenta, mas voltando a entrar no boot logo.
- O foco ativo da issue saiu do engine e entrou no primeiro corte do renderer high-res:
  - `src/fmsx_local/Wide.h`
  - alvo primario: `REN-004`
  - recorte associado: parte central de `REN-007`
- Implementacao desta rodada:
  - `SCREEN 6/7` passam a respeitar a ordem logica de paginas derivada de `chrTabBase bit15` quando `R#2 bit5 + multipage` estao ativos
  - o `left-edge mask` em `SCREEN 6/7` deixa de usar o primeiro pixel scrolado como cor de preenchimento e volta a usar a cor de fundo do modo, alinhando o comportamento ao renderer do `blueMSX`
- Build local validada:
  - `BUILD_BID=202604031620-issue238-screen67-page-order`
  - `BUILD_ID=70ED`
  - `BUILD_HASH=a621e95-c5907ef75b5ef5ef9c92110459d20bcaa8ebac0f`
- Proximo teste:
  - retestar o boot logo do `MSX2+` em hardware com a `70ED`
  - decidir se o proximo corte segue para border/interlace/odd-even streaming ou se esta rodada ja remove parte relevante da pagina errada

## Atualizacao incremental de 03/04/2026 - host hi-res/interlaced reabilitado

- O teste de hardware da `70ED` nao trouxe melhora perceptivel:
  - `MASK` permaneceu visivel
  - pagina errada/tarja nao melhorou
  - a cadencia seguiu lenta
  - o quadro continuou sem aparencia de interlace
- Diagnostico seguinte da issue:
  - o problema nao estava apenas no renderer `SCREEN 6/7`
  - o host baremetal ainda herdava um default equivalente a `fmsx_hires=OFF` do `libretro`, o que suprimia o path hi-res/interlaced sempre que o projeto nao oferecia um frontend equivalente
- Mudanca aplicada:
  - `src/fmsx_host_stubs.c` passa a inicializar `g_hires_mode` em `HIRES_INTERLACED`
- Build local validada:
  - `BUILD_BID=202604031710-issue238-hires-default-interlaced`
  - `BUILD_ID=C2C2`
  - `BUILD_HASH=d195e4d-5ab3d9413e1422b2cc97922bdec5c5c3dfba61ff`
- Proximo teste:
  - validar em hardware se o boot logo finalmente passa a mostrar comportamento interlaced/odd-even
  - so depois voltar ao proximo corte de renderer page-aware

## Atualizacao incremental de 03/04/2026 - `C2C2` sem efeito visual e recorte no `SCREEN 6` wide

- O teste de hardware seguinte confirmou que a build `C2C2` nao mudou a leitura visual do boot logo:
  - `MASK` seguiu visivel
  - pagina errada/tarja nao mudou
  - a cadencia permaneceu lenta
  - nao apareceu leitura pratica de interlace
- Decisao tecnica desta rodada:
  - parar de tratar o host `hires_mode` como gargalo principal
  - recortar o problema no renderer `SCREEN 6` wide, que e o modo ativo do boot logo
- Mudanca aplicada em `src/fmsx_local/Wide.h`:
  - remocao da heuristica de reorder de paginas baseada em `ChrTab`, porque o core local ja neutraliza `R#2 bit5` em `fmsx_vdp_r2_base()` no caminho `multipage`
  - borda lateral de `SCREEN 6` wide passa a usar o padrao alternado `BGColor[hi/lo]` do `blueMSX`

## Atualizacao incremental de 04/04/2026 - `BL238` sai de `log_cb` e entra no serial real

- A build `3271` estava correta no gating do boot logo, mas continuou sem qualquer linha `BL238` no UART.
- O diagnostico fechado nesta rodada foi outro:
  - o baremetal local nunca conecta `log_cb` ao serial usado pelo kernel
  - isso tambem explica por que os `log_cb(...)` antigos do `MSX.c` nunca apareciam em `/tmp/msx2p-boot-serial.log`
- Correcao aplicada:
  - `src/kernel.cpp` agora exporta um writer C minimo (`msxbare_uart_write`) que escreve no mesmo `CSerialDevice` usado no boot do kernel
  - `src/fmsx_host_stubs.c` passa a emitir `BL238` por esse canal, sem depender de `log_cb`
  - a janela da `3271` foi mantida: primeiros `96` frames do proprio boot logo (`SM:06` + `R25=03`)
- Build local validada:
  - `BUILD_BID=202604041055-issue238-bootlogo-uart-direct`
  - `BUILD_ID=1AD5`
  - `BUILD_HASH=f2485a7-123900306375666fd0ff2f4ff911edd8b910b64a`
- Proximo gate:
  - repetir a captura UART
  - fechar se `R9/S2/EO` alternam de verdade no boot logo ou se o host segue apresentando so um estado estatico

## Atualizacao incremental de 04/04/2026 - `BL238` agora mede `DT/ET/CE/TR`

- A primeira coleta valida do `BL238` na build `1AD5` mostrou:
  - `F` e `VF` andando `1:1`
  - `LG` constante
  - `R25=03`, `R9=00`, `EO=0`
  - `R26/R27` alternando de forma coerente com o split horizontal ja corrigido
- Leitura pratica:
  - o host nao esta acumulando atraso crescente de apresentacao durante o logo
  - o problema residual deixa de apontar para "drop de frame no presenter" e volta ao produtor do quadro
  - o `LG` antigo era pouco util porque misturava frame relativo ao logo com frame absoluto do VDP
- Correcao aplicada no trace:
  - `VF` passa a ser relativo ao primeiro frame do proprio logo
  - o `BL238` agora inclui `DT`, `ET`, `CE` e `TR`
- Build local validada:
  - `BUILD_BID=202604041125-issue238-bootlogo-uart-timing`
  - `BUILD_ID=1796`
  - `BUILD_HASH=dbcacb7-496d863c4acff33d8ed0b11df5f97387b6235619`
- Proximo gate:
  - repetir a captura UART
  - decidir se a lentidao real do logo casa com janelas de `CE/TR` ou se o gargalo esta fora do command engine

## Atualizacao incremental de 04/04/2026 - `7E29` descartada por regressao real de cadencia

- A rodada seguinte de UART confirmou que o experimento `SCREEN 6 streaming scroll` nao era o caminho certo para a `#238`.
- O quadro funcional permaneceu coerente (`F/VF=1:1`, `LG=000`, `R9=00`, `R25=03`, `R26/R27` alternando), mas a cadencia piorou de forma objetiva:
  - `DT` medio em `96` frames: `30.06ms`
  - pico observado: `43ms`
- Leitura tecnica:
  - o rewrite local de `RefreshLine6()` / `RefreshLine6WideRange()` preservou a semantica do logo, mas encareceu o path wide
  - `R#9 interlace` continua fora da janela visivel observada; a regressao veio do renderer, nao de `odd/even`
- Decisao operacional desta issue:
  - descartar localmente o corte `7E29`
  - manter a telemetria `BL238`, `BL238I` e `BL238R`
  - voltar ao renderer anterior e seguir investigando apenas a cadencia/consumo das writes tardias de `R26/R27`
- Build local validada apos o rollback do renderer regressivo:
  - `BUILD_BID=202604042215-issue238-drop-screen6-streaming-regression`
  - `BUILD_ID=C7EC`
  - `BUILD_HASH=cc918b4-b19e9b444adbbc29baf22793a2664e6029718d5c`

## Atualizacao incremental de 05/04/2026 - `odd page` wide deixa de depender de `FlipEvenOdd`

- A leitura da UART da base `C7EC` manteve o quadro funcional do logo:
  - `R9=00`
  - `R25=03`
  - `R26/R27` com primeira write por `0x99 @ 7BB2` e depois loop regular por `0x9B @ 7A71/7A73`
- Isso reforcou que o problema vivo desta issue continua no consumo visual de `R26/R27`, nao em `R#9 interlace`.
- O proximo corte de core foi entao para o addressing de `SCREEN 6/7`:
  - em `src/fmsx_local/Wide.h`, `V9958BitmapLinePtrWideLatched()` agora aplica `FmsxVDPLineOddPageLatched` independentemente de `FlipEvenOdd`
  - isso alinha o path wide ao contrato do `blueMSX`, onde `vdpIsOddPage()` participa sempre do `charTable` de `SCREEN 6/7`
- Nenhum ajuste novo de `MASK` entrou nesta rodada.
- Build local validada:
  - `BUILD_BID=202604042345-issue238-screen67-oddpage-address`
  - `BUILD_ID=2039`
  - `BUILD_HASH=cc918b4-272f08af53d9bb87cb3b543c6db1d0c381896340`

## Atualizacao incremental de 05/04/2026 - `RefreshLine6()` full-line aproximado ao `blueMSX`

- A UART da `2039` manteve exatamente o mesmo contrato de estado do logo:
  - `R9=00`
  - `R25=03`
  - writes tardias de `R26/R27` iguais
- O proximo corte deixou entao de atacar apenas addressing e passou ao path de consumo:
  - `src/fmsx_local/Wide.h` agora usa, em `RefreshLine6()` full-line, um loop de `charTable`/`scroll`/`jump` muito mais proximo do `blueMSX`
  - `RefreshLine6WideRange()` foi mantido no path anterior nesta rodada
- Objetivo:
  - reduzir o custo do path full-line do boot logo
  - aproximar a composicao do `SCREEN 6` ao renderer de referencia sem reabrir o split horizontal ja corrigido
- Build local validada:
  - `BUILD_BID=202604050015-issue238-screen6-bluemsx-fullscan`
  - `BUILD_ID=AEAA`
  - `BUILD_HASH=cc918b4-af940a058b8c0deea90e743290071157a0be0e25`

## Atualizacao incremental de 04/04/2026 - `BL238I` fecha o estado herdado de `R#9/25/26/27`

- A UART da `6ED6` mostrou que, na janela visivel do logo:
  - `R#9` e `R#25` nao sao reprogramados
  - `R#26/R#27` sao escritos de verdade pelo caminho formal da VDP
  - a primeira write visivel vem de `0x99` em `PC=7BB2`
  - depois a animacao entra em loop estavel por `0x9B` em `PC=7A71/7A73`
- O proximo ponto cego desta issue deixou de ser o frame visivel e passou a ser o estado herdado do prelude do logo.
- Implementacao aplicada:
  - `src/fmsx_host_stubs.c` agora emite `BL238I` no primeiro frame do logo
  - a linha imprime o ultimo write absoluto de `R#9`, `R#25`, `R#26` e `R#27` com:
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
- Proximo gate:
  - repetir o boot logo
  - reler `BL238` + `BL238I`
  - decidir se `R#9 interlace` ainda permanece hipotese primaria ou se a cadencia de `R#26/R#27` passa a ser o foco principal da issue

## Atualizacao incremental de 04/04/2026 - `SCREEN 6` wide muda para fetch streaming

- A UART da `47D9` fechou que o prelude do logo escreve `R#9=00`; nesta janela, `R#9 interlace` perde forca como hipotese primaria.
- O foco ativo da issue migrou entao para a cadencia/consumo das writes tardias de `R#26/R#27`.
- Implementacao aplicada:
  - `src/fmsx_local/Wide.h`
  - `RefreshLine6()` e `RefreshLine6WideRange()` deixam de expandir a linha inteira em `BgRaw[1024]`
  - o renderer wide de `SCREEN 6` passa a fazer fetch streaming por pagina, consumindo `R#26/R#27` em unidades logicas de pares de pixels, mais proximo do `blueMSX`
- Objetivo desta rodada:
  - reduzir custo por linha no boot logo
  - alinhar a semantica do scroll horizontal tardio a `R#26/R#27` no modo efetivamente usado pela `MSX2PEXT.ROM`
- Build local validada:
  - `BUILD_BID=202604042325-issue238-screen6-streaming-scroll`
  - `BUILD_ID=7E29`
  - `BUILD_HASH=cc918b4-054a2bbbf95a7fccd89ea9cc199c2bc5a23f40d2`
- Proximo gate:
  - repetir o boot logo do `MSX2+`
  - observar se a cadencia finalmente reage
  - reler a UART para conferir se `R#26/R#27` continuam coerentes sob o novo path de `SCREEN 6`

## Atualizacao incremental de 04/04/2026 - round `7A75` sem efeito visual e sem `BL238W`

- O round mais recente de video + UART com a build `7A75` manteve exatamente o mesmo veredito visual:
  - o logo continua entrando
  - o `MASK` segue visivel
  - a cadencia observada em tela continua lenta
  - nao apareceu leitura pratica de odd/even/interlace
- A UART desta rodada reforcou que isso nao e backlog do host:
  - `F` e `VF` continuam `1:1`
  - `LG=000`
  - `R9=00`, `F9=0`, `I9=0`
  - `R25=03`
  - `R26/R27` alternam regularmente entre `1D/07` e `24/01`
  - `CE` so pulsa em poucos frames; `TR` permanece `0`
- O ponto novo desta rodada foi a ausencia total de `BL238W`:
  - o trace de writes BIOS-side anterior continuou chegando tarde demais e nao pegou nenhuma write util da preparacao do logo
- Leitura tecnica consolidada:
  - o numero observado de `F:004500~` ate o BASIC continua coerente com execucao em torno de `60Hz`, nao com um presenter atrasado
  - a lentidao residual continua sendo semantica do produtor do quadro do boot logo

## Atualizacao incremental de 04/04/2026 - `BL238W` passa a capturar o prelude inteiro

- O corte local seguinte para esta issue atacou apenas observabilidade, sem mexer no renderer nem no pacing.
- Implementacao aplicada em `src/fmsx_local/MSX.c`:
  - `BL238W` deixa de depender da janela visivel do logo
  - o trace agora registra os primeiros `256` writes dos registradores `R#2`, `R#9`, `R#18`, `R#25`, `R#26` e `R#27` desde o prelude BIOS-side
- Objetivo tecnico:
  - fechar se a `MSX2PEXT` realmente arma odd/even/interlace antes de o logo aparecer
  - decidir o proximo patch do bloco `BL-005` com evidencia BIOS-side, nao por heuristica visual
- Build local validada:
  - `BUILD_BID=202604041620-issue238-prelude-regwrite-ungated`
  - `BUILD_ID=89F2`
  - artefato `artifacts/kernel8-issue238.img`
  - `sha1` do artefato: `03d3b641eeefde71323afe12676f88a61b300670`
- Guardrail desta rodada:
  - a `#238` continua sem commit local e sem push ate declaracao explicita de estabilidade pelo usuario
- Proximo gate:
  - repetir o boot logo com a build `89F2`
  - reler `BL238` e `BL238W`
  - decidir se odd/even/interlace sao armados no prelude ou se o proximo ataque sai desse bloco

## Atualizacao incremental de 04/04/2026 - a `89F2` esta em campo, mas `BL238W` segue ausente

- A rodada seguinte confirmou que a UART ja corresponde ao binario local da issue.
- Mesmo assim, o comportamento do log permaneceu:
  - `F/VF=1:1`
  - `LG=000`
  - `R9=00`, `F9=0`, `I9=0`
  - `R25=03`
  - `R26/R27` alternando regularmente
  - nenhuma linha `BL238W`
- Conclusao tecnica desta rodada:
  - a falta de `BL238W` nao era SD/imagem velha
  - a instrumentacao continuava no ponto errado do core

## Atualizacao incremental de 04/04/2026 - proximo corte move `BL238W` para `0x99/0x9B`

- O novo corte local desta issue passa a registrar `BL238W` na borda do decode das portas `0x99` e `0x9B`, antes de qualquer atalho do `VDPOut()`.
- O payload ganhou:
  - `P`: porta origem (`99`, `9B` ou `FF` no fallback do `VDPOut`)
  - `O`: valor antigo do registrador
- Build local validada:
  - `BUILD_BID=202604041935-issue238-port99-port9b-regwrite`
  - `BUILD_ID=4749`
  - `sha1` do artefato: `1954ba4dc9e0b12e2c0d30fb7ff7dfb0ae5455f2`
- Guardrail mantido:
  - sem commit local
  - sem push

## Atualizacao incremental de 04/04/2026 - veredito da captura `BL238` com tempo real

- A captura da build `1796` mostrou que o host nao e o gargalo dominante do boot logo:
  - `F` e `VF` ficaram `1:1`
  - `LG` ficou em `0`
  - `DT` ficou quase sempre em `14..18ms`, com poucos picos em `25..30ms`
  - `CE` apareceu em apenas `3` dos `96` frames observados
  - `TR` ficou `0` em toda a janela
- O mesmo trace confirmou que o split horizontal continua coerente:
  - `R26/R27` alternam entre `1D/07` e `24/01` apos a entrada da animacao
- Leitura pratica:
  - a lentidao residual do logo nao parece vir de backlog crescente de apresentacao nem de `CE` constantemente ativo
  - o proximo corte deve voltar ao produtor do quadro em `SM:06`, nao ao presenter do host
  - `left-edge mask` fisico de `SCREEN 6` wide passa a cobrir `16` pixels, como no renderer line512 do `blueMSX`
- Build local validada:
  - `BUILD_BID=202604031830-issue238-screen6-edge-mask`
  - `BUILD_ID=E520`
  - `BUILD_HASH=2bcfd13-da6cb9d57eebc4c7ded4856f93b0d0f840a5038a`
- Proximo teste:
  - retestar o boot logo `MSX2+` em hardware com a `E520`
  - se o `MASK` nao mudar, promover o proximo corte para o source/page streaming de `SCREEN 6`

## Atualizacao incremental de 03/04/2026 - retorno controlado ao pacing do command engine

- O round seguinte em hardware da `E520` confirmou ausencia de ganho visual: nada mudou no boot logo.
- Decisao tecnica desta rodada:
  - parar de insistir em recortes visuais pequenos de `Wide.h`
  - voltar ao eixo de throughput do command engine, mas sem repetir o experimento absoluto descartado na `E3EC`
- Mudanca aplicada em `src/fmsx_local/V9938.c`:
  - `VdpOpsQuantum()` passa a elevar o budget so quando `CE=1`
  - `SCREEN 6/7/8` recebem uplift maior (`500000`)
  - outros caminhos `MSX2+` com `CE=1` recebem uplift moderado (`300000`)
  - sem comando ativo, o baseline seguro da branch permanece em `250000`
- Build local validada:
  - `BUILD_BID=202604031930-issue238-screen6-ce-uplift`
  - `BUILD_ID=2865`
  - `BUILD_HASH=13c4905-e5047616bb1edd3052f3b0e3415715ff51ed12e1`
- Proximo teste:
  - retestar o boot logo `MSX2+` em hardware
  - se a cadencia continuar identica, promover o proximo corte para sincronizacao de scanout com progresso parcial do engine

## Atualizacao incremental de 03/04/2026 - scanout parcial de `SCREEN 6/7`

- O teste seguinte da `2865` confirmou que o corte de pacing estava no lugar errado: o quadro ruim do boot logo permaneceu igual e os frames uteis seguiam com `CE=0`.
- Decisao tecnica desta rodada:
  - abandonar novos uplifts de `VdpOpsQuantum()` para este sintoma especifico
  - mover o foco para scanout parcial de `SCREEN 6/7`, alinhando o core local ao contrato incremental observado no `blueMSX`
- Mudanca aplicada:
  - `src/fmsx_local/MSX.c` deixa de curto-circuitar o sync antes de write fora da janela do `KMG`
  - `src/fmsx_local/Wide.h` ganha `RefreshLine6WideRange()` e `RefreshLine7WideRange()`
  - o sync de writes do VDP passa a congelar apenas o prefixo ja escaneado da linha em `SCREEN 6/7`
- Build local validada:
  - `BUILD_BID=202604031620-issue238-screen6-partial-scanout`
  - `BUILD_ID=894F`
  - `BUILD_HASH=8a4947c-00efee1ad301422d4ffa66201b3e2a3858304be4`
- Proximo teste:
  - retestar o boot logo `MSX2+` em hardware
  - se a tarja/pagina errada ainda nao reagir, promover o proximo corte para latch por scanline de `odd/even`, page source e scroll

## Atualizacao incremental de 04/04/2026 - latch por scanline em `SCREEN 6/7`

- O round de hardware da `894F` confirmou que o corte de scanout parcial ainda nao alterava o quadro observavel do boot logo:
  - `MASK` visivel
  - tarja/pagina errada no mesmo ponto
  - cadencia igual
  - sem leitura pratica de interlace
- Diagnostico consolidado:
  - o problema residual nao era mais "quanto da linha congelar", mas "qual estado de pagina/scroll/source o renderer usa enquanto recompõe a linha"
  - em `SCREEN 6/7`, o core local ainda consultava `ChrTab`, `ChrTabM`, `R#2`, `R#25`, `R#26`, `R#27` e `odd-page` ao vivo, enquanto o `blueMSX` trabalha com esses sinais como snapshot do inicio da linha
- Mudanca aplicada:
  - `src/fmsx_local/MSX.c` passa a congelar por scanline `ChrTab`, `ChrTabM`, `R#2`, `R#25`, `R#26`, `R#27`, `odd-page` e `vscroll`
  - `src/fmsx_local/Wide.h` passa a usar esse snapshot em todos os calculos wide de `SCREEN 6/7`
  - o override de `vscroll` do render path tambem passou a cobrir `SCREEN 6/7`
- Ajuste colateral de build desta rodada:
  - `Makefile` e `src/Makefile` agora propagam `PREFIX64=$(CROSS)` para `src` e para os subbuilds do `Circle`
  - o projeto ganhou `src/math.h` e `src/fmsx_math_shim.c` para manter a build full-feature na toolchain `aarch64-elf` do Homebrew, que e `--without-headers`
- Build local validada:
  - `BUILD_BID=202604041430-issue238-screen6-line-latched-state`
  - `BUILD_ID=4FB0`
  - `BUILD_HASH=e298d4e-d03d3116b86dbc2bc49478da1ff60c3e769581b7`
- Proximo teste:
  - retestar o boot logo `MSX2+` em hardware com a `4FB0`
  - verificar se o `MASK`, a tarja/pagina errada ou a cadencia finalmente reagem ao latch por scanline

## Atualizacao incremental de 04/04/2026 - `4FB0` sem efeito visual e ajuste do scroll fisico wide

- O teste seguinte confirmou que a `4FB0` nao moveu o sintoma observado no boot logo:
  - `MASK` visivel
  - tarja/pagina errada no mesmo ponto
  - cadencia igual
  - sem leitura pratica de interlace
- A analise local do video por frames confirmou o mesmo estado do overlay nos quadros uteis:
  - `SM:06`
  - `R2:3F`
  - `R25:03`
  - `EP:1`
  - `CE:0`
  - `TR:0`
- Diagnostico consolidado:
  - o latch por scanline do estado de display ja nao e o gargalo principal
  - o renderer wide de `SCREEN 6/7` ainda aplicava coarse/fine scroll em unidade logica, enquanto o `blueMSX` line512 compoe a linha no espaco fisico dobrado
  - isso deixa `R#26/R#27` subescalados no scanout, preservando pagina errada e `MASK` aparente
- Mudanca aplicada:
  - `src/fmsx_local/Wide.h` passa a usar coarse scroll e fine scroll dobrados (`<< 1`) no path wide de `SCREEN 6/7`
  - o `left-edge mask` de `SCREEN 7` wide tambem passa a cobrir `16` pixels fisicos
- Referencia primaria usada no diff:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
- Build local validada:
  - `BUILD_BID=202604041620-issue238-screen67-physical-scroll`
  - `BUILD_ID=C079`
  - `BUILD_HASH=16da695-9edab52930a87d5a297e94ad32752c850250b185`
- Proximo teste:
  - retestar o boot logo `MSX2+` em hardware com a `C079`
  - verificar se o `MASK`, a tarja/pagina errada ou a cadencia finalmente reagem ao scroll fisico corrigido

## Atualizacao incremental de 04/04/2026 - `C079` fecha o split horizontal do logo

- O teste de hardware da `C079` finalmente moveu a composicao do boot logo:
  - o logo passou a nascer dos dois lados
  - as duas metades caminham em direcao ao centro da tela
  - a pagina errada dominante do quadro anterior deixou de ser o sintoma principal
- A analise local do video confirmou esse mesmo ganho nos quadros uteis:
  - `SM:06`
  - `R2:3F`
  - `R25:03`
  - `EP:1`
  - `CE:0`
  - `TR:0`
- Diagnostico consolidado:
  - o ajuste de coarse/fine scroll no espaco fisico dobrado fechou a parte horizontal do `BL-004`
  - o renderer wide passou a caminhar na unidade correta para o boot logo
  - o backlog residual desta issue ficou reduzido ao bloco `BL-005`:
    - `left-edge mask` ainda visivel
    - sem leitura pratica de odd/even/interlace
    - cadencia global ainda lenta
- Proximo corte:
  - atacar `R#25`, odd/even e `R#9 interlace` como um unico bloco

## Atualizacao incremental de 04/04/2026 - latch por scanline do estado hi-res/interlaced

- O corte seguinte subiu para o miolo remanescente de `BL-005`:
  - o renderer local ja consumia snapshot por linha em `SCREEN 6/7` para source/page/scroll
  - mas a apresentacao hi-res ainda vinha de macros live (`HiResMode`, `OddPage`, `InterlacedMode`) no path de borda
  - o path narrow de bitmap ainda aplicava odd/even com o comportamento legado ao vivo do `fMSX`
- Mudanca aplicada:
  - `src/fmsx_local/MSX.c` passa a congelar por linha tambem `R#9 bit2` e `R#9 bit3`
  - `src/fmsx_local/Common.h` e `src/fmsx_local/Wide.h` passam a usar esse snapshot por linha na composicao hi-res/interlaced da borda
  - `V9958BitmapLinePtr()` narrow passa a consumir a pagina odd/even latched por linha
- Referencia primaria usada no diff:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
- Build local validada:
  - `BUILD_BID=202604041840-issue238-line-latched-interlace`
  - `BUILD_ID=3DE2`
  - `BUILD_HASH=ccca9df-15dc573ed2165b0105f68bcf50530bf6d2140fcb`
- Proximo teste:
  - retestar o boot logo `MSX2+` em hardware com a `3DE2`
  - verificar se `MASK`, odd/even/interlace ou a tarja residual finalmente reagem ao latch por linha do estado de apresentacao

## Atualizacao incremental de 04/04/2026 - observabilidade UART do boot logo

- O teste seguinte da `3DE2` nao mudou o quadro observavel:
  - cadencia igual
  - `MASK` igual
  - sem leitura pratica de odd/even/interlace
- Consequencia pratica:
  - a issue deixa de promover patch visual cego como proximo passo imediato
  - o foco passa a ser confirmar via UART:
    - se `R#9/S#2` realmente alternam durante o boot logo
    - se o host esta apresentando cada frame do VDP ou ficando atras do `PutImage()`
- Mudanca aplicada:
  - `src/fmsx_host_stubs.c` ganha trace UART `BL238` limitado aos primeiros `96` frames publicados em `SM:06` com `R25=03`
- Build local validada:
  - `BUILD_BID=202604041950-issue238-bootlogo-uart-frame-trace`
  - `BUILD_ID=9A2C`
  - `BUILD_HASH=115717d-18b3d09b5e160bb49b3cc8d4ac93a34052592e1c`
- Proximo teste:
  - subir a `9A2C`
  - capturar UART
  - devolver as linhas `BL238` como base do proximo corte

## Atualizacao incremental de 04/04/2026 - ajuste da janela do trace UART

- A primeira coleta da `9A2C` trouxe apenas o startup do Pi e nenhum `BL238`.
- Diagnostico consolidado:
  - o trace estava preso aos primeiros `96` frames globais do host
  - o boot logo do `MSX2+` so entra depois dessa janela, entao o corte de observabilidade estava errado
- Mudanca aplicada:
  - `src/fmsx_host_stubs.c` agora conta os primeiros `96` frames do proprio boot logo (`SM:06` + `R25=03`) e reinicia a janela quando ele sai de foco
- Build local validada:
  - `BUILD_BID=202604041010-issue238-bootlogo-uart-frame-window`
  - `BUILD_ID=3271`
  - `BUILD_HASH=115717d-7d05a4e7374301c55f179bac7d204db268ebac16`
- Proximo teste:
  - repetir a captura de UART na `3271`
  - usar as linhas `BL238` como base do proximo patch

## Atualizacao incremental de 04/04/2026 - `left-edge mask` wide alinhado ao backdrop

- O veredito do `BL238` na build `1796` descartou backlog do host e `CE/TR` continuamente ativos como gargalo dominante do boot logo.
- O proximo corte voltou ao renderer `SCREEN 6/7`, focando no sintoma que ainda permanecia visualmente exposto:
  - o `left-edge mask` seguia aparecendo como faixa plana mesmo depois de o split horizontal do logo ter sido corrigido
- Implementacao aplicada:
  - `src/fmsx_local/Wide.h`
  - `RefreshLine6()` / `RefreshLine6WideRange()` passam a usar o pixel do backdrop ja scrolado como base da mascara
  - `RefreshLine7()` / `RefreshLine7WideRange()` recebem o mesmo ajuste
- Efeito esperado:
  - a mascara deve se misturar ao backdrop em movimento, em vez de permanecer como uma faixa chapada na borda esquerda
- Build local validada:
  - `BUILD_BID=202604041235-issue238-wide-mask-backdrop`
  - `BUILD_ID=5870`
  - `BUILD_HASH=5a7a82c-5dd8114883e78fd67d9a3864d8b60355d8348e7d`
- Guardrail de fluxo consolidado no mesmo ciclo:
  - pushes deixam de acontecer a cada corte incremental
  - o remoto so deve ser atualizado quando o usuario declarar explicitamente que o estado atual ficou estavel

## Atualizacao incremental de 04/04/2026 - `R#18` latched por scanline no boot logo

- O round seguinte de video + UART nao mudou o veredito funcional do logo:
  - `MASK` ainda visivel
  - cadencia ainda lenta
  - nenhuma leitura pratica de odd/even
  - `BL238` segue com `F/VF=1:1`, `LG=000`, `CE/TR` praticamente inativos, `R25=03`, `R9=00` e `R26/R27` alternando de forma regular
- Consequencia pratica:
  - o host continua descartado como gargalo dominante
  - o split horizontal fechado na `C079` continua valido
  - o proximo estado vivo relevante do renderer em `SM:06` era `R#18` (`HAdjust`/`VAdjust`)
- Implementacao aplicada:
  - `src/fmsx_local/MSX.c` passa a congelar `R#18` por scanline
  - `src/fmsx_local/Common.h` e `src/fmsx_local/Wide.h` passam a usar `HAdjust`/`VAdjust` latched por linha no path de borda e posicionamento
- Referencia primaria usada:
  - `third_party/fmsx/fMSX/MSX.h`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
- Build local validada:
  - `BUILD_BID=202604041530-issue238-r18-line-latched`
  - `BUILD_ID=9F81`
  - imagem `sha1 8c400743be364ac184c6f5ae7608b38451d3b2bc`
- Proximo teste:
  - retestar o boot logo `MSX2+` em hardware com a `9F81`
  - verificar se o `MASK`/borda finalmente reagem a esse ultimo estado vivo do renderer

## Atualizacao incremental de 04/04/2026 - telemetria de writes do boot logo

- O round seguinte confirmou a nova ordem do trabalho:
  - primeiro odd/even + `R#9 interlace`
  - depois cadencia
  - `MASK` deixa de ser o principal alvo desta rodada
- Diagnostico consolidado:
  - o `BL238` de quadro inteiro nao mostra se o BIOS muda `R#9/R#25/R#26/R#27` no meio do frame
  - isso passou a ser o proximo buraco de observabilidade da issue
- Implementacao aplicada:
  - `src/fmsx_host_stubs.c` agora expõe `F9`, `I9` e `S2E` no `BL238`
  - `src/fmsx_local/MSX.c` agora gera `BL238W` para writes de `R#2`, `R#9`, `R#18`, `R#25`, `R#26` e `R#27` durante a janela do logo
- Build local validada:
  - `BUILD_BID=202604041705-issue238-bootlogo-regwrite-trace`
  - `BUILD_ID=A1D1`
  - imagem `sha1 cdb45bca50c1a8ce3d914da414d938c15b7fd6d4`
- Proximo teste:
  - repetir o boot logo `MSX2+` com a `A1D1`
  - coletar `BL238` + `BL238W`
  - so depois decidir o proximo patch do bloco odd/even/interlace/cadencia

## Atualizacao incremental de 04/04/2026 - contadores de write no `BL238`

- A UART seguinte confirmou que o problema do `BL238W` nao era mais imagem velha:
  - o round rodou com `Compile time: Apr  4 2026 19:14:22`
  - o `BL238` continuou estavel com `F/VF=1:1`, `LG=000`, `R9=00`, `F9=0`, `I9=0`, `R25=03`
  - `R26/R27` seguiram alternando no presenter
  - ainda assim, o log continuou sem nenhuma linha `BL238W`
- Cruzamento adicional com a ROM local:
  - o `z80dasm` do `MSX2PEXT.ROM` (`sha1 fe0254cbfc11405b79e7c86c7769bd6322b04995`) mostrou que o helper `l0688h` escreve registradores VDP pelo caminho formal `out (99h),a` + `reg|80h`
  - o prelude do logo passa por `c=1Ah` e `c=1Bh`, confirmando que `R#26` e `R#27` realmente entram no fluxo ROM-side
- Diagnostico refinado:
  - o silencio do `BL238W` nao pode mais ser lido como "a ROM nao escreve `R#26/R#27`"
  - o proximo buraco de observabilidade passou a ser medir, no `BL238` que ja funciona, se os contadores reais de write desses registradores sobem durante a janela do logo e se o estado raw diverge do latched por linha
- Implementacao aplicada:
  - `src/fmsx_host_stubs.c`
  - o `BL238` agora emite tambem:
    - `L9/L25/L26/L27`
    - `W9/W25/W26/W27`
- Build local validada:
  - `BUILD_BID=202604042040-issue238-bootlogo-write-counters`
  - `BUILD_ID=DC25`
  - imagem `sha1 1a0df1ea9732334bcc1678139b671250edf0d619`
- Proximo teste:
  - repetir o boot logo `MSX2+` com a `DC25`
  - reler o `BL238`
  - fechar se `R#9/25/26/27` sobem por write real durante a janela do logo antes de qualquer novo patch visual

## Atualizacao incremental de 04/04/2026 - `BL238R` para origem das writes de `R#26/R#27`

- A UART da `DC25` fechou a pergunta anterior:
  - `W9=0` e `W25=0` durante a janela do logo
  - `W26/W27` sobem de forma monotona junto da alternancia observada em `R26/R27`
  - `L26/L27` batem com `R26/R27`, entao o estado latched por scanline nao esta divergindo do raw nesse ponto
- Consequencia pratica:
  - a janela visivel do logo nao esta sendo guiada por reprogramacao de `R#9` nem `R#25`
  - o problema vivo ficou mais estreito: origem e cadencia das writes de `R#26/R#27`
- Implementacao aplicada:
  - `src/fmsx_local/MSX.c` agora guarda, por registrador, o ultimo `PC`, porta, valor antigo/novo, frame e scanline da write
  - `src/fmsx_host_stubs.c` passa a emitir `BL238R` sempre que `W26` ou `W27` avancam, carregando exatamente essa origem real das writes
- Build local validada:
  - `BUILD_BID=202604042120-issue238-r26r27-write-origin`
  - `BUILD_ID=6ED6`
  - imagem `sha1 7c002d49a8acfb3e64a192addcea0d50914ab429`
- Proximo teste:
  - repetir o boot logo `MSX2+` com a `6ED6`
  - reler `BL238` + `BL238R`
  - decidir o proximo patch com base na origem real de `R#26/R#27`, nao mais por heuristica visual

## Atualizacao incremental de 05/04/2026 - `AEAA` descartada e novo corte no path parcial

- O round de video + UART da build `AEAA` fechou um descarte claro:
  - sem ganho de cadencia
  - split horizontal preservado
  - sem leitura pratica de odd/even
  - logo visualmente distorcido
- A UART manteve o mesmo contrato funcional do logo:
  - `R9=00`
  - `R25=03`
  - primeira write de `R26/R27` por `0x99 @ 7BB2`
  - loop regular depois por `0x9B @ 7A71/7A73`
- Leitura tecnica:
  - o rewrite de `RefreshLine6()` full-line introduziu regressao visual sem alterar a semantica observada
  - o hot path que realmente interessa para a `#238` continua sendo `RefreshLine6WideRange()`, chamado por `fmsx_vdp_render_screen67_partial()`
- Correcao local aplicada nesta rodada:
  - `RefreshLine6()` voltou ao caminho estavel
  - o alinhamento de `odd page` da `2039` foi preservado
  - `RefreshLine6WideRange()` deixou de reconstruir `BgRaw[1024]` inteiro em cada chunk e passou a amostrar so a faixa pedida
- Build local validada:
  - `BUILD_BID=202604042152-cc918b4`
  - `BUILD_ID=C724`
  - `BUILD_HASH=cc918b4-d1d3b856f205e2924cdeb77c5af38b54b78ff141`

## Atualizacao incremental de 05/04/2026 - UART leve para medir o pacing real do logo

- O round da `C724` confirmou:
  - split horizontal correto
  - distorcao removida
  - sem ganho visivel de cadencia
- A UART manteve o mesmo contrato:
  - `R9=00`
  - `R25=03`
  - `R26/R27` entrando por `0x99 @ 7BB2` e depois no loop de `0x9B @ 7A71/7A73`
- Conclusao desta rodada:
  - o proximo gargalo de leitura passou a ser a propria telemetria
  - `BL238` por frame e `BL238R` em toda alternancia estavam pesados demais para servir como medicao honesta de cadencia visual
- Correcao local aplicada:
  - `src/fmsx_host_stubs.c`
  - o trace do logo ficou reduzido para:
    - `BL238I` no primeiro frame
    - `BL238R` so quando muda a origem das writes de `R26/R27`
    - `BL238S` de resumo no frame `96`
- Build local validada:
  - `BUILD_BID=202604042201-cc918b4`
  - `BUILD_ID=85F2`
  - `BUILD_HASH=cc918b4-e75d968baca8623b4a7f67a7ac93009e34c25606`

## Atualizacao incremental de 05/04/2026 - `S#2 bit6` promovido ao proximo alvo offline

- A UART da `85F2` confirmou que a janela visivel do logo continua sem reprogramar `R#9`:
  - `R9=00`
  - `R25=03`
  - `R26/R27` entram por `0x99 @ 7BB2` e depois seguem no loop `0x9B @ 7A71/7A73`
- O cruzamento com a `MSX2PEXT.ROM` refinou a leitura da issue:
  - o bloco principal do logo (`0x2A00..0x3300`) usa `S#2 bit0` (`CE`) como sincronizacao dominante
  - os waits por `S#2 bit6` aparecem em helpers BIOS fora da janela visivel (`0x10D6` e `0x363B`)
- Implicacao pratica:
  - a hipotese primaria da issue deixa de ser "interlace/odd-even nao armado no logo"
  - o gargalo mais provavel passa a ser o edge de `VBlank/IE0` e a semantica de `S#2 bit6` no caminho que leva o boot ate o BASIC
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - `IE0/VBlank` agora sobem no inicio da primeira linha da borda inferior, como no `blueMSX`
  - o caminho antigo no HBlank ficou apenas como fallback
- Build local validada:
  - `BUILD_BID=202604042320-issue238-vblank-line-start`
  - `BUILD_ID=59C0`
  - `BUILD_HASH=cc918b4-382ad7d1628e55605b3dac4dc32359c78b179015`

## Atualizacao incremental de 05/04/2026 - `timingMode` do command engine alinhado a `drawArea`

- A comparacao direta com o `blueMSX` consolidou uma divergencia estrutural do core local:
  - referencia: `timingMode = ((R#1 >> 6) & drawArea) | (R#8 & 2)`
  - local: `GetVdpTimingValue()` ainda indexava as tabelas so por `R#1 bit6`
- Como a UART do logo ja mostrou writes de `R#26/R#27` em `SL 192/193`, essa diferenca pode alongar trabalho de command engine justamente quando o BIOS atualiza o movimento fora da area visivel
- Correcao local aplicada:
  - `src/fmsx_local/V9938.c`
  - o bucket de timing agora usa `S#2 bit6` (`VDPStatus[2] & 0x40`) como gate coarse de `drawArea`
- Build local validada:
  - `BUILD_BID=202604042355-issue238-command-timing-drawarea`
  - `BUILD_ID=66B1`
  - `BUILD_HASH=cc918b4-3483cb935ae92659fad3b1af41e85a21653dda4f`

## Atualizacao incremental de 05/04/2026 - separar `S#2 bit6` de `drawArea` no prelude do frame

- O refinamento offline desta rodada mostrou que o corte anterior ainda era coarse demais: no `blueMSX`, `S#2 bit6` cai em `onVStart()`, mas o `timingMode` do command engine so muda em `onDrawAreaStart()`.
- O core local foi ajustado para refletir essa separacao:
  - `src/fmsx_local/MSX.c`: `fmsx_vdp_status2_vr()` ganhou uma janela pseudo-top-border low no fim do frame anterior
  - `src/fmsx_local/V9938.c`: `GetVdpTimingValue()` passou a usar apenas a faixa visivel local como gate de `drawArea`, em vez de `S#2 bit6`
- Build local validada:
  - `BUILD_BID=202604050035-issue238-status2-vstart-drawarea`
  - `BUILD_ID=F5E4`
  - `BUILD_HASH=cc918b4-a87d0873ee713b999432fc518fc578ba3776f754`

## Atualizacao incremental de 05/04/2026 - alinhar `S#2 bit1` ao `VStart` visto pelo BIOS

- A leitura do helper BIOS `363B` mostrou que o gargalo residual nao depende so de `S#2 bit6`: ele tambem espera a paridade nova em `S#2 bit1`.
- O `blueMSX` troca `bit1` em `onDisplay()` antes da janela de `VStart`; o core local ainda deixava essa troca para `ScanLine == 0`, fora de fase com a pseudo-top-border low introduzida no corte anterior.
- Ajuste local aplicado:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_status2_live()` agora expõe `bit1` invertido apenas na janela pseudo-top-border
- Build local validada:
  - `BUILD_BID=202604050115-issue238-status2-bit1-vstart`
  - `BUILD_ID=390D`
  - `BUILD_HASH=cc918b4-0c702f3c57bfd15b8fe4fce6582ddeb8dd4f11a0`

## Atualizacao incremental de 05/04/2026 - estreitar `VStart` para a janela real de 4 scanlines

- O `blueMSX` mostra que o low de `S#2 bit6` no prelude nao cobre toda a borda superior: ele dura so `4` scanlines apos `VStart`.
- O core local foi apertado para essa janela real:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_previsible_lines()` agora retorna `4`
  - o mesmo recorte passa a reger `fmsx_vdp_status2_vr()` e a inversao live de `bit1`
- Build local validada:
  - `BUILD_BID=202604050145-issue238-status2-vstart-4lines`
  - `BUILD_ID=2155`
  - `BUILD_HASH=cc918b4-753852f58a16c9ad346647f0c8b09f5593346817`

## Atualizacao incremental de 05/04/2026 - `VStart` pseudo-local reduzido a 1 linha e boost do logo ampliado para o prelude real

- O passo offline seguinte refinou dois pontos da cadencia BIOS-side, ambos mais proximos do `blueMSX`.
- Em `src/fmsx_local/MSX.c`:
  - `fmsx_vdp_previsible_lines()` foi reduzido de `4` para `1`
  - motivo: os `4 * HPERIOD` do `blueMSX` contam desde `VStart`, mas a parte **pre-visível** dessa janela é apenas o fim da scanline imediatamente anterior à área visível; o restante já cai dentro do começo do `drawArea`, que o core local já representa
  - isso evita alongar artificialmente os waits BIOS `10D6` / `363B`
- Em `src/fmsx_local/V9938.c`:
  - `fmsx_msx2p_bootlogo_bios_timing_window()` deixou de olhar só para os wrappers `2BE4/2E3E/3040/3299`
  - o recorte agora inclui também o prelude real do logo em `0x2A0F..0x2C59` e o alias `0x7A0F..0x7C59`, coerente com a UART já capturada (`7A71/7BB2`)
  - isso corrige o escopo do boost local do logo para que ele cubra o ponto em que os primeiros comandos realmente nascem
- Build local validada:
  - `BUILD_BID=202604051028-cc918b4`
  - `BUILD_ID=899C`
  - `BUILD_HASH=cc918b4-098aa1e47b954d15e1eb0a07dd85d989ad5def45`

## Atualizacao incremental de 05/04/2026 - telemetria expandida para o logo inteiro

- A UART da `899C` continuou mostrando o mesmo contrato da janela inicial do logo:
  - `R9=00`
  - `R25=03`
  - `R26/R27` com primeiro write visivel via `0x99 @ PC 7BB2`
  - loop regular posterior via `0x9B @ PC 7A71/7A73`
- Como o boot ainda vai ate `F:004500`, o recorte de `96` frames ficou curto demais para explicar a cadencia total ate o BASIC.
- Ajuste local aplicado:
  - `src/fmsx_host_stubs.c`
  - manutencao de `BL238I`, `BL238R` e `BL238S`
  - adicao de:
    - `BL238P` a cada `256` frames do logo
    - `BL238E` ao sair do logo
  - esses resumos passam a acumular tambem `S#2`, `S#7` e leituras totais da `0x99`
- Build local validada:
  - `BUILD_BID=202604051059-cc918b4`
  - `BUILD_ID=6BDA`
  - `BUILD_HASH=cc918b4-adc26143e8312c896d9059b7200f36af044ccfb1`

## Atualizacao incremental de 05/04/2026 - janela pseudo-`VStart` limitada a HBlank da ultima linha

- A comparacao offline entre `blueMSX`, UART do logo inteiro e disassembly fechou um desvio fino no contrato de `S#2`:
  - a documentacao local ja tratava o `VStart` pseudo como "cauda da ultima scanline";
  - a implementacao ainda projetava essa janela sobre a linha inteira.
- Isso podia alongar os waits BIOS-side fora da janela visivel:
  - `0x10D6`: espera `S#2 bit6` fazer `low -> high`
  - `0x363B`: espera `S#2 bit6` fazer `high -> low` e `bit1` do novo frame
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_previsible_window_active()` agora so entra quando a ultima scanline ja esta na faixa de HBlank
  - `fmsx_vdp_status2_vr()` e a exposicao live de `bit1` continuam ancoradas nessa mesma janela, sem alargar o prelude para a linha inteira
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051116-cc918b4`
  - `BUILD_ID=AA06`
  - `BUILD_HASH=cc918b4-31589d42ff0c10522c2f73c7059498e9382f4260`
  - artefato: `artifacts/kernel8-issue238.img`

## Atualizacao incremental de 05/04/2026 - threshold pseudo-`VStart` alinhado a `leftBorder-10`

- O refinamento seguinte do `S#2` saiu da heuristica de HBlank inteira e passou a seguir o threshold real do `blueMSX`.
- Referencia usada:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `readStatus()` considera `S#2 bit6 low` dentro da janela iniciada em `leftBorder - 10`
  - no modelo local isso equivale a projetar apenas os ultimos `40` ticks da ultima linha do frame anterior
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_previsible_window_active()` agora abre so nesses `40` ticks finais
  - `bit6` e a inversao live de `bit1` passam a refletir essa janela curta
- Efeito esperado:
  - helpers BIOS `10D6` e `363B` deixam de observar `VStart` cedo demais
  - a cadencia do prelude fica mais proxima do contrato temporal do `blueMSX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051124-cc918b4`
  - `BUILD_HASH=cc918b4-63e76c3640998f4f26cbeeb883f77321caa9cfb1`
  - artefato: `artifacts/kernel8-issue238.img`

## Atualizacao incremental de 05/04/2026 - `S#2` helper trace corrigido pela pilha Z80

- A UART do logo inteiro continuou vindo com:
  - `S2:999`
  - `P99:999`
  - `H2BE:0`
  - `HOTH:999`
- O problema deixou de ser semantico do logo e passou a ser do proprio trace: a classificacao anterior usava `CPU.PC` no momento do `IN A,(99h)`, mas a ROM faz esses reads dentro do helper comum `2BEF`.
- O disassembly fecha os retornos corretos do `CALL 2BEF`:
  - `2BE4 -> 2BE9`
  - `10D6 -> 10DB`
  - `10DF -> 10E4`
  - `363B -> 3640`
  - `3644 -> 3649`
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - ao ler `S#2` dentro da faixa `2BEF..2C02`, o core agora consulta `CPU.SP` e recupera o endereco de retorno do chamador real antes de classificar o helper
- Efeito esperado:
  - separar na proxima UART os loops de `2BE4` dos waits `10D6/363B`
  - destravar a proxima decisao de timing da `#238` com base no helper realmente quente
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051330-cc918b4`
  - `BUILD_HASH=cc918b4-84d015d9b31a90232469eb291a02cbea25e0f208`
  - artefato: `artifacts/kernel8-issue238.img`

## Atualizacao incremental de 05/04/2026 - histograma dos callers quentes de `S#2`

- O round seguinte da UART mostrou que a correção stack-based funcionou, mas ainda não era suficiente para decisão funcional:
  - `H2BE` saiu de `0` para `2`
  - `HOTH` continuou em `999`
- Isso prova que `2BE4` existe no logo, mas não domina o boot inteiro; o bucket `OTHER` ainda mistura vários callers diretos de `2BEF`.
- Correção local aplicada:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_host_stubs.c`
  - o core agora contabiliza os callers reais de `S#2` em até `16` buckets
  - a UART do logo passa a imprimir os `4` PCs mais frequentes (`C0..C3`) nos resumos `BL238S/BL238P/BL238E`
- Efeito esperado:
  - identificar exatamente quais PCs ainda dominam o polling de `S#2`
  - decidir o próximo corte da `#238` pelo caller real, e não por inferência sobre `HOTH`
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051405-cc918b4`
  - `BUILD_HASH=cc918b4-f5f681f2f373d96007cb9902ed4febfd5cd0ac69`
  - artefato: `artifacts/kernel8-issue238.img`

## Atualizacao incremental de 05/04/2026 - `S#2` passa a expor PC cheio e bordas de bits

- O histograma `C0..C3` da rodada anterior deixou um problema claro da telemetria:
  - `3BC8` apareceu como caller quente, mas cai em tabela/string do `MSX2PEXT`
  - isso mostra que a classificacao anterior ainda colapsava paginas/aliases por `& 0x3FFF`
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
    - callers de `S#2` agora preservam o PC completo
    - a normalizacao para offsets de ROM ficou restrita à classificacao dos helpers conhecidos
  - `src/fmsx_host_stubs.c`
    - o `BL238` ganhou:
      - `B0/B1/B6` para leituras com `bit0/bit1/bit6 = 1`
      - `E0/E1/E6` para bordas `rise/fall` desses bits
- Leitura pratica:
  - a proxima UART vai dizer diretamente se o tempo do logo esta queimando em `CE`, em `parity` ou em `VStart`
  - isso reduz a dependencia de classificar callers por PC antes do proximo corte de timing
- Validação local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - `BUILD_BID=202604051525-issue238-s2-full-pc`
  - `BUILD_ID=40B5`
  - `BUILD_BID=202604051610-issue238-s2-bit-edge-counters`
  - `BUILD_ID=78AE`
  - `BUILD_HASH=cc918b4-b1cd6286ec85af28988de713a89d5a4dbdb46e4e`
  - artefato: `artifacts/kernel8-issue238.img`

## Atualizacao incremental de 05/04/2026 - contadores de callers de `S#2` ficam monotônicos

- A rodada offline seguinte fechou um bug da propria telemetria do logo:
  - `C0..C3` ainda podiam apontar para PCs impossiveis (`3A8D`, `3A93`, `3BC8`)
  - `3BC8` cai em tabela/string do `MSX2PEXT`, entao o histograma estava contaminado
- Causa:
  - `FmsxVDPS2CallerCount[]` usava buckets decadentes/reciclados
  - o `BL238` consumia esses valores por delta contra um baseline do inicio do logo
  - isso permitia underflow e callers falsos "quentes"
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
    - callers de `S#2` passaram a ser monotônicos
    - overflow separado em `FmsxVDPS2CallerOverflowCount`
    - reads diretos de `0x99` recuperam o endereco real da instrucao quando os bytes anteriores sao `DB 99`
    - o caller dinamico `2276 -> 2279` saiu de `OTHER` e ganhou bucket proprio
  - `src/fmsx_host_stubs.c`
    - o `BL238` agora imprime `CO` (overflow) e `H227`
- Efeito esperado:
  - a proxima UART deve separar corretamente `2BE4`, `2279`, `10D6/10DF`, `363B/3644` e o overflow residual
  - isso destrava a proxima comparacao semantica com o `blueMSX` no hot path real de `S#2`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051720-issue238-s2-monotonic-callers` (OK)
  - `BUILD_ID=2449`
  - `BUILD_HASH=cc918b4-3f66e91a1b1130856a1aa657931aca8e486a3182`
  - artefato: `artifacts/kernel8-issue238.img`

## Atualizacao incremental de 05/04/2026 - trace de `0x99/0x9B` aponta para o opcode real

- A rodada seguinte apertou a observabilidade do prelude do logo:
  - os `PC26/27` e `LastPort99PC` ainda estavam saindo como `PC` pos-instrucao
  - isso empurrava a leitura offline para enderecos errados e embaralhava a comparacao com o `blueMSX`
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
    - writes em `0x99/0x9B` agora recuperam o endereco real do opcode quando os bytes anteriores sao `D3 99` / `D3 9B`
    - reads de `0x99` agora recuperam o opcode real quando os bytes anteriores sao `DB 99`
- Efeito esperado:
  - a proxima UART deve trazer `PC26/27` e `LastPort99PC` alinhados ao site real do `OUT/IN`
  - isso destrava a comparacao offline do produtor do logo contra o `blueMSX` sem depender de offsets pos-instrucao
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051805-issue238-s2-pc-normalized` (OK)
  - `BUILD_ID=161D`
  - `BUILD_HASH=cc918b4-24313ed7260ecb1f1ee345c41bca4bc8bdc96c42`
  - artefato: `artifacts/kernel8-issue238.img`

## Atualizacao incremental de 05/04/2026 - alias `7Axx -> 2Axx` retirado do caminho ativo

- A rodada offline seguinte fechou um problema do proprio modelo de leitura da issue:
  - o alias especial `7Axx/7Bxx -> 2Axx/2Bxx` ficou especulativo demais para continuar orientando a trilha
  - os logs continuam fechando o hot path do logo em `R9=00`, `R25=03`, `R26/R27` e `S#2/0x99`, mas o alias `+0x5000` misturava caller bruto com interpretacao offline
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_normalize_s2_caller_pc()` voltou ao modelo conservador
    - a normalizacao fica restrita ao caso linear `0x4000..0x7FFF -> -0x4000`, usado apenas para buckets conhecidos
  - `src/fmsx_host_stubs.c`
    - `BL238I/R/S/E` passam a preservar `PC` bruto como fonte de verdade
    - os `PCs` de registradores VDP agora saem tambem com `L:` (offset linear simples)
    - a nova linha `BL238C` imprime os `3` callers quentes de `S#2` com caller bruto, caller linear simples e os `4` bytes reais do endereco
- Efeito esperado:
  - a proxima UART passa a responder se `7Axx/7Bxx` vem de ROM linear, worker copiado ou outro bloco de runtime
  - isso evita abrir mais um corte funcional de `S#2` em cima de um alias nao provado
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051930-issue238-raw-pc-caller-bytes` (OK)
  - `BUILD_ID=FB98`
  - `BUILD_HASH=cc918b4-94e63358c8cf618cd7cf1905079b8d04eedcc577`
  - artefato: `artifacts/kernel8-issue238.img`

## Atualizacao incremental de 05/04/2026 - `status0 bit5` live por scanline

- A rodada offline seguinte fechou a melhor hipotese atual para o tempo excessivo ate o BASIC:
  - `7A48` espera `status0 bit5` em `7A66/7A68` antes de cada par de writes indiretas em `R26/R27`
  - o core local ainda materializava `bit5` quase todo via `CheckSprites()` em `ScanLine==192`
  - o `blueMSX` atualiza essa colisao por scanline em `SpriteLine.h`
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - cache de colisao live por `frame + scanline`
  - `status0 bit5` passa a ser materializado no read path de `0x99` (`R15=0`) quando a linha corrente ja apresenta colisao
  - a materializacao fica limitada a uma vez por linha
  - a leitura de `status0` passa a limpar `bit7/6/5` (`&= 0x1F`), alinhando o latch ao `blueMSX`
- Efeito esperado:
  - o loop `7A66/7A68` deixa de depender de uma colisao que surgia essencialmente uma vez por frame
  - a proxima rodada em hardware deve dizer se o logo sai finalmente do ritmo de ~1 passo por frame
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051935-issue238-status0-live-readclear` (OK)
  - `BUILD_ID=7A50`
  - `BUILD_HASH=cc918b4-4beab8fa3ba4f8d9227da7aef57147335020167d`
  - artefato: `artifacts/kernel8-issue238.img`
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
# Atualizacao incremental de 05/04/2026 - decoder full-line de `SCREEN 6/7` corrigido

- O corte mais recente da `#238` encontrou um bug estrutural no renderer wide:
  - os paths full-line de `SCREEN 6` e `SCREEN 7` estavam consumindo o buffer wide de sprites com os decoders invertidos
  - `RefreshLine6()` usava o decoder de `SCREEN 7`
  - `RefreshLine7()` usava o decoder de `SCREEN 6`
  - os paths parciais ja estavam corretos, o que ajuda a explicar porque o defeito visual persistia sem quebrar o split horizontal
- Correcao local:
  - `src/fmsx_local/Wide.h`
    - `RefreshLine6()` passa a usar `V9958Screen6WideSpritePixel()`
    - `RefreshLine7()` passa a usar `V9958Screen7WideSpritePixel()`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052130-issue238-screen67-fullpath-decoder-fix` (OK)
  - `BUILD_ID=984C`
  - artefato `sha1 290494cc6a826372f9032d4e5efe925f17e219cb`

# Atualizacao incremental de 05/04/2026 - helper wide passa a empacotar a cor como o `blueMSX`

- A rodada seguinte da `#238` encontrou um desvio mais forte na producao do buffer wide:
  - o helper local ja usava tabela de cor por linha e `early clock`
  - mas ainda escrevia o `color_attr` bruto no buffer
  - no `blueMSX`, `colorSpritesLine()` empacota esse valor de forma diferente em `SCREEN 6` e `SCREEN 7`
- Correcao local:
  - `src/fmsx_host_stubs.c`
    - `fmsx_latch_color_sprites_line_wide()` passa a usar o packing do `blueMSX`
    - `SCREEN 6`: dois subpixels de 3 bits por byte
    - `SCREEN 7`: `(color << 1) | solidColor0`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052205-issue238-wide-sprite-color-pack` (OK)
  - `BUILD_ID=CC27`
  - artefato `sha1 f63aeb58399c56fe15c206976038b3a574ec7991`

# Atualizacao incremental de 05/04/2026 - partial renderer wide volta a 32 celulas como no `blueMSX`

- A rodada seguinte fechou um desvio de granularidade no `SCREEN 6/7` parcial:
  - o `blueMSX` trabalha o partial renderer wide em `32` celulas ativas por linha
  - o core local ainda projetava esse caminho em `64` steps
- Correcao local:
  - `src/fmsx_local/MSX.c`
    - `end_column` de `SCREEN 6/7` passa para `0..32`
    - `sprite_break` volta para `24`
  - `src/fmsx_local/Wide.h`
    - `RefreshLine6WideRange()` / `RefreshLine7WideRange()` passam a consumir `X0/X1` em `0..32`
    - cada step equivale a `16` pixels fisicos (`<<4`)
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052245-issue238-screen67-partial-32cells` (OK)
  - `BUILD_ID=7AA1`
  - artefato `sha1 c3325891d72049092b100562e0522e161e0b9bbc`

# Atualizacao incremental de 05/04/2026 - `readStatus()` tambem avanca o partial wide

- A comparacao mais recente contra o `blueMSX` encontrou um desvio mais forte que as hipoteses anteriores de `32/64` e snapshot:
  - em `blueMSX`, `readStatus()` executa `sync(vdp, now)`
  - esse `sync()` nao avanca apenas `CE/TR`; ele tambem move o partial refresh da linha atual
  - no core local, `SCREEN 6/7` ainda so avancavam o partial em writes de VDP e no HBlank
  - como o boot logo passa a maior parte do tempo em polling de `0x99`, o consumo visual podia ficar atrasado mesmo com `R26/R27` corretos
- Corte local desta rodada:
  - `src/fmsx_local/MSX.c`
    - novo helper `fmsx_vdp_sync_status_read_visual()`
    - o case `0x99` agora o chama imediatamente apos `fmsx_vdp_sync_before_status_read()`
    - em `SCREEN 6/7`, o helper avanca `fmsx_vdp_render_screen67_partial()` pelo `line_offset` atual tambem nos reads de status
- Alvo semantico:
  - aproximar o contrato de `readStatus() + sync()` ao `blueMSX`
  - tirar o partial wide da dependencia exclusiva de writes `0x99/0x9B` e do fechamento de HBlank
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052230-issue238-statusread-partial-sync` (OK)
  - `BUILD_ID=120A`
  - artefato `sha1 34714836c9db9a5a439d4dbf7adf77d8e4254c24`

# Atualizacao incremental de 05/04/2026 - helper wide passa a seguir o envelope de `384` bytes do `blueMSX`

- A rodada mais profunda de diff contra `blueMSX/SpriteLine.h:colorSpritesLine()` mostrou que o helper wide local ainda divergira em dois pontos estruturais:
  - margem/buffer de linha simplificados para `320` bytes, em vez do envelope real de `384`
  - estado de `CC` (`ccColorMask / ccColorCheckMask`) sem persistencia por frame
- Corte local:
  - `src/fmsx_host_stubs.c`
    - helper wide refeito para usar:
      - buffer de linha e colisao em `384`
      - gate de colisao equivalente ao `colChckBuf` do `blueMSX`
      - `CC` persistente por frame
      - composicao `CC/OR` e colisao mais literais
  - `src/fmsx_local/MSX.c`
    - `FmsxVDPLineColorSpritesLatched/Render` ampliados para `384`
  - `src/fmsx_local/Wide.h`
    - `ZBuf` temporario wide ampliado para `384`
- Motivacao tecnica:
  - o defeito residual do logo deixou de apontar para `R#9 interlace` ou `PAL/NTSC`
  - a maior divergencia contra o `blueMSX` passou a ser o proprio envelope da linha de sprites wide e a persistencia de `CC`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052330-issue238-wide-sprite-384cc` (OK)
  - artefato `sha1 de34715a3a517b1edbb496bb27d16fed951f1f8a`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 06/04/2026 - a hipotese dominante passa a ser tearing do presenter do host

- A rodada de video mais recente deixou de apontar para novos gaps em `R#9`/`PAL`/`NTSC` e passou a sustentar uma hipotese estrutural diferente:
  - em pares consecutivos de frames do logo, a diferenca visual se concentra acima de uma linha horizontal e praticamente zera abaixo dela
  - isso e mais compativel com tearing do presenter do host do que com erro novo no producer do VDP
- A auditoria do stack local confirmou o desvio:
  - `src/kernel.cpp:BlitFmsxFrame()` ainda escrevia o viewport diretamente no framebuffer visivel (`GetBuffer()`) linha a linha
  - `third_party/circle/lib/screen.cpp` inicializa `CScreenDevice` sem double buffering
  - o Circle ja oferece o caminho sincronizado de apresentacao por `WaitForVerticalSync()+SetArea()`
- Corte local aplicado:
  - `src/kernel.h/.cpp`
    - novo staging buffer `m_FmsxPresentBuffer`
    - novo helper `EnsureFmsxPresentBuffer()`
    - `BlitFmsxFrame()` passa a escalar para esse staging buffer e apresentar o viewport por `WaitForVerticalSync()+SetArea()` no path `RGB565`
    - o caminho antigo de escrita direta no framebuffer visivel fica apenas como fallback se a alocacao do staging buffer falhar
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604060130-issue238-vsync-presenter-staging` (OK)
  - `BUILD_ID=46FB`
  - artefato `sha1 9e1d3c4058f9797f7e03579181852de82fa7e381`

# Atualizacao incremental de 06/04/2026 - `status0` e handoff da linha de sprites wide voltam ao contrato do `blueMSX`

- A varredura mais funda contra o `blueMSX` abriu um desvio semantico mais forte do que os ultimos ajustes de renderer:
  - o core local ainda reintroduzia `status0 bit5` de forma live durante `IN (99h)`, enquanto o `blueMSX` retorna apenas o latch cru de `status0` e limpa esse latch em seguida
  - o pipeline local de sprites wide em `SCREEN 6/7` quebrava o handoff preparado-em-`Y` / consumido-em-`Y+1`, porque limpava `FmsxVDPLineColorSpritesValid` antes da copia para o buffer de render da scanline seguinte
- Corte local aplicado:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status0_live()` volta a devolver apenas `VDPStatus[0]`
    - o partial wide deixa de recapturar a linha futura de sprites no `rightBorder`
    - o inicio da scanline restaura a copia `Latched -> Render` antes do clear do flag de validade, repondo o handoff correto da linha preparada
- Motivacao tecnica:
  - alinhar o read/clear de `status0` ao `blueMSX`
  - restaurar o pipeline `Y -> Y+1` que o `line512` do `blueMSX` usa para sprites, em vez de misturar recaptura e consumo no mesmo momento
  - reduzir um dos ultimos desvios estruturais plausiveis para o defeito visual residual do logo, agora que o tempo total do boot ja esta praticamente correto
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052355-issue238-status0-latched-sprite-handoff` (OK)
  - `BUILD_ID=B2B2`
  - artefato `sha1 a16530f4c81e5a7007aaaadaffc058aa138817b6`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 05/04/2026 - experimento `Z80 Turbo [SLO]`

- A linha da `#238` ganhou um quarto perfil de turbo para teste controlado do boot logo:
  - `NORM=100`
  - `PAN=150`
  - `MAX=200`
  - `SLO=50`
- O runtime e o menu agora aceitam `z80_turbo=3`, e o core local deixou de clamp-ar turbo em `>=100%`.
- Isso permite A/B do boot logo abaixo da base sem depender do turbo Panasonic virtual.
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052245-issue238-turbo-slo-profile` (OK)
  - `BUILD_ID=93BC`
  - artefato `sha1 eda31e56a0a17a3b58295b3f7932291f96c1ae6a`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 06/04/2026 - A/B local do partial wide volta para `0..32`

- Como experimento dirigido por um sintoma em `ZANAC EX` (placar aparentemente sobre-escrito em uma scanline quando o jogo troca de screen entre linhas), a `#238` abriu um A/B isolado do contrato do partial renderer wide.
- Corte local aplicado:
  - `src/fmsx_local/MSX.c`
    - `FmsxVDPLineOffset67` volta a `0`
    - `fmsx_vdp_screen67_line_offset_now()` volta a `0..32`
    - `fmsx_vdp_render_screen67_partial()` deixa de usar o sentinela `33`
    - o fechamento da scanline em HBlank volta a chamar o partial com `32`
- Motivacao tecnica:
  - medir se o contrato `-1..33` era parte do defeito residual fora do boot logo, especialmente em software que alterna screen/registers entre scanlines
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604061000-issue238-screen67-back-to-32` (OK)
  - `BUILD_ID=CA87`
  - artefato `sha1 f25f019fd7a4b314275b86fcc018b43b9f39114b`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 06/04/2026 - limpeza final e estado estavel para review

- O A/B `0..32` aberto por causa de `ZANAC EX` nao moveu o sintoma em hardware e foi descartado.
- A issue volta ao estado estavel da build `B2B2` para o boot logo do `MSX2+`, preservando o contrato `-1..33` do partial `SCREEN 6/7`.
- Como preparacao para review:
  - `BL238*`/`BL238W` foram silenciados
  - o perfil experimental `Z80 Turbo [SLO]` foi removido do runtime/menu
  - a documentacao operacional volta a expor apenas `OFF/PAN/MAX`
- Corte local aplicado:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_host_stubs.c`
  - `src/fmsx_runtime.c`
  - `src/kernel.cpp`
  - `src/tools/menu/combo_menu.cpp`
  - `src/tools/menu/combo_menu_items.cpp`
  - `docs/debug-layer.md`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604061030-issue238-clean-pr` (OK)
  - `BUILD_ID=1911`
  - artefato `sha1 0b9ac33eedb8c6e0f3b5a6c34eeca8d34879b13a`
- Estado operacional:
  - pronto para `git commit`
  - pronto para `git push`
# Atualizacao incremental de 06/04/2026 - UX de Save/Load + viewport pixel-perfect

- Antes do fechamento da `#238`, a rodada recebeu dois ajustes menores de UX:
  - `Save State` / `Load State` pelo menu `F12` agora fecham o menu imediatamente e executam no tick seguinte do loop principal
  - o viewport `Standard` do emulador deixa de usar fit proporcional e passa a usar escalas inteiras reais (`pixel-perfect`)
- Escopo tecnico:
  - `src/kernel.cpp`
  - `src/tools/menu/combo_menu.cpp`
  - `src/tools/menu/combo_menu_items.cpp`
  - `docs/debug-layer.md`
- Semantica nova:
  - `1x` = tamanho nativo do frame
  - `2x..6x` = multiplos inteiros exatos
  - `Widescreen [ON]` continua stretch/fit por design
- Build local validada:
  - `BUILD_BID=202604061130-issue238-menu-state-pixelperfect`
  - artefato `artifacts/kernel8-issue238.img`
- Estado de fluxo:
  - sem `commit`
  - sem `push`

# Atualizacao incremental de 07/04/2026 - presenter `HIRES` estava reinterpretando um buffer ja pretecido

- A rodada local atual encontrou um desvio estrutural no presenter do host:
  - em `HIRES_PROGRESSIVE`, o backend ja entrega um buffer fisico pretecido/intercalado por frame
  - o presenter em `src/kernel.cpp` ainda fazia uma segunda tecida local, misturando pares de linhas e reduzindo a altura logica
- Efeitos observados desse desvio:
  - perda do efeito visual esperado em `HIRES`
  - mailbox `HIRES` verticalmente esticada
  - custo extra no presenter, agravando o FPS em `HIRES`
- Corte local aplicado:
  - `src/kernel.cpp`
    - remove o mix vertical de pares de linhas do blit `HIRES`
    - volta a usar `src_height` fisico no mapeamento vertical do presenter
    - `HIRES` fora do debug volta a seguir a mailbox `4:3` normal
    - `HIRES` com debug volta a usar `src_width/src_height` fisicos
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604071700-issue238-hires-no-second-weave` (OK)
  - `BUILD_ID=1F9B`
  - artefato `sha1 dda9b09e6506fb4c6c6d756335ecfd70ba2ffde8`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - regressao do `DEBUG` em `HIRES` foi separada do ajuste estrutural

- O reteste em hardware do corte `1F9B` mostrou que o ajuste estrutural do presenter estava certo, mas abriu uma regressao de viewport no `DEBUG`:
  - `HIRES` ficou verticalmente esticado
  - o FPS medio caiu para ~29.4
- O desvio ficou no box da mailbox do `DEBUG`, nao no blit principal:
  - `src/kernel.cpp` passou a usar `src_width/src_height` fisicos para calcular a mailbox compacta de `HIRES`
  - isso deixou o frame alto demais no overlay e derrubou a eficiencia do presenter
- Corte local aplicado:
  - `src/kernel.cpp`
    - `DEBUG` volta a calcular o box de `HIRES` por `logical_width/logical_height`
    - o blit continua usando o buffer fisico completo, sem reintroduzir tecida dupla
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081130-issue238-hires-debug-logical-box` (OK)
  - `BUILD_ID=69E2`
  - artefato `sha1 47d574d199f84c7c87622570d18b69e8fbe3149c`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - rollback do ramo experimental de presenter `HIRES`

- O ramo experimental recente de presenter `HIRES` foi descartado como linha ativa.
- Motivo:
  - o efeito visual/interlace nao melhorou de forma sustentada
  - o `HIRES` ficou verticalmente esticado em campo
  - o FPS geral caiu quando a mailbox preenchia a tela
- Corte local aplicado:
  - `src/kernel.cpp`
    - rollback do path ativo para o contrato estavel anterior de viewport/blit
    - `EmulatorBackendVideoPresentation` deixa de participar do path ativo do presenter
- Objetivo:
  - restaurar baseline estavel antes de continuar a investigacao de `HIRES`
  - evitar novas rodadas de hardware em cima de um presenter sabidamente regressivo
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081215-issue238-presenter-rollback-stable` (OK)
  - `BUILD_ID=4742`
  - artefato `sha1 c6f9c244c5cf5d4546b3313eecf626cc3523ace3`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - `DEBUG [MAX/MIN/OFF]`

- O overlay de debug passou a operar em tres estados:
  - `MAX`: overlay completo
  - `MIN`: overlay curto de 3 linhas
  - `OFF`: desligado
- `F11` e `Settings -> Debugger` agora ciclam `MAX -> MIN -> OFF -> MAX`.
- O modo `MIN` ficou limitado a:
  - `TXTDBG BUILD:XXXX CPU FREQ:<MHz>`
  - `DFS:<NTSC/PAL> FPS:<fps>`
  - `Screen:<scr_mode> Mode:<Normal/Hires/Interlaced>`
- Persistencia:
  - `msxbarepi.cfg` grava `debugger=<0|1|2>`
  - compatibilidade mantida para o valor legado `1` como `MAX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081950-issue238-debug-max-min-off` (OK)
  - `BUILD_ID=07FD`
  - `BUILD_HASH=408c7e1-e101539120147063c7d54b9a96861d31cfc6afb9`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - presenter grande migra para framebuffer virtual 2x + page flip local

- A trilha de performance do viewport/mailbox contra o Circle fechou que o proximo ganho relevante nao viria de uma API grafica nova, e sim de usar o framebuffer do Circle do jeito certo:
  - `SetArea()` ja pode usar DMA via `SCREEN_DMA_BURST_LENGTH`
  - `WaitForVerticalSync()` + `SetVirtualOffset()` permitem page flip real
  - o bloqueio do projeto era o `CScreenDevice` do Circle escrever sempre na pagina base, sem pagina traseira utilizavel pelo kernel
- Corte local aplicado:
  - `src/combo_screen_device.h`
  - `src/combo_screen_device.cpp`
  - `src/kernel.h`
  - `src/kernel.cpp`
  - `src/tools/render/gfx_textbox.h`
  - `src/tools/render/gfx_textbox.cpp`
  - `src/Makefile`
- Estrutura nova:
  - `CComboScreenDevice` cria `CBcmFrameBuffer` com `virtual height = 2x`
  - um `CDisplay` local (`CComboBackBufferDisplay`) escreve na pagina traseira
  - `CTerminalDevice` continua sendo usado, mas agora desenhando no back buffer
  - o renderer de textbox passa a diferenciar `draw buffer` e `visible buffer`
- Efeito esperado:
  - viewport do emulador deixa de ser apresentado no meio do blit
  - o flip de pagina passa para o fim do frame, depois de viewport + overlay + menu
  - o path grande (`MAX` / `HIRES` / interlaced) deixa de depender da copia extra do presenter anterior
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-6e9081008e790c99d3d5e348578e383e9b59d6b2`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - correção do handoff front/back page no presenter com page flip

- O primeiro corte do presenter com framebuffer virtual 2x entrou em campo com UART/audio/input vivos, mas sem video.
- O desvio estava no proprio handoff das paginas:
  - depois do `flip`, a nova pagina traseira ficava vazia
  - como o loop continua desenhando `rotor`/overlay a cada tick, a apresentacao passava a alternar para uma pagina sem o frame anterior
- O corte local em `src/combo_screen_device.cpp` corrige isso:
  - `SetVirtualOffset()` usa a altura fisica do framebuffer
  - a nova `draw page` passa a ser inicializada com o conteudo da pagina que acabou de ficar visivel
- Efeito esperado:
  - o presenter deixa de perder o frame anterior entre flips
  - viewport + overlay + menu voltam a operar incrementalmente sem apagar a tela
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-6e9081008e790c99d3d5e348578e383e9b59d6b2`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - correção da geometria zero do terminal no wrapper local

- A telemetria `PRES BOOT/PRES LOOP` mostrou que o presenter ainda nao estava ficando `dirty`, mesmo com o loop vivo.
- A causa nao estava mais no `flip`, e sim na geometria do proprio `CTerminalDevice`:
  - `CComboBackBufferDisplay::GetWidth()/GetHeight()` consultavam `owner->GetWidth()/GetHeight()`
  - durante `CTerminalDevice::Initialize()`, o owner devolvia os valores do proprio terminal ainda nao inicializado (`0x0`)
  - o terminal nascia com largura/altura `0`, invalidando overlay, menu, rotor e qualquer path incremental
- O corte local em `src/combo_screen_device.cpp` corrige esse bootstrap:
  - `GetWidth()/GetHeight()` so usam o terminal quando ele ja reporta valores `>0`
  - antes disso, caem para a geometria fisica do `CBcmFrameBuffer`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-ec1dc9dcde51a05ffca6fd5c949a2192a03cbf8c`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - viewport grande deixa de copiar o frame inteiro a cada flip

- Com o video de volta, a nova telemetria de campo mostrou o custo dominante do presenter com page flip:
  - `1x / Screen 7 / Hires ~= 48fps`
  - `2x / Screen 7 / Hires ~= 40fps`
  - `MAX / Screen 7 / Hires ~= 8fps`
- A causa estava no handoff entre paginas:
  - mesmo depois do `flip`, o wrapper ainda copiava o retangulo dirty inteiro da pagina visivel para a nova pagina traseira
  - em viewport grande isso mantinha um `memcpy` caro por frame
- O corte local em `src/combo_screen_device.h/.cpp` muda o contrato:
  - quando o dirty ocupa >= `25%` da pagina, a copia imediata e pulada
  - a pagina traseira passa a ser re-semeada sob demanda por `EnsureBackPageSeeded()` apenas se aparecer escrita incremental sem novo frame completo
  - viewport pequeno continua sincronizando apenas o retangulo dirty
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-dd6a68c4b83f824f4f8a092ca3e0ea6617f3109f`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - presenter local passa a operar em single-buffer por padrão

- Mesmo depois de reduzir a copia do handoff, a trilha do presenter ainda ficou cara e levantou a suspeita de apresentacao da pagina errada.
- O corte local atual simplifica o wrapper:
  - `m_bPageFlipEnabled=FALSE` por padrao em `src/combo_screen_device.*`
  - `draw page` e `visible page` passam a convergir para a pagina `0`
  - `PresentIfDirty()` deixa de fazer `WaitForVerticalSync()+SetVirtualOffset()` nesse modo e vira apenas o commit/flush do retangulo dirty
  - o suporte a double buffer/page flip continua no codigo, mas inerte
- Objetivo:
  - eliminar o custo e a complexidade do page flip do caminho principal
  - voltar o viewport/mailbox para o contrato mais simples e previsivel
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-565c8c8561d4e9b190b2199417d5baa9afff76cb`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - `Scale [MAX]` fixo e seguro para `HIRES/interlaced`

- Depois de simplificar o presenter para single-buffer, a medicao de campo mostrou o novo limite real do viewport:
  - `1x / Screen 7 / Hires ~= 60fps`
  - `2x / Screen 7 / Hires ~= 60fps`
  - `MAX / Screen 7 / Hires ~= 21.5fps`
- A nova regra local da `#238` deixa `MAX` fixo por resolucao de saida, sem heuristica dinamica:
  - `720p` e `768p`: `Scale [MAX] = 3x`
  - `1080p`: `Scale [MAX] = 4x`
  - fallback abaixo disso: `2x`
  - a caixa continua nascendo da mailbox-base `256x243`
- Objetivo:
  - manter `MAX` dentro do orcamento de `16.67ms`
  - preservar `1x..Nx` exatamente como ja estavam
  - manter um tamanho previsivel por resolucao, mesmo que menor que o preenchimento total da tela
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604081930-issue238-combo-screen-flip` (OK)
  - `BUILD_ID=72A0`
  - `BUILD_HASH=408c7e1-9e79d5a95515d7eefc625e2846793bfc8aa7a981`
- Estado operacional:
  - sem `git commit`
  - sem `git push`
