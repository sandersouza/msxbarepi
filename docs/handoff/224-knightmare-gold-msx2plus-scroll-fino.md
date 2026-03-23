# Handoff - Branch 224-knightmare-gold-msx2plus-scroll-fino

Data: 2026-03-23
Base: `main` na criacao da issue; integrado depois na branch `187-reduzir-latencia-teclado`
Issue: #224 (`Knightmare Gold` não detecta `MSX2+`)

## Objetivo da iteração
- Confirmar como `Knightmare Gold` libera o menu de `scroll fino`.
- Identificar por que a opção de `SCROLL SMOOTH` não aparece no runtime atual.
- Corrigir o contrato esperado pelo loader com o menor desvio possível.

## Estado inicial
- Issue remota criada em `m17`: #224
- Branch vinculada criada via `gh issue develop`: `224-knightmare-gold-msx2plus-scroll-fino`
- Arquivos de teste copiados localmente em `roms/kmaregold/`

## Diagnóstico fechado
- O problema não é `MSXVER`.
- `KMG.COM` trata `MSXVER != 0` apenas como `MSX2 ou maior`; isso não distingue `MSX2` de `MSX2+`.
- A referência canônica do `openMSX` confirma `Knightmare Gold` como `MSX2`, não `MSX2+`.
- O bloqueio da opção de `scroll fino` passa por:
  - um caminho de detecção de `HighSpeed VDP`
  - um benchmark/timing de VDP
  - um probe de `Panasonic switched I/O` nos ports `40h/41h`
- O runtime atual falhava exatamente nesse probe de `40h/41h`, então o jogo nunca entrava no caminho rápido esperado.
- O bloqueio final do menu não é “detecção de MSX2+”, e sim o gate:
  - `l220E >= 5`, ou
  - `l220F != 0 && l2219 != 0`
- `l220F` vem do byte `002Bh` da BIOS via `RDSLT`, portanto região/refresh fazem parte do contrato esperado pelo loader.

## Evidências técnicas
- Disassembly local de `KMG.COM` em `/tmp/KMG.dis.asm`.
- Pontos relevantes:
  - `sub_3664h`: só separa `MSX1` de `MSX2 ou maior`.
  - `sub_3693h`: benchmark ligado ao VDP/IRQ, grava resultado em `l220E`.
  - `sub_944Fh`: tenta detectar `HighSpeed VDP` e primeiro faz probe Panasonic:
    - `out (40h),8`
    - `in a,(40h)`
    - `cpl`
    - `cp 8`
- BIOS local confirmada:
  - `roms/initramfs/MSX2.ROM[002Dh] = 01h`
  - `roms/initramfs/MSX2P.ROM[002Dh] = 02h`
- BIOS local também mostra:
  - `roms/initramfs/MSX2.ROM[002Bh] = 00h`
  - `roms/initramfs/MSX2P.ROM[002Bh] = 00h`
- Conclusão: `MSXVER` já está correto; a falha está no contrato de I/O/turbo esperado pelo loader.

## Referências consultadas
- `roms/kmaregold/KMG.COM`
- `roms/kmaregold/KMARE.ROM`
- `third_party/openMSX`
- `third_party/bluemsx`
- BIOS locais em `roms/initramfs/MSX2.ROM` e `roms/initramfs/MSX2P.ROM`

## Implementação atual
- `src/fmsx_local/MSX.c`
  - `40h` continua expondo o selector Panasonic esperado pelo loader
  - o bloco `S1985` foi alinhado ao mapa de `openMSX/blueMSX`:
    - `41h` status/turbo
    - `43h` cor/padrão packed
    - `44h` pattern
    - `47h/48h` address low/high
    - `49h` SRAM com auto-incremento
  - `41h bit0=0` liga turbo Panasonic virtual
  - I/O de VDP (`98h-9Bh`) ganha wait-state extra quando o turbo Panasonic está ativo, como no `MSXMatsushita` do `openMSX`
  - reset limpa selector, endereço SRAM e desliga o turbo Panasonic
- `src/fmsx_runtime.c`
  - novo estado `g_panasonic_turbo_enabled`
  - turbo efetivo agora considera o maior entre o turbo de menu e o turbo Panasonic
- `src/fmsx_runtime.h`
  - API pública para ligar/desligar e consultar o turbo Panasonic
- `src/fmsx_local/MSX.c`
  - removido o forcing antigo de `fixed NTSC 60Hz` desta branch
  - novo espelhamento do byte de BIOS `002Bh` para acompanhar o estado efetivo `PAL/NTSC`
- `src/fmsx_runtime.c`
  - o boot default do projeto permanece `NTSC/60Hz`
  - nao existe mais override de boot por titulo para `KMAREGLD.DSK`
  - o unico caminho aceito para `PAL` nesta trilha continua sendo a escrita legitima em `R#9` do VDP

## Observações sobre o build local
- A trilha foi posteriormente migrada para o repositorio principal na branch `187-reduzir-latencia-teclado`.
- Este handoff foi preservado como historico tecnico da investigacao e da implementacao da `#224`.

## Estado em hardware
- A primeira rodada com apenas `40h/41h` e turbo Panasonic virtual ainda nao liberou a opcao de `scroll fino`.
- Isso descartou `MSXVER` e o probe minimo de `40h/41h` como causas suficientes.
- A rodada atual amplia o contrato do `S1985` para o mapa completo usado nas referencias e adiciona o atraso extra de I/O do VDP durante o turbo Panasonic, pois o `KMG.COM` faz o teste `sub_94AFh` depois de ligar esse turbo.
- Em hardware, o loader passou a detectar normalmente:
  - `HighSpeed VDP detected`
  - `MSX2 detected`
  - `128KB of videoRAM`
  - `SCC+ detected`
