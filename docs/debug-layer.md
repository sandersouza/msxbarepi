# Debug Layer (Kernel HDMI Overlay)

Guia operacional da layer de debug do MSXBarePI: como compilar, usar, atalhos e significado de cada linha/label.

Documento canonico para debug HDMI/runtime. O conteudo do antigo guia de template foi consolidado aqui.

## Objetivo
- Fornecer telemetria em tempo real para diagnostico de boot, video, input, audio e I/O de SD.
- Permitir testes A/B de audio e video por menu/debug interno, sem recompilar.

## Como compilar
- Regra operacional da fase atual: durante desenvolvimento, usar `DEBUG=1` por padrão; `DEBUG=0` somente quando o usuário solicitar explicitamente.
- Build com debug overlay habilitado:
```bash
make DEBUG=1
```
- Em `DEBUG=1`, o fastboot atual adia `UART + Logger` e a ativacao do overlay ate depois do bootstrap do backend.
- No boot, o modo inicial do overlay e sempre `OFF`; depois da carga do `msx.cfg`, o runtime assume o valor persistido em `debugger=`.
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
  - os headers reais `<circle/logger.h>` e `<circle/serial.h>` nao sao carregados;
  - o renderer `src/tools/debug/combo_debug_overlay.cpp` nao entra no link final;
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
  - toda alternancia entre esses modos limpa a tela inteira antes da nova fase, para nao deixar vestigios visuais entre `MAX/MIN/OFF`.
- `F12`: pausa/retoma emulacao (menu de pausa).
- `START` do gamepad: alias de `F12` para pausa/menu.
- Navegacao do menu: setas, `Enter`, `Esc`, `PageUp`, `PageDown`, `Delete` e letras para salto rapido.
- Atalhos diretos antigos `F6`, `F7`, `F8`, `F9`, `F10`, `+` e `-` foram removidos do caminho quente de input para reduzir overhead e tamanho do kernel. As APIs internas de mute, ganho de FM e views de debug do `V9990` continuam preservadas para uso via menu/debug ou instrumentacao futura.

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
- O item `Proportion` vive em `Settings` e aplica a resolucao do framebuffer via Circle: `16:9` usa `960x540`, `4:3` usa `640x480`.
- O item `Scale` vive em `Debug`, antes de `Debugger`, apenas em builds `DEBUG=1`.
- `Scanlines` agora e binario no runtime e no `.cfg`: `OFF/ON`.
- O estado `ON` usa apenas a logica LCD atual; o antigo modo `CRT` foi removido.
- `Scale [1x]`: usa a mailbox nativa do emulador.
- `Scale [2x]`: usa metade do intervalo entre `1x` e o fullscreen, em passos de `1/16x`.
- `Scale [3x]`: fullscreen fit usa a area MSX ativa `256x192` e aplica o mesmo multiplicador em X/Y. Em `4:3` (`640x480`) o fator e `2.5x`; em `16:9` (`960x540`) o fator e `2.75x`.
- `Standard` e `HIRES` usam a mesma mailbox base do emulador e o mesmo modo de `Scale`.
- `Widescreen`: removido do runtime e do menu; o viewport agora segue sempre a mailbox fixa do emulador.

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
- O mesmo criterio agora vale para qualquer troca entre `MAX`, `MIN` e `OFF`, nao apenas ligar/desligar o overlay.
- A troca de modo faz esse wipe de forma imediata, antes do novo layout do overlay voltar a desenhar, para nao deixar residuos do modo anterior.
- Selecao visual: inversao de cores, faixa com margem lateral, itens centralizados.
- Navegacao: `Up/Down` com auto-repeat por hold nas listas do menu.
- Em `Settings` e `Debug`, `Left/Right` tambem repetem por hold para ciclar valores.
- `ESC`, `ENTER`, `Del` e `PgUp/PgDn` continuam edge-trigger.
- Anti-flicker: redesenhar menu apenas em mudanca de estado (mostrar/ocultar, selecao, reposicionamento).

