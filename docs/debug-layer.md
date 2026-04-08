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
- Em `DEBUG=0`, o kernel nao deve emitir log UART:
  - `CSerialDevice` nao e inicializado para logging;
  - `CLogger` aponta para `CNullDevice`;
  - traces UART especificos de debug ficam desarmados.

## Regra de seguranca
- Toda tecla/hotkey de debug so atua quando o kernel foi compilado com `DEBUG=1`.
- Em build sem debug, hotkeys de debug ficam inertes (somente `F12` pausa/menu).

## Teclas de atalho (com debug compilado)
- `F11`: alterna o overlay de debug em ciclo `MAX -> MIN -> OFF -> MAX`.
  - `MAX`: overlay completo atual.
  - `MIN`: overlay compacto de 3 linhas.
  - `OFF`: overlay desligado.
- `F12`: pausa/retoma emulacao (menu de pausa).
- `F6`: mute/unmute `Layer 1` (PSG + ruido).
- `F7`: mute/unmute `Layer 2` (FM-PAC).
- `F8`: mute/unmute `Layer 3` (Konami SCC+).
- `F10`: mantém o toggle de `UART Log` reservado para futuras fases de debug, mas a fase atual nao emite mais telemetria periódica de performance.
  - O baseline atual da UART fica reduzido aos marcadores de boot (`BT0..BT12`) e a eventos pontuais/criticos.
- `F9`: sem uso na build atual.

## Tag de build na tela
- No preset atual de diagnostico MSX2+, o painel tenta ficar contido entre as `linhas 1..15`.
- Neste layout compacto:
  - `TXTDBG` ocupa a `linha 1` com largura horizontal completa;
  - `AUD1`, `SYS` e `AC1` fecham o bloco de estado geral nas `linhas 2..4`;
  - a telemetria `TM` é agrupada por afinidade nas `linhas 5..9`, combinando pares que couberem na mesma linha;
  - `TM6D` agora fecha a `linha 9`, junto de `TM6C`.
- Com isso, a tag `@Beta: <OWNER>` nao e exibida nesse preset.
- Regra operacional de reporte em cada artefato entregue para teste:
  - Sempre informar no chat `BUILD_HASH` e `INT_BUILD`.
  - `INT_BUILD` e o inteiro de 16 bits exibido em `TXTDBG` no campo `BUILD:%04X`.
  - Esse valor e derivado de `MSXBARE_BUILD_BID` via hash FNV-1a (com fold para 16 bits).

## Baseline de layout e runtime (HDMI)

Objetivo: painel legivel no framebuffer HDMI com MMU/cache ativo, sem depender de UART.

- Overlay compacto no canto superior esquerdo.
- O painel pode usar a largura horizontal inteira da linha quando isso ajudar a ficar contido até a `linha 15`.
- Emulador segue rodando ao fundo.
- O item `Scale` agora vive no menu `Debug`, nao mais em `Settings`.
- Com `Debugger = OFF`, o viewport ignora a escala manual e usa sempre o maximo fixo permitido pela resolucao atual:
  - `720p/768p = 3x`
  - `1080p = 4x`
- Com `Debugger = MIN/MAX`, o viewport volta a usar o fator manual de `Scale`.
- `Standard`: usa `logical_src_w x normalized_src_h` multiplicado pelo fator de `Scale`.
- `HIRES` (`>=512` colunas): usa largura logica normal da mailbox e o mesmo fator de `Scale`.
- `Widescreen [ON]`: mantem `16:9` apenas para modos nao-`HIRES`, mas continua respeitando o fator manual de `Scale`.

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
- `Save State` / `Load State`:
  - ao acionar pelo menu `F12`, a acao e enfileirada, o menu fecha imediatamente e o save/load roda no tick seguinte do loop principal
- Ao ativar ou desativar o overlay de debug, o kernel agora limpa a tela inteira antes da nova apresentacao:
  - framebuffer visivel
  - staging/present buffer
- Selecao visual: inversao de cores, faixa com margem lateral, itens centralizados.
- Navegacao: `Up/Down` com auto-repeat por hold nas listas do menu.
- Em `Settings` e `Debug`, `Left/Right` tambem repetem por hold para ciclar valores.
- `ESC`, `ENTER`, `Del` e `PgUp/PgDn` continuam edge-trigger.
- Anti-flicker: redesenhar menu apenas em mudanca de estado (mostrar/ocultar, selecao, reposicionamento).

