# Debug Layer (Kernel HDMI Overlay)

Guia operacional da layer de debug do MSXBarePI: como compilar, usar, atalhos e significado de cada linha/label.

Documento canonico para debug HDMI/runtime. O conteudo do antigo guia de template foi consolidado aqui.

## Objetivo
- Fornecer telemetria em tempo real para diagnostico de boot, video, input, audio e I/O de SD.
- Permitir testes A/B de audio (chips e layers) sem recompilar.

## Como compilar
- Regra operacional da fase atual: durante desenvolvimento, usar `DEBUG=1` por padrão; `DEBUG=0` somente quando o usuário solicitar explicitamente.
- Build com debug overlay habilitado:
```bash
make DEBUG=1
```
- Forma simplificada para pacote (tambem habilita debug no kernel):
```bash
DEBUG=1 OWNER="beta@exemplo.com" make package
```
- Build com identificacao de rastreio visivel:
```bash
make DEBUG=1 OWNER="beta@exemplo.com" BUILD_BID="BTID:202603041405-07bf64e-83b0c25b"
```
- Build sem debug overlay:
```bash
make DEBUG=0
```

## Regra de seguranca
- Toda tecla/hotkey de debug so atua quando o kernel foi compilado com `DEBUG=1`.
- Em build sem debug, hotkeys de debug ficam inertes (somente `F12` pausa/menu).

## Teclas de atalho (com debug compilado)
- `F11`: liga/desliga overlay de debug.
- `F12`: pausa/retoma emulacao (menu de pausa).
- `F6`: mute/unmute `Layer 1` (PSG + ruido).
- `F7`: mute/unmute `Layer 2` (FM-PAC).
- `F8`: mute/unmute `Layer 3` (Konami SCC).
- `F9`: liga/desliga suporte `SCC` (feature/cart).
- `F10`: liga/desliga suporte `FM-PAC` (feature/cart).

## Tag de build na tela
- No preset atual de diagnostico MSX2+, a `linha 14` foi reservada para `TM4` (telemetria adicional de boot/VDP/KANJI).
- Com isso, a tag `@Beta: <OWNER>` nao e exibida nesse preset.
- Regra operacional de reporte em cada artefato entregue para teste:
  - Sempre informar no chat `BUILD_HASH` e `INT_BUILD`.
  - `INT_BUILD` e o inteiro de 16 bits exibido em `TXTDBG` no campo `BUILD:%04X`.
  - Esse valor e derivado de `MSXBARE_BUILD_BID` via hash FNV-1a (com fold para 16 bits).

## Baseline de layout e runtime (HDMI)

Objetivo: painel legivel no framebuffer HDMI com MMU/cache ativo, sem depender de UART.

- Overlay compacto no canto superior esquerdo.
- Emulador segue rodando ao fundo.
- Em preset de debug, limitar escala do blit do emulador (ex.: `2x`) para reduzir sobreposicao visual.

Regras validadas em hardware:

- Nao misturar `console_puts()` com painel de debug durante runtime.
- Silenciar console HDMI apos boot do core (`console_set_enabled(0)`).
- Desenhar overlay apos blit do emulador.
- Usar caixa opaca antes do texto (`framebuffer_fill_rect`).
- Texto branco sobre fundo preto (`framebuffer_set_text_colors(0x00FFFFFF, 0x00000000)`).
- Fazer flush de cache apenas na area do painel (`framebuffer_flush_rect`) com throttle.
- Evitar flush global no hot path.
- Preferir getters escalares de debug para evitar copia de structs grandes.

Diretriz visual (overlay e menu):

- Evitar fundo preto em linha inteira quando o objetivo for destacar apenas um rotulo.
- Preferir caixa opaca curta no texto de status (ex.: `PAUSE ||`).
- Em menu, destacar item selecionado/titulo com caixa local e preservar imagem do emulador.
- Usar faixa opaca inteira apenas quando a legibilidade realmente exigir.

## Esqueleto de menu (PAUSE)

- Caixa flutuante preta centralizada sobre box do emulador.
- Titulo: `PAUSE II`.
- Itens iniciais:
  - `Cartridge A`
  - `Cartridge B`
  - `Disk Drive A`
  - `Disk Drive B`
  - `Settings`
- Selecao visual: inversao de cores, faixa com margem lateral, itens centralizados.
- Navegacao: `Up/Down` edge-trigger, sem repeticao por hold.
- Anti-flicker: redesenhar menu apenas em mudanca de estado (mostrar/ocultar, selecao, reposicionamento).

## Menu relacionado
- `Settings -> Debugger`: liga/desliga overlay (quando compilado com debug).
- Itens de audio em `Settings`:
  - `Konami SCC` (ON/OFF)
  - `FM-PAC` (ON/OFF)
  - `Audio Gain` (OFF..100)

## Overlay: linhas e labels
- `TXTDBG`: estado geral (MMU/cache/pause).
  - `BUILD`: hash de 16 bits calculado a partir de `MSXBARE_BUILD_BID` para rastreio visual da build em teste.
  - `OS`: contador com largura fixa `000..999` (modulo 1000) para evitar jitter visual na linha.