- Mesmo assim, o menu ainda cai no bloco com `MODE MSX2` e `SCROLL ORIGINAL`, sem liberar o caminho esperado de `scroll fino`.
- O disassembly fecha o gate restante:
  - `l2212` inicia em `01h`
  - na inicializacao (`224ch..2267h`), se `l220E < 5`, o loader zera `l2212`
  - em `2E60h`, o bloco de menu “rico” so entra quando `l2212 != 0` e `l2219 == 1`
- Conclusao desta rodada: o VDP probe parece estar passando (`l2219`), mas o benchmark do turbo Panasonic (`l220E`) ainda esta abaixo do limiar.

## Referencias implementadas nesta rodada
- `third_party/bluemsx/blueMSX/Src/Memory/sramMapperMatsuchita.c`
- `/Users/sandersouza/Developer/msxbarepi/third_party/openMSX/src/MSXMatsushita.cc`

## Validação local
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603231020-224-kmg`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603231140-224-kmg`: OK
- Artefato:
  - `artifacts/kernel8-issue224.img`
- Build pronta para hardware:
  - rodada `S1985` + VDP wait: `BUILD_HASH:58a6eb0-664f8de1ffbe8c76c210499f0ef98a7a6ac47034`
  - rodada de calibracao do turbo Panasonic: `BUILD_HASH:58a6eb0-4ae747256cc57ccd0a364347b796c3f152dec8bc`

## Próximo passo
1. Testar `Knightmare Gold` em hardware com a build da rodada atual, sem override de boot em `PAL`.
2. Confirmar se a opcao `2-SCROLL` passa a alternar para `SMOOTH`.
3. Confirmar na tela o `BUILD_ID` correto antes de qualquer nova leitura de UART.

## Rodada atual
- O log UART recebido nesta rodada nao trouxe nenhuma linha `KMG DET`; ele mostra apenas a build antiga `F799`, compilada em `Mar 23 2026 09:57:31`.
- Causa fechada: o trace experimental de `Knightmare Gold` ainda estava preso em `log_cb`, que nao aparece no serial standalone desta build.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`: `KMG DET` trocado por ring buffer local `KMG EVT`, capturando writes em `220E`, `220F`, `2212` e `2219`.
  - `src/fmsx_runtime.c` / `src/fmsx_runtime.h`: view publica `fmsx_runtime_get_kmg_trace_view()`.
  - `src/kernel.cpp` / `src/kernel.h`: dreno UART `LogKmgTraceUart()` emitindo `KMG EVT` e `KMG DROP`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1 BUILD_BID=202603231250-224-kmg`: OK
- Nova build para hardware:
  - `BUILD_HASH:58a6eb0-e057a672b97ef5f35bb2ca0f5af5999974b9d4ca`
  - `BUILD_ID (TXTDBG): D44D`

## Rodada atual
- O log UART e a captura recebidos nesta rodada ainda eram de build antiga (`CE84` / compile time `Mar 23 2026 11:22:26`), sem o trace `KMG EVT`.
- Isso invalidou a leitura da UART para o estado atual da branch.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`: removido o forcing de `MSX_PAL=0`; `Mode` volta a preservar `PAL`.
  - `src/fmsx_local/MSX.c`: novo `fmsx_sync_bios_region_flag()` para manter o byte BIOS `002Bh` coerente com `PAL/NTSC`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1 BUILD_BID=202603231530-224-kmg`: OK
- Nova build para hardware:
  - `BUILD_HASH:58a6eb0-a48d17401a786fd39df2b0c1f663d45025afb112`
  - `BUILD_ID (TXTDBG): 784A`

## Restricao consolidada
- O boot default do projeto continua `NTSC/60Hz`.
- Nao usar override de boot por titulo para `Knightmare Gold`.
- O software continua livre para chavear `PAL/NTSC` apenas pela escrita em `R#9` do VDP, preservando casos como `Space Manbow 2`.

## Build atual de referencia
- Validacao local:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1 BUILD_BID=202603231620-224-kmg`: OK
- Artefato:
  - `artifacts/kernel8-issue224.img`
- Build para o proximo teste em hardware:
  - `BUILD_HASH:58a6eb0-ca1d130949fba28f9227b02af5e111815f32451c`
  - `BUILD_ID (TXTDBG): 7348`
  - `Compile time: Mar 23 2026 12:23:33`

## Rodada atual
- Ajuste de diagnostico no menu `Settings`:
  - em builds `DEBUG=1`, a opcao `Refresh [NTSC/PAL]` volta a ficar visivel
  - a opcao foi posicionada logo abaixo de `Disk ROM`
  - em builds sem debug, ela continua oculta
- O kernel agora:
  - trata `ComboMenuActionCycleRefreshRate` e `ComboMenuActionCycleRefreshRatePrev`
  - carrega/salva `refresh=<50|60>` em `MSXBARE.CFG`
  - aplica `m_RefreshRateHz` ao runtime em vez de forcar `60Hz` ao restaurar settings
- Objetivo desta rodada: permitir teste manual de `PAL/NTSC` no `Knightmare Gold` sem reabrir override fixo de boot por titulo.
- Validacao local:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1 BUILD_BID=202603231705-224-kmg`: OK
- Build pronta para hardware:
  - `BUILD_HASH:58a6eb0-37833abed0351a9686b591334c1f69d603ea1764`
  - `BUILD_ID (TXTDBG): 8C34`