## Menu relacionado
- `Debug -> Debugger`: sempre aparece em builds `DEBUG=1` e opera diretamente como `MAX/MIN/OFF`.
- `Debug -> Scale`: so afeta o viewport quando `Debugger` estiver em `MIN` ou `MAX`.
- Em builds com `DEBUG=1`, `Settings` volta a mostrar `Refresh [NTSC/PAL]` logo abaixo de `Disk ROM` para diagnostico.
- Nesse caminho de diagnostico, o toggle agora atua no estado efetivo do VDP em runtime:
  - em `MSX2/MSX2+`, ele força `R#9 bit1` (`PAL/NTSC`) no core local;
  - o overlay passa a refletir imediatamente o modo efetivo (`PALVideo`), e nao apenas o pacing base do host.
- O item do menu deve espelhar o estado efetivo em tempo real:
  - mesmo com o emulador pausado/menu aberto, `Standard` precisa refletir o `R#9 bit1` atual do runtime;
  - se o software tiver mudado `PAL/NTSC` antes da pausa (ex.: `OUT` no BASIC), o menu deve abrir ja mostrando esse estado real.
- Em builds com `DEBUG=1`, `Debug` tambem mostra `Kanji ROM [ON/OFF]`:
  - o toggle atua no runtime real do `fMSX`, ligando/desligando a `KANJI.ROM` quando ela existir no set carregado;
  - em perfil `MSX2+`, o mesmo toggle tambem corta ou restaura o mapeamento de `KANJIBASIC/MSX-JE`, para o A/B do boot screen ser perceptivel;
  - com `Boot Screen` desligado, o initramfs continua preservando `KANJI*.ROM`; quem sai do pacote e o `KANJIBASIC*.ROM`;
  - quando a `KANJI.ROM` nao estiver disponivel, o item continua navegavel e `Enter` apenas registra indisponibilidade, sem mudar estado efetivo.
- Fora de debug, `Refresh` continua oculto.
- O runtime inicia em `NTSC` e continua podendo passar para `PAL` automaticamente quando o software escreve `R#9`.
- Itens de audio em `Settings`:
  - `Konami SCC+` (OFF/ON/DUAL)
  - `FM-PAC` (ON/OFF)
  - `Audio Gain` (0..9)
- Em `DEBUG=1`, `Settings` tambem mostra:
  - `Debugger [MAX/MIN/OFF]`
  - `UART Log [ON/OFF]`
- `UART Log` usa o mesmo estado operacional da tecla `F10`.

## Overlay: linhas e labels
- Modo `MIN`:
  - `Linha 1`: `TXTDBG BUILD:XXXX CPU FREQ:<MHz>`
  - `Linha 2`: `DFS:NTSC|PAL FPS:<fps>`
  - `Linha 3`: `Screen:<scr_mode> Mode:Normal|Hires|Interlaced`
- `TXTDBG`: estado geral (MMU/cache/pause).
  - `BUILD`: hash de 16 bits calculado a partir de `MSXBARE_BUILD_BID` para rastreio visual da build em teste.
  - `OS`: contador com largura fixa `000..999` (modulo 1000) para evitar jitter visual na linha.
- `AUD1`: linha consolidada de diagnostico de perdas/producao/consumo da fila de audio:
  - `Q/E`: writes e erros no write para a fila HDMI do `m_Sound`.
  - `O`: samples sobrescritos na ring interna do host (`overwrite`).
  - `T`: samples descartados por trim de latencia excessiva.
  - `U:a/b`: pulls curtos (`a`) e samples faltantes acumulados (`b`) ao alimentar a HDMI.
  - `B:a/b`: ultimo batch renderizado pelo core e maior batch visto.
  - `P:a/b`: ultimo pull retornado / ultimo pull solicitado pela HDMI.
  - `R:a/b`: nivel atual da ring interna / pico historico observado.
  - `V`: fps do emulador.