## Menu relacionado
- `Debug -> Debugger`: sempre aparece em builds `DEBUG=1` e opera diretamente como `MAX/MIN/OFF`.
- `Settings -> Proportion`: alterna `16:9`/`4:3`, grava em `msx.cfg`/RAW e nao altera `config.txt`.
- `Debug -> Scale`: aparece apenas em builds `DEBUG=1` e afeta o viewport independentemente do modo do debugger.
- `Settings` nao expoe mais `Save to Disk`: ao sair de `Settings`/`Debug` com `ESC`, ou fechar o menu com `F12` enquanto uma dessas views esta aberta, as alteracoes sao enfileiradas para persistencia em `msx.cfg`/RAW.
- `Settings` nao desenha mais o header `SETTINGS`; os itens usam margem superior e inferior simetricas para reduzir a altura do menu sem alterar a fonte.
- Em builds `DEBUG=0`, `Scale` nao aparece no menu e o viewport usa sempre o maior scale permitido pela resolucao ativa.
- `Settings -> Disk ROM`: aparece abaixo de `MegaRAM`, independente de `DEBUG=1`/`DEBUG=0`, e alterna a disponibilidade da Disk ROM no runtime.
- Em builds com `DEBUG=1`, o menu `Debug` mantem controles de diagnostico e apresentacao de debug, como `Scale`, `Debugger` e `Standard [NTSC/PAL]`.
- Nesse caminho de diagnostico, o toggle agora atua no estado efetivo do VDP em runtime:
  - em `MSX2/MSX2+`, ele força `R#9 bit1` (`PAL/NTSC`) no core local;
  - o overlay passa a refletir imediatamente o modo efetivo (`PALVideo`), e nao apenas o pacing base do host.
- O item do menu deve espelhar o estado efetivo em tempo real:
  - mesmo com o emulador pausado/menu aberto, `Standard` precisa refletir o `R#9 bit1` atual do runtime;
  - se o software tiver mudado `PAL/NTSC` antes da pausa (ex.: `OUT` no BASIC), o menu deve abrir ja mostrando esse estado real.
- O menu `Debug` nao expoe mais `Kanji ROM [ON/OFF]`:
  - `msx.cfg` nao persiste mais `kanji_rom`;
  - a emulacao sempre carrega `KANJI.ROM`, `KANJIBASIC` e `MSX-JE` quando esses blobs estiverem presentes no set carregado;
  - com `Boot Screen` ligado, o pacote enxuto preserva `KANJIBASIC*.ROM` e remove a fonte `KANJI.ROM` por padrao; use `MSXBARE_KANJI_FONT=1` para preservar a fonte;
  - com `Boot Screen` desligado, `KANJI*.ROM` e `KANJIBASIC*.ROM` nao entram no initramfs;
  - quando a fonte ou os mapas japoneses nao existirem no pacote, o runtime simplesmente segue sem esse recurso, sem toggle de usuario.
- Fora de debug, `Refresh` continua oculto.
- O runtime inicia em `NTSC` e continua podendo passar para `PAL` automaticamente quando o software escreve `R#9`.
- Itens de audio em `Settings`:
  - `Konami SCC+` (OFF/ON/DUAL)
  - `FM-PAC` (ON/OFF)
  - `Audio Gain` (0..9)
- Em `DEBUG=1`, `Settings` tambem mostra:
  - `Debugger [MAX/MIN/OFF]`

## Overlay: linhas e labels
- Modo `MIN`:
  - `Linha 1`: `TXTDBG BUILD:XXXX CPU FREQ:<MHz>`
  - `Linha 2`: `DFS:NTSC|PAL FPS:<fps> F:<frame>`
  - `Linha 3`: `Screen:<scr_mode> Mode:Normal|Hires|Interlaced`
  - `DFS`: `NTSC/PAL` lido diretamente de `VDP R#9 bit1`.
  - a limpeza do overlay agora e feita por comprimento real de cada linha renderizada; ao atualizar ou desligar o painel, o kernel limpa apenas a quantidade de caracteres previamente desenhada em cada linha, sem preencher colunas extras com espacos
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
- Em `DEBUG=1`, a UART emite marcadores estruturados de boot:
  - `BOOT_TIME start_to_backend_start_ms=<n>`
  - `BOOT_TIME start_to_backend_ready_ms=<n>`
  - `BOOT_TIME start_to_first_blit_ms=<n>`
  - `BOOT_TIME start_to_usb_ready_ms=<n>` ou `BOOT_TIME usb_retry_scheduled_tick=<n>`
  - `BOOT_TIME start_to_bt14_ms=<n>`
  - `BOOT_TIME initramfs_source=embedded|external`
  - `BOOT_TIME initramfs_bytes=<n>`
  - `BOOT_TIME raw_cfg_ms=<n>`
  - `BOOT_TIME fat_deferred_ms=<n>`
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
  - `PAL/NTSC`: modo lido diretamente de `VDP R#9 bit1`.
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
- Em paralelo, o kernel pode emitir telemetria UART adicional focada em VDP. A trilha do `V9990/GFX9000` (`G9*`) fica desligada por padrao para evitar custo e poluicao da UART nas builds de teste comuns.
- Para reativar a telemetria UART do `V9990/GFX9000`, compile explicitamente com:

```bash
make DEBUG=1 MSXBARE_V9990_UART_TRACE=1
```