- `CI`: contadores de fila/audio/teclado e tentativas de init.
- `EV1`: estatistica de escrita de audio e pico de origem.
- `EV2`: pico/clip/gain/fps e ultimo HID/MSX keycode.
- `JY1`: joystick bridge/mapeado + estado runtime.
- `JY2`: frame/PC/repeticao/ring/pacing.
- `SD1`: telemetria de save/load/carga (SV/C/A/LD/BT).
- `SD2`: mapper/carts/boot model ativos.
- `AC1`: estado de chips/features e mixer:
  - `FM:x/y`: `x`=setting FM, `y`=mask ativa no mixer.
  - `SCC:x/y`: `x`=setting SCC, `y`=mask ativa no mixer.
  - `AG`: Audio Gain UI.
  - `AE`: ganho efetivo aplicado.
  - `M`: mute efetivo por gain zero.
  - `P7`: registrador PSG mixer.
  - `MS`: bitmask master de canais do mixer.
- `AC2`: estado por layer:
  - `L1` + `PSG`: mute layer 1 e atividade de canais PSG.
  - `L2` + `FM`: mute layer 2 e atividade de canais FM.
  - `L3` + `SCC`: mute layer 3 e atividade de canais SCC.
- `TM2`: telemetria VDP/timing útil para MSX2+ (parte 1):
  - `SM`: screen mode atual.
  - `R2`: registrador da nametable/página de display.
  - `R25/R26/R27`: registradores de scroll/máscara.
  - `HS`: valor efetivo de scroll horizontal.
  - `MP`: multipágina real ativa (`R25 bit0` **e** `R2 bit5`).
  - `DP`: página de display (`R2[6:5]`).
  - `I1/F1`: IE1 habilitado (`R0 bit4`) e flag de coincidência ativa (`S#1 bit0`).
- `TM3`: telemetria VDP/timing útil para MSX2+ (parte 2):
  - `C`: comando VDP atual (`R46` high nibble).
  - `CE/TR`: bits de status do command engine (`S#2 bit0` e `S#2 bit7`).
  - `CS/CP`: contadores desde o reset: inícios de comando total (`CS`) e cópia VRAM->VRAM (`CP`, comandos `LMMM/HMMM/YMMM`).
  - `KB:a/b/c/d`: `a`=KANJIBASIC carregado, `b`=mapa em `MemMap[3][1][2..3]` íntegro, `c`=slot ativo da página `4000h` em `3-1`, `d`=já selecionou `3-1` ao menos uma vez desde o reset.
  - `P1:x-y`: seleção ativa da página `4000h` (`PSL[1]-SSL[1]`).
  - `D:e/l`: `e`=setting efetiva (`disk_rom` ligado/desligado), `l`=estado de carga da `DISK.ROM` (`DiskROMLoaded`).
  - `S`: `HScroll512` bruto (bit `R25 bit0`).
- `TM4`: diagnostico de progresso de boot MSX2+:
  - `I1:a/b`: `a`=eventos de coincidencia de linha (`IE1`) gerados, `b`=ack por leitura de `S#1`.
  - `KJ`: `1` quando `KANJI.ROM` esta carregada (`Kanji != NULL`).
  - `KR/KW`: leituras de `D9h` e escritas de endereco em `D8h/D9h`.
  - `R1`: valor atual do registrador VDP `R#1`.
  - `R7`: valor atual do registrador VDP `R#7` (cores FG/BG em modos texto/tile).
  - `SO`: estado de `ScreenON` (`R#1 bit6`).
  - `I0`: habilitacao de interrupcao de VBlank (`R#1 bit5`).
  - `S0`: flag de VBlank em `S#0 bit7`.
- `TM5`: diagnostico de FDC/WD1793 (especialmente para `Disk I/O error`):
  - `ST`: `FDC.R[0]` (status WD1793).
  - `TR`: `FDC.R[1]` (track register).
  - `SC`: `FDC.R[2]` (sector register).
  - `DR/SD`: drive e side ativos.
  - `IQ`: latch de `IRQ/DRQ` (`FDC.IRQ`).
  - `WT`: watchdog interno (`FDC.Wait`).

## Arquitetura (modular)
- Renderer da debug layer desacoplado em objeto plugavel:
  - `src/combo_debug_overlay.h`
  - `src/combo_debug_overlay.cpp`
- O kernel coleta metricas e entrega um snapshot (`TComboDebugOverlayData`) ao renderer.
- Escrita de texto eh injetada por callback (`SetWriter`), sem acoplamento direto do renderer ao `CScreenDevice`.

## Boas praticas de uso
- Para testar audio por chip:
  1. habilite overlay (`F11`);
  2. observe `AC1/AC2`;
  3. use `F6/F7/F8/F9/F10` para isolamento por camada/feature.
- Em investigacoes de SD/boot, priorize `SD1/SD2` e correlacione com logs do kernel.

## Referencias
- Implementacao principal: `src/combo_debug_overlay.cpp`
- Integracao de runtime/menu: `src/kernel.cpp`
- Render helper/framebuffer: `src/framebuffer.c`