- `SYS`: linha consolidada de joystick bridge, estado runtime, pacing, save/load e mapper:
  - `BJ/MJ`: joystick bridge bruto e mapeado.
  - `F/PC/R`: frame atual, `PC` observado e repeticao do `PC`.
  - `L`: nivel atual da ring interna.
  - `D:a/b`: ultimo trim aplicado (`a`) e drops acumulados totais (`b`, overwrite + trim).
  - `JP:a/b`: media/max de erro do pacing.
  - `SV/C/A`: estagio/codigo/auxiliar do save de settings.
  - `CA/CB`: presenca de cartuchos nos slots A/B.
  - `BM/MP`: boot mode e model profile ativos.
  - `RM/MR/IN`: `RAM Mapper`, `MegaRAM` e total de arquivos no `initramfs`.
- `AC1`: estado consolidado de chips/features, mixer e mute por layer:
  - `FM:x/y`: `x`=setting FM, `y`=mask ativa no mixer.
  - `SCC:x/y`: `x`=setting do `Konami SCC+` interno, `y`=mask ativa no mixer.
  - `AG`: Audio Gain UI (`0..9`).
  - `AE`: ganho efetivo aplicado.
  - `L1/L2/L3`: mute ativo por layer (`PSG`, `FM`, `SCC`).
  - `P7`: registrador PSG mixer.
  - `MS`: bitmask master de canais do mixer.
- `TM` linha 1 (`TM1 + TM2`): timing base do core e telemetria VDP/timing útil para MSX2+ (parte 1):
  - `HP/VP/IP`: periodos inteiros atualmente em uso no scheduler.
  - `SL`: scanline atual.
  - `PAL/NTSC`: modo efetivo do VDP.
  - `L212`: flag de 212 linhas.
  - `T`: turbo configurado no menu (`OFF=100`, `PAN=150`, `MAX=200`); nao reflete o turbo Panasonic virtual ligado por software.
  - `SM`: screen mode atual.
  - `R2`: registrador da nametable/página de display.
  - `R25/R26/R27`: registradores de scroll/máscara.
  - `HS`: valor efetivo de scroll horizontal.
  - `MP`: multipágina real ativa (`R25 bit0` **e** `R2 bit5`).
  - `DP`: página de display (`R2[6:5]`).
  - `EP`: página efetiva usada pelo renderer na linha atual, já considerando odd/even do V9958.
  - `I1/F1`: IE1 habilitado (`R0 bit4`) e latch horizontal ativo em `S#1 bit0` (sticky ate leitura de `S#1`, write em `R#19/R#0` ou inicio de VBlank).
- `TM` linha 2 (`TM3 + TM4`): telemetria VDP/timing útil para MSX2+ (parte 2) e progresso de boot:
  - `C`: comando VDP atual (`R46` high nibble).
  - `CE/TR`: bits de status do command engine (`S#2 bit0` e `S#2 bit7`).
  - `CS/CP`: contadores desde o reset: inícios de comando total (`CS`) e cópia VRAM->VRAM (`CP`, comandos `LMMM/HMMM/YMMM`).
  - `KB:a/b/c/d`: `a`=KANJIBASIC carregado, `b`=mapa em `MemMap[3][1][2..3]` íntegro, `c`=slot ativo da página `4000h` em `3-1`, `d`=já selecionou `3-1` ao menos uma vez desde o reset.
  - `P1:x-y`: seleção ativa da página `4000h` (`PSL[1]-SSL[1]`).
  - `D:e/l`: `e`=setting efetiva (`disk_rom` ligado/desligado), `l`=estado de carga da `DISK.ROM` (`DiskROMLoaded`).
  - `S`: `HScroll512` bruto (bit `R25 bit0`).
  - `I1:a/b`: `a`=eventos de coincidencia de linha (`IE1`) gerados, `b`=ack por leitura de `S#1`.
  - `IA`: quantidade de vezes que o evento IE1 foi armado na fase ativa da linha.
  - `IH`: quantidade de vezes que o IE1 armado foi efetivamente disparado na entrada do HBlank.
  - `KJ`: `1` quando `KANJI.ROM` esta carregada (`Kanji != NULL`).
  - `KR/KW`: leituras de `D9h` e escritas de endereco em `D8h/D9h`.
  - `R1`: valor atual do registrador VDP `R#1`.
  - `R7`: valor atual do registrador VDP `R#7` (cores FG/BG em modos texto/tile).
  - `SO`: estado de `ScreenON` (`R#1 bit6`).
