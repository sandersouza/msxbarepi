# Mapa de Uso do VDP pelo Core Local

## 1. Topologia de maquina que enquadra o VDP

- `ResetMSX()` carrega `MSX2P.ROM`, `MSX2PEXT.ROM`, `KANJIBASIC.ROM` e tenta opcionalmente `MSXJE.ROM` em `src/fmsx_local/MSX.c:2861-2918`.
- `IsExpandedPrimarySlot()`, `RAMMapperSubSlot()` e `DiskROMSubSlot()` alinham o perfil `MSX2+` ao `HB-F1XDJ` em `src/fmsx_local/MSX.c:4346-4378`.
- Isso importa porque o boot logo roda em um mapa de slots especifico: BIOS no `0-0`, subrom e `KANJIBASIC` em `3-1`, RAM mapper em `3-0` e FDC em `3-2`.

## 2. Portas VDP em `MSX.c`

### `0x98`

- `OutZ80()` sincroniza antes da escrita, registra telemetria, escreve `VDPData`, incrementa `VAddr` e propaga pagina por `R#14` em `src/fmsx_local/MSX.c:3782-3801`.
- Esse caminho e o contrato de dados de VRAM esperado pelos comandos `HMMC/LMMC`.

### `0x99`

- `InZ80()`:
  - aplica espera de I/O
  - para `MSX2/2+`, chama `fmsx_vdp_sync_before_status_read()`
  - seleciona `S#n` por `R#15`
  - expoe `S#0`, `S#1`, `S#2` ou `VDPStatus[n]`
  - reseta `VKey=1` para alinhar o latch do `V99x8`
  - trata side effects de `S#0`, `S#1` e `S#7`
  - tudo em `src/fmsx_local/MSX.c:3558-3598`
- `OutZ80()` usa o primeiro byte como `ALatch` e o segundo byte para:
  - escrever registrador (`0x80`)
  - programar endereco de VRAM (`0x00`/`0x40`)
  - caminho em `src/fmsx_local/MSX.c:3804-3845`

### `0x9A`

- permanece reservado para palette write nas maquinas `V99x8`; nao participa do bug do logo.

### `0x9B`

- e o caminho de escrita indireta usado quando `R#17` aponta para `R#32..R#46`.
- o BIOS do `MSX2+` usa esse caminho em lotes para programar o bloco de comandos.

## 3. Registradores VDP que `MSX.c` trata como especiais

- `R#2`: recalcula `ChrTab` com `fmsx_vdp_r2_shift()` e `fmsx_vdp_r2_base()` em `src/fmsx_local/MSX.c:4456-4482` e `4590-4594`
- `R#9`: atualiza periodo vertical e flags de regiao em `src/fmsx_local/MSX.c:4641-4645`
- `R#14`: troca pagina de VRAM
- `R#15`: seleciona qual `S#n` sera lido
- `R#17`: controla o ponteiro da escrita indireta
- `R#18`: display adjust
- `R#19` e `R#23`: entram no compare de HBlank/vertical timing
- `R#25`, `R#26`, `R#27`: afetam display state, scroll e multipage
- `R#44`: cai em `VDPWrite()`
- `R#46`: cai em `VDPDraw()`

## 4. Como o command engine local e acionado

- `VdpOpsQuantum()` usa quantum fixo, maior no `MSX2+`, em `src/fmsx_local/V9938.c:186-194`.
- `VdpCommandScreenMode()` decide o mapa de `SCR5..12` em `src/fmsx_local/V9938.c:196-206`.
- `VDPDraw()`:
  - interpreta `R#32..R#46`
  - popula `MMC`
  - arma `CE` em `S#2 bit0`
  - nao consome um slice imediatamente
  - fluxo em `src/fmsx_local/V9938.c:909-1027`
- `LoopVDP()` ainda avanca o engine por quantum fixo em `src/fmsx_local/V9938.c:1033-1047`.
- `fmsx_vdp_sync_before_status_read()` so drena um slice pendente em `src/fmsx_local/V9938.c:892-904`.

## 5. Como o renderer local interpreta `R#25/R#26/R#27`, `R#2 bit5` e odd/even

- `Common.h` concentra os helpers de scroll:
  - `V9958CoarseBlocks()` em `src/fmsx_local/Common.h:43-48`
  - `V9958FineScroll*()` em `src/fmsx_local/Common.h:60-68`
  - `V9958MaskLeft*()` em `src/fmsx_local/Common.h:70-78`
  - `V9958VirtualWidth*()` em `src/fmsx_local/Common.h:80-94`
- `V9958BitmapLinePtr()` monta o ponteiro de linha e ainda usa o modelo local de `FlipEvenOdd`/`OddPage` em `src/fmsx_local/Common.h:121-143`.
- `SCREEN 5/8/10/12` sao montados por expansao para `BgRaw` e composicao posterior em `src/fmsx_local/Common.h:1061-1347`.
- `SCREEN 6/7` fazem a mesma estrategia em `src/fmsx_local/Common.h:1381-1488` e `src/fmsx_local/Wide.h:165-277`.

## 6. O que isso significa para o boot logo

- O BIOS nao conversa com um "subsystem" separado; ele depende diretamente desse contrato de portas, registradores, status e renderer.
- O logo quebra quando o conjunto abaixo nao converge ao mesmo tempo:
  - `S#2` precisa refletir `CE/TR/BD` na janela certa
  - `S#7` precisa obedecer a transferencia do bloco de comandos
  - `R#32..R#46` precisam ser executados com o mesmo pacing da referencia
  - `SCREEN 6/7` precisam respeitar page split, odd/even e `R#25/R#26/R#27`

## 7. Resumo operacional

- `MSX.c` define o contrato de I/O e topologia.
- `V9938.c` define a semantica temporal do command engine.
- `Common.h` e `Wide.h` definem como a imagem realmente aparece.
- O bug do boot logo e um defeito de fronteira entre esses tres blocos, nao um problema isolado de uma unica funcao.