- A lista abaixo resume as familias principais; as entradas `G9*` dependem de `MSXBARE_V9990_UART_TRACE=1`:
  - `VDP EVT`: eventos da janela rastreada com `PC`, scanline, fase de linha, alvo de `IE1`, `R#19/R#23` e I/O de VDP (`0x98`, `0x99` address/register). Em `Knightmare Gold`, a janela aparece como `W=KG` e fica ativa durante a gameplay em `screen mode 4` quando o disco carregado contem `kmaregold`/`kmare`.
  - `G9E cart-auto`: ativacao automatica de `GFX9000` ao carregar/configurar uma ROM reconhecida como V9990.
  - `G9E rt-cart-auto`: autoativacao feita dentro do `fmsx_runtime_start()`, no ultimo ponto antes de `StartMSX()`, quando o kernel/menu ainda nao deixaram `GFX9000` ligado.
  - `G9C start`: estado de boot do `CODEINTRUDER`, incluindo `g9:<0|1>` para confirmar se a ROM iniciou com `GFX9000` ativo.
  - `G9C pc`: checkpoint do `CODEINTRUDER`; `vram-test` marca a rotina `7358h`, `after-test` marca passagem do teste e `no-v9990-loop` marca o loop de falha em `7466h`.
  - `G9C pal`: resumo compacto do loop de carga de paleta do `CODEINTRUDER` em `pc:739C`, substituindo centenas de linhas `G9P out p:61`.
  - `G9C sts`: leituras de `STATUS` da V9990 em loops conhecidos do `CODEINTRUDER`, com `CE/VR/HR` para diagnosticar espera infinita por comando ou vertical retrace.
  - `G9C vram`: progresso compacto de upload CPU VRAM do `CODEINTRUDER`, cobrindo boundaries de `0x1000`, mudanca de rotina e uploads/decompress conhecidos sem saturar a UART.
  - `G9P rd`: leitura real retornada por porta da V9990; usado para validar rotinas de presenca como o compare `A2h` do `CODEINTRUDER` em `60h`.
  - `G9P miss-in` / `G9P miss-out`: acesso do Z80 a uma porta `60h..6Fh` enquanto a V9990 esta desligada; usado para separar falha de autoativacao de falha semantica de VRAM/porta.
  - `G9V cpu`: leitura/escrita de VRAM pelo caminho de CPU da V9990, limitada a janelas curtas para nao poluir a UART.
  - `CLK`: leitura do estado de clock/throttle do firmware:
    - `ARM:<mhz>`: clock ARM reportado pelo firmware.
    - `CORE:<mhz>`: clock CORE reportado pelo firmware.
    - `TEMP:<c>`: temperatura atual do SoC.
    - `DYN:<0|1>`: se `CCPUThrottle` está ativo com faixa dinâmica válida.
    - `RNG:<min>-<max>`: faixa mínima/máxima de clock ARM exposta pelo firmware.
    - `THR:<hex>`: máscara crua de `PROPTAG_GET_THROTTLED`, incluindo bits atuais e ocorridos.
- A trilha UART experimental de audio do `SMANBOW2` (`SCC EVT` / `AUD EVT`) foi congelada para futuro na issue `#220`.
  - O codigo de instrumentacao foi preservado para reativacao futura.
  - O fluxo antigo de snapshot manual/telemetry view por hotkeys foi removido.
  - No estado atual, a UART fica propositalmente enxuta e nao emite logs periódicos de performance.
- Os contadores de audio e pacing continuam visiveis no overlay (`AUD1` e `SYS`) para consulta local sem depender da UART.

## Arquitetura (modular)
- Renderer da debug layer desacoplado em objeto plugavel:
  - `src/tools/debug/combo_debug_overlay.h`
  - `src/tools/debug/combo_debug_overlay.cpp`
- Gating de build/runtime:
  - `src/tools/debug/debug_runtime_gate.h`
  - o overlay e os headers reais de UART/logger so entram quando `DEBUG=1`
- O kernel coleta metricas e entrega um snapshot (`TComboDebugOverlayData`) ao renderer.
- Escrita de texto eh injetada por callback (`SetWriter`), sem acoplamento direto do renderer ao `CScreenDevice`.

## Boas praticas de uso
- Para testar audio por chip:
  1. habilite overlay (`F11`);
  2. observe `AUD1`, `SYS` e `AC1`;
  3. use os controles internos de debug/menu quando disponiveis para isolamento por camada.
- Em investigacoes de SD/boot, priorize `SYS`, `TM` e correlacione com logs do kernel.

## Referencias
- Implementacao principal: `src/tools/debug/combo_debug_overlay.cpp`
- Integracao de runtime/menu: `src/kernel.cpp`
- Render helper/framebuffer: `src/framebuffer.c`