- `TM` linha 3 (`TM4B + TM5`): diagnostico de interrupcao de VBlank e pipeline de teclado runtime:
  - `I0`: habilitacao de interrupcao de VBlank (`R#1 bit5`).
  - `S0`: flag de VBlank em `S#0 bit7`.
  - `HR/VR`: estado efetivo de `S#2 bit5/bit6` na fase atual da linha/frame.
  - `LP`: fase da linha (`0`=area ativa, `1`=HBlank).
  - `TL/TD`: linha-alvo de `IE1` e delta assinado entre o compare atual e a scanline corrente.
  - `EO`: odd/even efetivo derivado de `S#2 bit1`.
  - `RP`: página efetiva atualmente selecionada para render.
  - `KQ:a/b`: profundidade atual da fila runtime e `high-water`.
  - `KD`: drops acumulados da fila runtime.
  - `KC:a/b/c`: candidatos `press-only` criados, promovidos e descartados.
  - `KR`: releases aplicados imediatamente.
  - `KP`: presses de gameplay aplicados imediatamente.
- `TM` linha 4 (`TM6A + TM6B`): trace de writes em registradores VDP e ultimo evento capturado no trace VDP/IRQ:
  - `W9/W15/W18/W19/W25/W26/W27`: writes por frame em cada registrador VDP (cap 9999).
  - `EV`: tipo do ultimo evento (`I0`, `I1A`, `I1F`, `R19`, `R23`, `R25`, `R26`, `R27`, `S1`, `S2`, `CS`, `CE`).
  - `W`: janela do trace (`TI`=titulo, `SV`=save select, `SD`=transicao `STARDATE`).
  - `P9/SL/LP`: `P9` = `PC` do chamador no ultimo micro-passo concluido da porta `0x99`; `SL/LP` continuam sendo scanline e fase de linha (`0`=area ativa, `1`=HBlank) do ultimo evento do trace VDP/IRQ.
  - `B:x/y`: bancos MegaROM ativos em `4000h-7FFFh` e `8000h-BFFFh` no momento do evento.
  - `R1/S2`: snapshot dos registradores/status mais relevantes naquele ultimo evento.
  - `SR:r/v`: ultimo status register lido pela porta `0x99` e o valor efetivamente retornado (`r`=`R#15`, `v`=byte lido).
  - `99:o/k/r/a/v`: ultimo micro-passo observado na porta `0x99`:
    - `o` = operacao (`R`=read status, `L`=primeiro byte/latch, `W`=write generico de registrador, `S`=write em `R#15`, `A`=set de endereco VRAM).
    - `k` = estado atual de `VKey` apos esse micro-passo.
    - `r` = `R#15` efetivo apos esse micro-passo.
    - `a` = `ALatch` atual.
    - `v` = byte associado ao micro-passo (`byte lido` em `R`; `byte escrito na porta` nos writes).
- `TM` linha 5 (`TM6C + TM6D`): diagnostico direto do cart `SMANBOW2` / Flash `Manbow2` e observabilidade extra da trilha V9958 stock:
  - `A8`: valor atual do registrador primario de slots.
  - `E`: `EnWrite` efetivo da pagina `4000h-7FFFh` (`1` indica que writes estao indo para RAM, nao para o cart).
  - `C/T`: slot logico do cart ativo em `4000h-7FFFh`, `ROMType` efetivo e origem da classificacao (`0`=nenhuma, `2`=explicito, `3`=`CARTS.CRC`, `4`=`CARTS.SHA`, `5`=fallback SHA local, `6`=heuristica).
  - `B:a/b/c/d`: bancos atuais nas quatro janelas de 8KB (`4000h/6000h/8000h/A000h`).
  - `F`: ultima operacao relevante da Flash (`RD`, `RS`, `AS`, `PG`, `ER`, `CM`).
  - `S/M`: estado interno da sequencia AMD e modo de leitura atual da Flash.
  - `A/O/V`: ultimo endereco, offset e valor bruto observados na trilha da Flash.
  - `R17`: valor atual bruto do registrador indireto `R#17`.
  - `9B:a>b>c`: ultimo caminho observado em write indireto via `0x9B`:
    - `a` = `R#17` antes do write;
    - `b` = registrador-alvo efetivo (`R#17 & 0x3F`);
    - `c` = `R#17` depois do auto-incremento local.
  - `V`: ultimo valor escrito em `0x9B`.
  - `S8/S9`: conteúdo bruto atual de `VDPStatus[8]` / `VDPStatus[9]`.
  - `P9`: delta por frame de writes na porta `0x9B`.

## Trace detalhado VDP/IRQ

- O overlay continua exibindo apenas o resumo persistente por frame.
- O dump detalhado passou para um buffer circular de runtime exposto por `fmsx_runtime_get_vdp_trace_view()`.
- Cada evento do trace registra, em build `DEBUG=1`:
  - frame, scanline, fase da linha, `PC` e screen mode;
  - `R#1/R#2/R#8/R#9/R#15/R#19/R#23/R#25/R#26/R#27`;
  - `S#0/S#1/S#2`, `IRQPending`, `ScreenON`, `IE0`, `IE1`;
  - odd/even efetivo, página efetiva de render e bancos MegaROM ativos em `4000h-7FFFh` e `8000h-BFFFh`;
  - eventos de `IE0`, `IE1`, writes em `R#19/R#23`, reads de `S#1/S#2`, writes em `0x98`, endereço/registrador via `0x99` e início/fim de comando VDP.
- O overlay agora exibe apenas o **ultimo** evento relevante dessa trilha em `TM6B`, para facilitar captura por screenshot em hardware.
- Para o freeze do `SMANBOW2` em `PC:C698/C699`, `TM6C` e a linha de maior valor diagnostico: ela mostra se a pagina `4000h` continua apontando para o cart, quais bancos estao ativos e se a Flash realmente recebeu/programou/leu o offset esperado (`0x70000+`).
- Em paralelo, o kernel emite telemetria UART adicional focada em VDP:
  - `VDP EVT`: eventos da janela rastreada com `PC`, scanline, fase de linha, alvo de `IE1`, `R#19/R#23` e I/O de VDP (`0x98`, `0x99` address/register). Em `Knightmare Gold`, a janela aparece como `W=KG` e fica ativa durante a gameplay em `screen mode 4` quando o disco carregado contem `kmaregold`/`kmare`.
  - `CLK`: leitura do estado de clock/throttle do firmware:
    - `ARM:<mhz>`: clock ARM reportado pelo firmware.
    - `CORE:<mhz>`: clock CORE reportado pelo firmware.
    - `TEMP:<c>`: temperatura atual do SoC.
    - `DYN:<0|1>`: se `CCPUThrottle` está ativo com faixa dinâmica válida.
    - `RNG:<min>-<max>`: faixa mínima/máxima de clock ARM exposta pelo firmware.
    - `THR:<hex>`: máscara crua de `PROPTAG_GET_THROTTLED`, incluindo bits atuais e ocorridos.
- A trilha UART experimental de audio do `SMANBOW2` (`SCC EVT` / `AUD EVT`) foi congelada para futuro na issue `#220`.
  - O codigo de instrumentacao foi preservado para reativacao futura.
  - `F10` permanece como chave reservada para reativacao futura de telemetria direcionada.
  - O fluxo antigo de snapshot manual/telemetry view por `F9/F10` foi removido.
  - No estado atual, a UART fica propositalmente enxuta e nao emite logs periódicos de performance.
- Os contadores de audio e pacing continuam visiveis no overlay (`AUD1` e `SYS`) para consulta local sem depender da UART.

## Arquitetura (modular)
- Renderer da debug layer desacoplado em objeto plugavel:
  - `src/combo_debug_overlay.h`
  - `src/combo_debug_overlay.cpp`
- O kernel coleta metricas e entrega um snapshot (`TComboDebugOverlayData`) ao renderer.
- Escrita de texto eh injetada por callback (`SetWriter`), sem acoplamento direto do renderer ao `CScreenDevice`.

## Boas praticas de uso
- Para testar audio por chip:
  1. habilite overlay (`F11`);
  2. observe `AUD1`, `SYS` e `AC1`;
  3. use `F6/F7/F8` para isolamento por camada e `F10` para silenciar a UART.
- Em investigacoes de SD/boot, priorize `SYS`, `TM` e correlacione com logs do kernel.

## Referencias
- Implementacao principal: `src/combo_debug_overlay.cpp`
- Integracao de runtime/menu: `src/kernel.cpp`
- Render helper/framebuffer: `src/framebuffer.c`
