# Handoff - branch `176-fix-msx2p-boot-screen-slow`

## Contexto atual
- Branch de trabalho criada a partir de `fix-acurating-timing-vdp9958` para tratar exclusivamente o bug de boot screen lento no MSX2+.
- Issue remota aberta: [#176](https://github.com/sandersouza/msxbarepi/issues/176).
- Espelho local atualizado em `docs/milestones/m17/176-boot-screen-msx2plus-extremamente-lento-logo-scroll-paginas-alternadas.md`.

## Sintoma de hardware
- No boot logo do MSX2+, a animação progride muito lentamente.
- Capturas com diferença de ~1000 frames mostram deslocamento mínimo.
- `R26` alterna durante a animação, sugerindo page flip/scroll entre páginas.

## Estado técnico de referência
- Última build validada pelo usuário antes da branch dedicada:
  - `BUILD_HASH:8e25964-654f5142ae8ec086052142cd6b0c2e40a4536a88`
  - `INT_BUILD:604D`
- 60Hz no MSXDIAG foi restaurado nos três modelos (MSX1/MSX2/MSX2+).

## Próximos passos imediatos
1. Instrumentar pontos de telemetria do boot logo MSX2+ (R26/R2/R25, page flip, eventos de comando VDP).
2. Identificar gargalo de cadência no pipeline de boot (timing de status polling vs update/frame-step).
3. Aplicar ajuste mínimo focado em MSX2+ e validar sem regressão de 60Hz no MSXDIAG.

## Iteracao atual (12/03/2026 01:00 BRT)
- Fluxo da issue iniciado:
  - issue remota criada: `#176`.
  - branch vinculada criada via `gh issue develop`: `176-fix-msx2p-boot-screen-slow`.
  - espelho local da issue/milestone atualizado.
- Primeiro ajuste tecnico nesta branch:
  - calibracao extra de leitura `0x99` (status VDP) limitada a MSX1.
  - para MSX2/2+, mantido apenas custo base de I/O, evitando penalizar boot logo.
  - arquivo alterado: `src/fmsx_local/MSX.c`.
- Build local validado:
  - `make clean && make DEBUG=1` (OK)
  - artefatos: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- BUILD_HASH: `8e25964-80b65d962704c268aeac9037a6782206ce694e3d`
- INT_BUILD: `6D3B`

## Iteracao atual (12/03/2026 01:21 BRT)
- Reversao aplicada conforme validacao de hardware:
  - removida a restricao da calibracao extra de `0x99` apenas para MSX1.
  - calibracao de deteccao 60Hz volta a ficar global (MSX1/MSX2/MSX2+), como estava no estado funcional.
  - arquivo: `src/fmsx_local/MSX.c`.
- Build local validado:
  - `make clean && make DEBUG=1` (OK)
  - artefato principal da issue: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-204f01bef49f4af3d561b85c394257bc772a8d3e`
- INT_BUILD: `C46A`

## Iteracao atual (12/03/2026 01:55 BRT)
- Analise dos prints de hardware (intervalos ~1000 frames):
  - `R26/HS` evoluem, indicando que a animacao do logo esta ativa;
  - a cadencia visual continua lenta (gargalo de throughput, nao travamento logico).
- Ajuste aplicado sem alterar a calibracao extra de 60Hz:
  - custo de I/O de dados VDP foi zerado (`kVDPIOWaitCyclesData=0`);
  - calibracao extra de status (`0x99`) foi preservada integralmente.
  - arquivo: `src/fmsx_local/MSX.c`.
- Build local validado:
  - `make clean && make DEBUG=1` (OK)
  - artefato: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-90e87e4a145cd04b40246fcd086c5aa5089dd20d`
- INT_BUILD: `2240`

## Iteracao atual (12/03/2026 02:08 BRT)
- Analise de ROM via `z80dasm`:
  - `MSX2PEXT.ROM` contem loops de sincronizacao VDP com `DI + IN (99h)` em trechos como `0x2BE4..0x2C03`, consistentes com o comportamento do logo/boot.
- Ajuste aplicado sem tocar no caminho `0x99`:
  - adicionado boost temporario de turbo no boot `NORM` para MSX2/MSX2+:
    - `MSXBARE_FMSX_NORM_BOOT_BOOST_FRAMES_MSX2=1200`
    - `MSXBARE_FMSX_NORM_BOOT_BOOST_FRAMES_MSX2P=1200`
  - objetivo: compensar overhead da rotina de boot/logo sem alterar calibracao de 60Hz.
  - arquivo: `src/fmsx_runtime.c`.
- Build local validado:
  - `make clean && make DEBUG=1` (OK)
  - artefato: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-08e32ce237c0af9e61f7cc22c6e3770f40b1c6f0`
- INT_BUILD: `DC9E`

## Iteracao atual (12/03/2026 02:16 BRT)
- Disassembly persistido fora de `src/` para consultas futuras:
  - `docs/rom-disassembly/msx2plus/MSX2P.ROM.dis`
  - `docs/rom-disassembly/msx2plus/MSX2PEXT.ROM.dis`
  - `docs/rom-disassembly/msx2plus/README.md` com comandos de regeneracao.

## Iteracao atual (12/03/2026 02:24 BRT)
- Estudo da implementacao BlueMSX (`third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`) para alinhar regra de mapeamento de modo de comandos do V9958.
- Correcao aplicada no nosso engine local:
  - `src/fmsx_local/V9938.c` -> `VdpCommandScreenMode()` agora segue a logica do BlueMSX:
    - `SCR10..12 -> indice 3` (mapa de comando estilo SCR8)
    - `SCR5..8 -> 0..3`
    - demais modos: `R#25 bit6` habilita fallback em indice `2`; sem isso, comandos desabilitados.
- Importante:
  - nenhum ajuste foi feito na calibracao de leitura de status `0x99` (mantida intacta).
- Build local validado:
  - `make DEBUG=1` (OK)
  - artefato da issue: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-7c3bc072350e41645a8445f8fd3171a33d65b1b2`
- INT_BUILD: `1CD9`

## Iteracao atual (12/03/2026 02:29 BRT)
- Hipotese atacada: engine de comando VDP em `SCR7/SCR8` usando mapeamento linear no nosso fork, enquanto BlueMSX usa mapeamento VRAM intercalado (odd/even plane).
- Correcao aplicada:
  - arquivo: `src/fmsx_local/V9938.c`
  - macros de acesso de comando para `SCR7/SCR8` alteradas para layout intercalado estilo BlueMSX:
    - `VDP_VRMP7(X,Y) -> ((Y<<7) + ((X>>2) + ((X&2)<<15)))`
    - `VDP_VRMP8(X,Y) -> ((Y<<7) + ((X>>1) + ((X&1)<<16)))`
- Objetivo: restaurar comportamento de copias/efeitos por paridade de linhas no boot logo MSX2+.
- Nenhuma alteracao no caminho de calibracao `0x99`.
- Build local validado:
  - `make DEBUG=1` (OK)
  - artefato: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-1f1b61535e4546d9d1e37be9bcd55994b2474e0c`
- INT_BUILD: `FEB8`

## Iteracao atual (12/03/2026 02:39 BRT)
- Feedback de hardware: sem melhora visual no logo e regressao de 60Hz reportada no MSX2 apos as ultimas 2 builds.
- Acao imediata:
  - rollback das 2 mudancas recentes em `src/fmsx_local/V9938.c` que nao trouxeram ganho:
    - mapeamento intercalado experimental em `VDP_VRMP7/VDP_VRMP8`
    - regra experimental de `VdpCommandScreenMode()` para `SCR10..12`
- Novo ajuste focal para atacar lentidao do logo sem afetar MSX2:
  - `GetVdpTimingValue()` agora escala apenas no perfil `MSX2+` (`MODEL(MSX_MSX2P)`) com divisor de 8 no `delta` dos comandos VDP.
  - objetivo: aumentar cadencia do command-engine V9958 no boot logo.
- Build local validado:
  - `make DEBUG=1` (OK)
  - artefato: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-e8a3b96d8593a3a8c7497f00b9e500ac4ee7ad3e`
- INT_BUILD: `964C`

## Iteracao atual (12/03/2026 02:53 BRT)
- Analise comparativa aprofundada com referencias (`third_party/fmsx/fMSX/Common.h`, `third_party/fmsx/fMSX/Wide.h`, `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`) indicou alto desvio local nas rotinas de render `SCREEN5..12` (scroll/paginacao).
- Acao aplicada:
  - restaurado `src/fmsx_local/Common.h` para upstream fMSX.
  - restaurado `src/fmsx_local/Wide.h` para upstream fMSX.
- Ajuste temporario de `delta` no `V9938.c` foi removido para isolar mudanca (sem efeito visual observado antes).
- Resultado: build isolada com renderer upstream puro para validar efeito de odd/even/interlace do boot logo.
- Build local validado:
  - `make DEBUG=1` (OK)
  - artefato: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-09b5413bb0dd171b42f43a5c042d2a1bebb896ab`
- INT_BUILD: `C1EE`

## Iteracao atual (12/03/2026 02:59 BRT)
- Feedback de hardware: logo passou a aparecer montada (ganho significativo) apos restaurar renderer upstream, mas tempo total de boot ainda ~4500 frames.
- Ajuste aplicado focado em reduzir frames de boot no MSX2+ sem mexer no renderer:
  - `src/fmsx_runtime.c`
  - janela de boost `NORM` para MSX2+ ampliada: `MSXBARE_FMSX_NORM_BOOT_BOOST_FRAMES_MSX2P` de `1200` -> `5000`.
  - turbo forçado de boot por perfil:
    - MSX1: `224%` (inalterado)
    - MSX2+: `224%` (novo)
    - MSX2: `150%` (inalterado)
- Objetivo: manter o boost ativo por todo o periodo real de boot/logo no MSX2+.
- Build local validado:
  - `make DEBUG=1` (OK)
  - artefato: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-6a8ae2b3894b97fa78533d6ba1aeeb808c366d76`
- INT_BUILD: `8A7C`

## Iteracao atual (12/03/2026 03:12 BRT)
- Novos prints de hardware (~1000 frames) mostram `HS` variando (`R26/R27`) com `SM:06`, mas imagem do logo praticamente estatica.
- Analise: caminho de render ativo em 512px (`Wide.h`) nao aplicava scroll horizontal em `SCREEN6/7`.
- Correcao aplicada:
  - arquivo: `src/fmsx_local/Wide.h`
  - adicionada funcao `WideScrollPagePtr()` para troca de pagina horizontal com wrap em VRAM.
  - `RefreshLine6()` e `RefreshLine7()` agora aplicam `HScroll` + `HScroll512` na amostragem de pixels, com selecao de pagina secundaria (`+0x8000` para SCR6, `+0x10000` para SCR7).
- Mantido:
  - renderer base upstream (Common/Wide restaurados).
  - politica 60Hz e calibracao de `0x99` inalteradas.
- Build local validado:
  - `make DEBUG=1` (OK)
  - artefato: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-a9c8061e13dc9e11dc8cbb5e6de2c0e628d2c7b3`
- INT_BUILD: `B39A`

## Iteracao atual (12/03/2026 10:11 BRT)
- Novos prints com build `B39A` confirmam `HS` variando enquanto o logo alterna entre quadro visivel/limpo, com baixo deslocamento efetivo.
- Hipotese aplicada: customizacao local de `R2 bit5` em `MSX.c` conflitando com multipage/hscroll no logo.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`
  - `SetScreen()` voltou ao calculo upstream de `ChrTab` com `VDP[2]&MSK` sem limpeza condicional de bit5.
  - `VDPOut()` caso `R#2` idem (remove `R2Base` custom e usa caminho upstream).
- Objetivo: restaurar selecao de pagina por R#2 conforme rotina BIOS durante animacao do logo.
- Build local validado:
  - `make DEBUG=1` (OK)
  - artefato: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-965f7b6300a311b9bc282baa6cf823d77ca85fe5`
- INT_BUILD: `AF9A`

## Iteracao atual (12/03/2026 11:40 BRT)
- Feedback mais recente: animacao continua lenta (~4500 frames), logo aparece no fim com blocos/tarjas e sem padrao odd/even esperado.
- Analise comparativa com BlueMSX:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c::vdpSetScreenMode()` mapeia comandos V9958 assim:
    - `SCR5..8 -> 0..3`
    - `SCR9..12 -> 3` (mapa de SCREEN8)
    - outros modos: `2` apenas com `commandEnable` (`R#25 bit6`), senao `-1`.
- Correcao aplicada:
  - `src/fmsx_local/V9938.c`
    - `VdpCommandScreenMode()` atualizado para refletir o mapeamento acima (principalmente `SCR9..12 -> 3`).
  - `src/fmsx_local/Wide.h`
    - revertido para upstream fMSX (removendo patch experimental de scroll em `RefreshLine6/7` que introduzia artefatos visuais).
- Mantido sem alteracao:
  - calibracao/politica de 60Hz.
  - rotina de `0x99` (sem novos ajustes).
- Build local validado:
  - `make clean && make -j4 DEBUG=1` (OK)
  - artefato: `artifacts/kernel8-issue176.img`
- BUILD_HASH: `cd3b047-01341f70af6d9d011d9ecc4ef6e37dab5ac177ef`
- INT_BUILD: `C944`

## Iteracao atual (12/03/2026 13:56 BRT)
- Solicitacao do usuario: parar tentativa/erro e fechar analise de causa raiz antes de novos patches comportamentais.
- Analise profunda concluida (sem nova mudanca funcional em codigo nesta iteracao), cruzando:
  - disassembly local: `docs/rom-disassembly/msx2plus/MSX2PEXT.ROM.dis`
  - renderer/command engine atual: `src/fmsx_local/Wide.h`, `src/fmsx_local/V9938.c`, `src/fmsx_local/MSX.c`
  - referencias: `third_party/bluemsx/...` e `third_party/openmsx/...`
- Documento tecnico consolidado criado/substituido:
  - `docs/workflow_boot_msx2plus.md`
- Pontos fechados na analise:
  - rotina de espera de comando VDP no boot (`0x2BE4`) confirmada via disassembly;
  - workflow de referencia (BlueMSX/openMSX) documentado com foco em:
    - sincronizacao temporal do command engine,
    - multipage/hscroll/even-odd no render de `SCREEN6/7`;
  - gaps atuais no nosso core mapeados em matriz objetiva.
- Estrategia definida para execucao sem looping:
  1. instrumentacao baseline;
  2. correcao de renderer multipage/odd-even;
  3. correcao de cadencia temporal do command engine;
  4. regressao completa (MSX1/MSX2/MSX2+).
- Build/teste:
  - nao houve novo build nesta iteracao (foco exclusivo em analise e documentacao).

## Iteracao atual (14/03/2026 16:11 BRT)
- Solicitacao do usuario: analisar `scripts/annotate_bios.py` e aplicar anotacoes no disassembly `roms/temp/BIOS.dis`.
- Ajustes realizados na rotina:
  - suporte a arquivo de entrada/saida por argumento de linha de comando;
  - ativacao dos comentarios inline ja definidos no mapa `INLINE_COMMENTS`;
  - filtro adicional para enderecos ambiguos da tabela inicial de `jp`, evitando rotulos enganosos;
  - guarda contra reprocessar arquivo ja anotado, exigindo regenerar o disassembly bruto antes de nova passada.
- Fluxo executado:
  - `z80dasm roms/temp/EXPERT11.ROM > roms/temp/BIOS.dis`
  - `python3 scripts/annotate_bios.py roms/temp/BIOS.dis -o roms/temp/BIOS.dis`
- Resultado:
  - `roms/temp/BIOS.dis` agora contem cabecalho contextual, secoes, comentarios inline em vetores RST e rotulos em rotinas consideradas seguras pelo mapa atual.
  - `CONTEXT.md` foi realinhado para apontar ao handoff correto desta branch.

## Iteracao atual (14/03/2026 16:22 BRT)
- Solicitacao do usuario: investigar regressao em DSK onde discos `360K` leem normalmente, mas discos `720K` listam com `FILES` e falham ao ler arquivos.
- Verificacao de causa:
  - o caminho de selecao de face em `src/fmsx_local/MSX.c` foi comparado com o upstream e permaneceu equivalente;
  - a hipotese de erro basico de `single/double side` ficou enfraquecida porque o `FILES` em discos `720K` ja exige acesso ao root directory atravessando setores na segunda face;
  - o ponto mais provavel passou a ser o watchdog artificial do WD1793, que envelhecia transferencias apenas por polling de `READY`, produzindo falso `LOSTDATA` em baremetal.
- Correcao aplicada:
  - `src/fmsx_upstream_wd1793.c` passou a incluir uma copia local do controlador em vez do `.c` direto de `third_party`;
  - novo arquivo `src/fmsx_local_wd1793.c` criado a partir do upstream para manter `third_party` pristino;
  - em `Read1793(WD1793_READY)`, removido o timeout baseado em contagem de polls no porto `READY`; o latch `IRQ/DRQ` continua exposto normalmente.
- Justificativa tecnica:
  - BlueMSX sincroniza o WD2793 por tempo de sistema, nao por contagem de polls em porta;
  - no host baremetal atual, o loop de polling do DiskROM pode ser mais apertado que a heuristica original do fMSX, causando `Disk I/O error` sem falha real de geometria.
- Validacao local:
  - `make guard-third-party` (OK)
  - `make -j4 DEBUG=1` em `src/` (OK)
- Build local:
  - artefato validado: `src/kernel8.img`
  - BUILD_HASH: `08a6413-4070906ff89f1fb02cb3249cfb5234a5351d2785`

## Iteracao atual (14/03/2026 16:40 BRT)
- Solicitacao do usuario: adicionar suporte Linux ao fluxo oficial `make sdcard` / `scripts/prepare-sd.sh`, antes restrito a `diskutil` no macOS.
- Ajustes aplicados:
  - novo helper compartilhado `scripts/sdcard-common.sh` com abstracoes por plataforma para detectar SO, descobrir volume montado, montar/desmontar, formatar e ejetar disco;
  - `scripts/prepare-sd.sh` adaptado para:
    - continuar usando `diskutil`/`plutil` no macOS;
    - detectar discos elegiveis no Linux via `lsblk`;
    - montar no Linux via `udisksctl` quando disponivel;
    - formatar no Linux via `parted` + `mkfs.vfat`;
    - preservar o fluxo `UPDATE` vs `FORMATAR` e o modo `DRY_RUN`;
  - `scripts/update-sd-incremental.sh` adaptado para resolver `SD_DEVICE` e ejeção em macOS/Linux pelo mesmo helper;
  - `README.md` e `scripts/README.md` atualizados com a nova matriz de dependencias.
- Validacao local:
  - pendente teste funcional com dispositivo real em Linux/macOS;
  - validacao sintatica e dry-run executadas localmente nesta iteracao.

## Iteracao atual (14/03/2026 23:33 BRT)
- Solicitacao do usuario: investigar regressao apos a correcao de disco 720K, com `FILES` funcional e falha em comandos de carga (`LOAD`/equivalentes).
- Diagnostico de regressao:
  - diferenca entre o ponto estavel da correcao WD1793 (`73bde46`) e o `HEAD` atual mostrou **nenhuma alteracao adicional** em `src/fmsx_local_wd1793.c` e `src/fmsx_upstream_wd1793.c`;
  - foi detectada alteracao binaria em `roms/initramfs/DISK.ROM` no commit `29222df`, tornando-se o principal candidato da regressao funcional.
- Correcao aplicada:
  - `roms/initramfs/DISK.ROM` restaurado para a revisao estavel `73bde46`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-65999d684050aa9215546e03509a3f8408d8d309`
  - `DISK.ROM_SHA1:032cb1c1c75b9a191fa1230978971698d9d2a17f`

## Iteracao atual (14/03/2026 23:58 BRT)
- Solicitacao do usuario: iniciar engenharia reversa/disassembly do `SMANBOW2` para tratar problema grave na tela de boot/selecao de load no MSX2+ (captura atual vs esperada + debug overlay).
- Artefatos gerados (caminho canonico):
  - `docs/reverse-engineering/issues/issue-176/README.md`
  - `docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank00.asm` ... `bank31.asm`
  - `docs/reverse-engineering/issues/issue-176/smanbow2/scan_vdp_io.txt`
  - `docs/reverse-engineering/issues/issue-176/smanbow2/scan_reg_patterns.txt`
  - `docs/reverse-engineering/issues/issue-176/smanbow2/scan_strings.txt`
- Baseline da ROM:
  - origem: `roms/games/roms/SMANBOW2.ROM`
  - tamanho: `0x80000` (32 bancos de `0x4000`)
  - SHA1: `00a81872d548a7278b8901608bf12e8f79009bee`
- Achados iniciais relevantes (bank27):
  - trecho `0x51DC..0x51EE` manipula espelho `0xFFE8` e escreve `R#9` via porta `0x99` (`A=0x89`), consistente com controle PAL/NTSC por software;
  - trecho `0x53DD..0x5403` alterna selecao de status via `R#15` e le `in (0x99)`, indicando dependencia forte de semantica de status register/IRQ durante a tela;
  - regiao `0x5408..0x5487` foi isolada como bloco de dados de layout/tile da UI da tela de selecao (nao codigo linear).
- Proximo passo definido:
  - instrumentar trace curto no core para writes em `R#9/R#15/R#18/R#19/R#25/R#26/R#27` e leituras `in (0x99)` durante a tela de selecao, correlacionando com os pontos do bank27 antes de qualquer novo patch comportamental.

## Iteracao atual (15/03/2026 00:09 BRT)
- Solicitacao do usuario: seguir para a instrumentacao curta de VDP focada na tela de selecao/load do SMANBOW2.
- Instrumentacao aplicada (sem alterar comportamento funcional):
  - `src/fmsx_local/MSX.c`
    - novos contadores globais para I/O VDP:
      - reads da porta `99h`;
      - writes das portas `99h` e `9Bh`;
      - writes por registrador VDP (`R#0..R#63`);
      - reads por status register (`S#0..S#15`, conforme `R#15`).
    - incrementos conectados nos caminhos de I/O:
      - `InZ80()` caso `0x99`;
      - `OutZ80()` casos `0x99` e `0x9B`;
      - `VDPOut()` para contagem por registrador.
    - reset de todos os contadores em `ResetMSX()`.
  - `src/fmsx_runtime.h` / `src/fmsx_runtime.c`
    - novos campos em `TFmsxTimingDebug` para expor no overlay:
      - `W9/W15/W18/W19/W25/W26/W27`
      - `S0/S1/S2`
      - `P99R/P99W/P9BW`
  - `src/kernel.cpp`
    - nova linha de overlay `TM6` adicionada com esses contadores.
  - `docs/debug-layer.md`
    - documentada a linha `TM6` e seus campos.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Proximo passo definido:
  - validar em hardware com SMANBOW2 na tela de selecao/load, coletando snapshots de `TM2/TM3/TM6` para correlacao com os pontos do disassembly do bank27 (`0x51DC..0x51EE` e `0x53DD..0x5403`).

## Iteracao atual (15/03/2026 00:19 BRT)
- Solicitacao do usuario: ajustar layout do debug overlay porque as linhas estavam sobrepondo a mailbox.
- Ajustes aplicados no layout:
  - `TM4`: removidos `I0` e `S0` da linha principal.
  - nova linha dedicada `TM4B` criada para `I0`/`S0` (logo abaixo de `TM4`).
  - `TM6` dividido em duas linhas:
    - `TM6A`: contadores de writes (`W9/W15/W18/W19/W25/W26/W27`);
    - `TM6B`: leituras de status e I/O de portas (`S0/S1/S2` + `P99R/P99W/P9BW`).
  - `TM5` reposicionado para manter leitura sequencial apos `TM4B`.
- Rotina de limpeza do overlay atualizada:
  - `ClearDebugOverlay()` agora limpa ate as linhas `17` e `18` para cobrir as novas linhas adicionadas, evitando ghosting ao ativar/desativar debug.
- Documentacao sincronizada:
  - `docs/debug-layer.md` atualizado com `TM4B`, `TM6A` e `TM6B`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)

## Iteracao atual (15/03/2026 BRT)
- Validacao de hardware com 3 prints da tela de selecao do SMANBOW2 com overlay TM4B/TM5/TM6A/TM6B ativo.
- Resultado de layout: confirmado sem sobreposicao com conteudo do jogo em todos os 3 prints. ✅
- Analise dos dados TM6A/TM6B (contadores cumulativos, cap 999):
  - Hipotese "preso no status register errado" refutada: `W15` saturado + `S0/S1/S2` todos com reads
    confirmam que o jogo cicla os registradores de status corretamente via R#15.
  - `W19` escalou de `165` (print 1, titulo) para `999sat` (prints 2-3, transicao/selecao):
    R#19 (IE1 numero de linha horizontal) reprogramado com alta frequencia durante a transicao.
  - `W9=003` estavel: R#9 escrito apenas no init — correto.
  - `W25/W26/W27=002`: sem scroll estendido ativo na selecao.
  - Todos os contadores atingiram o cap 999, impedindo analise de magnitude relativa.
- Acao: conversao de TM6A/TM6B de cumulativo para **delta por frame**:
  - `src/fmsx_runtime.c`: snapshots static locais + diferenca por chamada para os 13 contadores VDP.
  - `src/kernel.cpp`: formato `%03u` -> `%04u`, cap atualizado para 9999.
  - Cada frame exibe atividade do proprio frame, eliminando saturacao precoce.
- Documentacao sincronizada:
  - `docs/debug-layer.md` atualizado com semantica delta por frame para TM6A/TM6B.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK — 624264 bytes)
- Proximo passo:
  - Deploy do novo artefato; captura de print na tela de selecao com TM6A/TM6B mostrando atividade por frame.
  - Foco: `W15`/`W19` por frame e proporcao `S0`/`S1`/`S2` por frame na tela de selecao.

## Iteracao atual (15/03/2026 BRT) — analise delta por frame + freeze confirmado

### Prints coletados (7 + 1 freeze)

Delta TM6A/TM6B por frame validados em hardware. Tabela de achados:

| Print | Tela               | W15/f | W19/f | S0/f | S1/f | S2/f  | P99R/f | P99W/f |
|-------|--------------------|-------|-------|------|------|-------|--------|--------|
| 1     | Titulo START       | 100   | 12    | 24   | 24   | 2796  | 2844   | 648    |
| 2     | Titulo START       | 100   | 12    | 24   | 24   | 2796  | 2844   | 648    |
| 3     | Animacao load      | 155   | 12    | 29   | 29   | 7786  | 7844   | 1744   |
| 4     | Selecao save       | 152   | 12    | 28   | 29   | 7329  | 7386   | 1600   |
| 5     | SAVEFILE 2 (nav1)  | 102   | 10    | 21   | 20   | 5971  | 6012   | 5206   |
| 6     | SAVEFILE 2 (nav2)  | ~0    | ~0    | 17   | 16   | 6457  | 6490   | 9098   |
| 7     | STARDATE 189       | 0     | 0     | 12   | 0    | 0     | 12     | 52     |
| 8     | **FREEZE** (black) | 24    | 0     | 12   | 12   | **0** | 24     | 48     |

### Analise dos dados

**VDP command engine funciona corretamente na selecao:**
- Padrao `S0≈S1 ≪ S2` por frame confirma: o jogo usa outer loop com W15=0→read S#0, W15=1→read S#1, W15=2→**polling tight de S#2 ate CE=0**.
- S2≈100-270× S0/S1 por ciclo de selecao: ~28 polls de S#2 por comando VDP.
- Comandos VDP completam normalmente — nao ha stall no wait-loop.

**W9=0 em todos os frames (delta):** R#9 (PAL/NTSC) escrito so no init. Correto.
**W25/W26/W27=0:** sem scroll estendido ativo during gameplay. Correto.

**Freeze pos-STARDATE (print 8, tela preta):**
- `S2=0`: nenhuma leitura de S#2 → nenhum polling de CE → **nenhum comando VDP ativo**.
- `W15=24, S0=12, S1=12`: ciclo S#0/S#1 continua (12 por tipo = R#15 alterna 0→1→0→...).
- `P99W=48`: exatamente o dobro de W15 — sao apenas os pares address-latch para R#15.
- Diagnostico: o jogo esta preso em loop aguardando evento que nao ocorre. NAO e wait de VDP (S2=0). Candidatos:
  1. **VBlank IRQ nao disparando** (`I0=0` em TM4B indica VBlank desabilitado — confirmar).
  2. **IE1/HBlank stuck** — linha IE1 programada mas IRQ nao entregue.
  3. **Logica de transicao STARDATE→game** com pressuposicao de timing ou estado de hardware que nao se confirma no nosso core.

### Dois problemas distintos a resolver

**Problema 1: Freeze pos-STARDATE (prioritario)**
- Tela fica preta e nao avanca.
- TM6B no freeze: `S2=0`, `S0=S1=12`, `P99W=48` — idle loop, nao VDP.
- Suspeita principal: IRQ (VBlank ou HBlank) nao disparando no ponto certo apos loading screen.
- Proximo passo: verificar `I0` em TM4B e `I1/IA/IH` em TM4 no freeze para confirmar estado de IRQ.

**Problema 2: Corrupção visual (em aberto)**
- A animacao da tela de selecao mostra logo duplicado/distorcido (SCR5/7 com mapeamento errado?).
- Nao foi atacado diretamente — a instrumentacao confirmou que o VDP funciona, mas o *resultado visual* esta errado.
- Suspeita: renderer `SCREEN5..7` com problemas de scroll/page ou odd-even (assunto historico da branch).

### BUILD_HASH atual
- `BUILD_HASH:A4BC` (artefato delta por frame)
- Arquivos modificados nesta sessao: `src/fmsx_runtime.c`, `src/kernel.cpp`, `docs/debug-layer.md`

### Proximo modelo — sugestoes de ataque

1. **Coletar TM4/TM4B no momento do freeze** para confirmar estado de IRQ (`I0`, `I1`, `IA`, `IH`).
2. Se `I0=0` no freeze: verificar por que VBlank IRQ e desabilitado — o jogo debe habilitar antes de entrar no loop de game.
3. Se `I0=1` mas travado: checar `FmsxIE1ArmedCount` e `FmsxIE1EventCount` para confirmar se HBlank esta sendo entregue.
4. Para corrupção visual: investigar `ScrMode` no freeze (TM2 `SM` field) e comparar com comportamento esperado do SCR5/7 do SMANBOW2 em hardware real.

## Iteracao atual (15/03/2026 00:57 BRT)
- Solicitacao do usuario: analisar o disassembly do `SMANBOW2`, localizar a rotina da tela inicial/selecao de save, entender o uso de VDP9958 e corrigir o que faltava no core para remover glitches graficos.
- Rotinas relevantes localizadas no `bank27`:
  - `0x51DC..0x5296`: sequencia de inicializacao/loop da tela inicial; ajusta espelho de `R#9` (`0xFFE8`) e entra no ciclo principal da tela.
  - `0x535B..0x5403`: instalacao do hook em `RST 38h` e handler de IRQ; o handler alterna `R#15` para ler `S#1` e `S#0`, despachando por carry.
  - `0x585E..0x596E`: rotina de setup/update da tela de selecao/save; reprograma `R#23`, `R#19`, `R#8`, `R#2` e `R#1` no meio do frame para raster split/paging.
- Leitura consolidada do uso de VDP pelo jogo:
  - a tela problematica roda em `SCREEN 8` (`SM:08` nos prints);
  - o layout esperado nao e linear: `SCR8` usa VRAM intercalada por plano/paridade, com pixels adjacentes alternando entre os planos de `64KB`;
  - a tela usa `IE1` (`R#19`) + reads de `S#1/S#0` para fazer split de raster e trocar parametros de exibicao no decorrer da linha/frame;
  - o page select visivel no menu passa por `R#2`, enquanto `R#23` participa do reposicionamento vertical fino.
- Gap identificado no nosso core:
  - renderer local de `SCREEN 8` ainda consumia VRAM de forma linear (baseline fMSX), ignorando o layout intercalado usado por BlueMSX/openMSX;
  - `command engine` local em `src/fmsx_local/V9938.c` tambem mantinha o mapeamento linear para `SCR7/SCR8`.
- Correcao aplicada no V9958 local:
  - `src/fmsx_local/Common.h`
    - `RefreshLine8()` agora usa stride de `128 bytes` por linha/plano, alternando pixels entre plano base e `+0x10000`;
    - multipage horizontal de `SCR8` corrigido para alternar a pagina em `+0x8000` dentro de cada plano;
    - `RefreshLine10()` e `RefreshLine12()` ajustados para o mesmo layout intercalado (compartilham a base de VRAM de `SCR8`);
    - novos helpers locais para expandir uma linha intercalada em bytes/paleta.
  - `src/fmsx_local/V9938.c`
    - `VDP_VRMP7()` e `VDP_VRMP8()` alinhados ao mapeamento de VRAM do BlueMSX para `SCR7/SCR8`.
- Justificativa tecnica:
  - a tela inicial do `SMANBOW2` mostrava o logo principal parcialmente correto, mas perdia o bloco `START/CONTINUE` e exibia barra/artefatos;
  - esse sintoma e consistente com leitura/escrita linear numa tela que, no V9958 real, e organizada em planos intercalados; textos pequenos e split por pagina sofrem antes do logo grande.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-229f3e674c7390e3735298d0c21705f8ad4b5ce6` (worktree local ainda nao commitado)
- Pendente:
  - validacao em hardware com o `SMANBOW2` para confirmar se a tela inicial e a selecao de save convergiram para o baseline do BlueMSX e se nao houve regressao visual em outros modos bitmap.

## Iteracao atual (15/03/2026 01:15 BRT)
- Feedback de hardware apos a iteracao anterior:
  - houve melhora parcial na apresentacao, mas a tela inicial continuou corrompida;
  - a selecao de save permaneceu com split/posicionamento incorreto;
  - o jogo ainda trava apos a apresentacao.
- Analise complementar cruzando o `bank27`, BlueMSX e openMSX:
  - o `bank27` reprograma `R#19` e `R#23` repetidamente durante a tela de save para fazer raster split;
  - BlueMSX/openMSX tratam writes em `R#19/R#23` como **reschedule** de `IE1`, sem limpar o latch de `S#1`;
  - no nosso core, writes em `R#19` limpavam `S#1` imediatamente, o que podia abortar a sincronizacao esperada pela rotina de IRQ do jogo;
  - em paralelo, o `ChrTab` dos modos bitmap `SCR7/8/10/11/12` ainda estava sendo baseado no shift legado do fMSX (`R#2 << 11`), enquanto BlueMSX/openMSX usam base `R#2 << 10` e deixam o layout planar/intercalado para o renderer.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`
    - adicionados helpers locais para calcular base/shift de `R#2` conforme semantica de bitmap do V9958;
    - `SetScreen()` e `VDPOut(R#2)` agora usam `R#2 << 10` nos modos bitmap (`SCR5..8`, `SCR10..12`), preservando o mascaramento de `bit5` quando o multipage horizontal esta ativo;
    - writes em `R#19` e `R#23` agora apenas cancelam o edge pendente de `IE1` e limpam a linha de IRQ antiga, **sem limpar `S#1 bit0`**.
- Justificativa tecnica:
  - a mudanca anterior corrigiu parte da leitura intercalada de `SCR8`, mas ainda deixava a base da nametable desalinhada em relacao ao V9958 real;
  - a rotina de split do `SMANBOW2` depende do latch de `S#1` sobreviver a reprogramacoes de `R#19/R#23`, exatamente como fazem BlueMSX/openMSX.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-f33fc13671e6d475b21181896c9f18ffcf1130e6`
- Proximo passo:
  - validar em hardware se o titulo passa a usar a base/paging correta e, principalmente, se a selecao de save deixa de perder o split apos os writes de `R#19/R#23`;
  - se o freeze persistir, o proximo alvo deixa de ser base/paging e passa a ser a temporizacao fina de `S#2 bit5` e do compare de `IE1`.

## Iteracao atual (15/03/2026 01:46 BRT)
- Solicitacao do usuario: implementar o plano completo de investigacao/correcao, incluindo pacote canonico de reverse engineering, trace circular de runtime e alinhamento do V9958 com BlueMSX/openMSX/HDL.
- Entregas desta iteracao:
  - pacote `docs/reverse-engineering/msx2plus/` expandido com:
    - `KANJIBASIC.ROM.dis`
    - `KANJI.ROM.map.txt`
    - `KANJI.ROM.hexdump.txt`
    - `README.md` atualizado com checksums, comandos de regeneracao e papel de cada ROM
  - matriz de correlacao consolidada em `docs/reverse-engineering/issues/issue-176/correlation-matrix.md`
  - trace circular VDP/IRQ no runtime, restrito a build `DEBUG=1`, com eventos de:
    - `IE0`
    - `IE1 arm/fire`
    - writes em `R#19/R#23`
    - reads de `S#1/S#2`
    - inicio/fim de command engine
  - snapshot de debug expandido com:
    - `HR/VR` efetivos
    - fase da linha
    - `IE1 target line` e `delta`
    - odd/even efetivo
    - pagina efetiva de render
    - bancos MegaROM ativos em `4000h-7FFFh` e `8000h-BFFFh`
- Ajustes tecnicos aplicados no core:
  - `src/fmsx_host_stubs.c`
    - `OddPage` deixou de usar a paridade do frame do host e passou a seguir `S#2 bit1` com semantica alinhada ao BlueMSX/openMSX.
  - `src/fmsx_local/MSX.c`
    - `S#2` passou a ser composto com `HR/VR` live para leitura pela porta `99h`;
    - `LoopZ80()` agora alterna `S#2 bit1` por frame e expõe explicitamente a fase ativa/HBlank;
    - trace circular e helpers de diagnostico adicionados;
    - writes em `R#19/R#23`, reads de `S#1/S#2` e eventos de `IE0/IE1` passaram a ser registrados no buffer.
  - `src/fmsx_local/Common.h` e `src/fmsx_local/Wide.h`
    - `RefreshLine7()` foi refeito para layout intercalado de `SCR7` com stride de `128 bytes`, dois planos (`+0x10000`) e troca multipage em `+0x8000`.
  - `src/fmsx_local/V9938.c`
    - `VdpCommandScreenMode()` alinhado ao BlueMSX para `SCR9..12 -> mode 3` e `command-enable -> mode 2`;
    - hooks de trace adicionados para transicoes de `CE`.
  - `src/fmsx_runtime.h/.c` e `src/kernel.cpp`
    - novos tipos/getters para o trace;
    - overlay atualizado para mostrar `EP` em `TM2` e `HR/VR/LP/TL/TD/EO/RP` em `TM4B`.
- Interpretacao consolidada apos a iteracao:
  - o defeito grafico do titulo/save nao era um unico problema de `SCR8`; havia tambem divergencia estrutural em odd/even page e no caminho de `SCR7`;
  - o travamento pos-apresentacao continua suspeito de depender de `S#2`/`IE1`/command engine, mas agora o core grava evidencia suficiente para fechar qual evento falta.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-ddc04e85289ee52d00ed20d7eff03217888ba2b2`
- Proximo passo recomendado:
  - validar em hardware com o novo build e, se o freeze persistir, extrair o ultimo segmento do trace para identificar se a falha final esta em `IE1`, `S#2 bit5/bit6` ou conclusao do command engine.

## Iteracao atual (15/03/2026 02:18 BRT)
- Feedback de hardware apos a iteracao anterior:
  - os sintomas permaneceram essencialmente os mesmos;
  - o titulo continuou corrompido;
  - a selecao de save continuou quebrada/duplicada;
  - o freeze apos a apresentacao permaneceu.
- Reanalise tecnica a partir dos screenshots e das referencias HDL:
  - os overlays mostraram o jogo consultando `S#1` em janelas onde `IE1` aparece desabilitado (`R0 bit4 = 0`);
  - o OCM-PLD e o `V9958-Super` mantem o flag horizontal em `S#1 bit0` como **latch sticky**, independente do enable de IRQ externa;
  - esse latch e limpo por leitura de `S#1`, write em `R#19`, write em `R#0` e no inicio do VBlank;
  - a implementacao local ainda tratava `S#1 bit0` como estado "ao vivo" na HBlank quando `IE1` estava desligado, o que permite multiplas leituras positivas no mesmo evento e casa com os glitches remanescentes do `SMANBOW2`.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`
    - `S#1 bit0` passou a ser tratado como latch horizontal sticky, independente de `IE1`;
    - leitura de `S#1` agora limpa apenas o latch ja ativo, sem cancelar um evento futuro ja armado para a HBlank da linha corrente;
    - writes em `R#0` e `R#19` passaram a cancelar o latch/edge horizontal pendente, alinhando o comportamento ao HDL;
    - write em `R#23` deixou de limpar o latch horizontal;
    - o auto-clear por "fim da janela de coincidencia" foi removido; o clear agora ocorre apenas pelos eventos observados no hardware de referencia.
- Justificativa tecnica:
  - o `SMANBOW2` usa `S#1` como fonte de sincronizacao de raster mesmo sem depender sempre da IRQ externa;
  - com `S#1` live, o mesmo evento podia ser observado mais de uma vez dentro da mesma HBlank, distorcendo o split do titulo/save;
  - com latch sticky, o fluxo fica compativel com o V9958 modelado em HDL, que foi explicitamente ajustado para corrigir flicker do Space Manbow.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-1ade4fe5772af00731380147c51916f5453afb4e`
- Proximo passo:
  - validar em hardware se o titulo/save deixam de repetir o mesmo trigger de `S#1` dentro da HBlank;
  - se o freeze persistir, o alvo seguinte passa a ser o ponto exato de compare/entrega do split (`active line` vs `HBlank`) e nao mais a semantica do latch em si.

## Iteracao atual (15/03/2026 02:31 BRT)
- Feedback de hardware apos o latch sticky de `S#1`:
  - o menu ficou visivelmente mais estavel;
  - os itens de save passaram a ficar legiveis/sem flicker estrutural;
  - ainda restaram distorcao do logo/tela de save e freeze apos a transicao para gameplay.
- Nova leitura do problema:
  - o ganho em estabilidade confirmou que `S#1` era um dos gaps, mas nao o ultimo;
  - a referencia do OCM-PLD cita explicitamente correcoes "por linha" em `VdpR0DispNum` e `VdpR1DispOn` para resolver flicker do Space Manbow;
  - BlueMSX tambem agenda mudancas de modo para a proxima linha (`scheduleScrModeChange()`), em vez de efetiva-las no meio da linha.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`
    - adicionado latch por scanline para estado de display (`FmsxVDPDisplayStateDirty`);
    - writes em `R#0`, `R#1`, `R#18` e `R#25` agora apenas marcam o estado como dirty;
    - `SetScreen()` passa a ser efetivado no inicio da proxima linha ativa, nao imediatamente no write;
    - `ScreenON` ganhou estado latched por linha (`FmsxVDPScreenOnLatched`), atualizado no mesmo ponto.
  - `src/fmsx_local/Common.h` e `src/fmsx_local/Wide.h`
    - o renderer local deixou de usar o bit bruto `R#1 bit6` e passou a usar o `ScreenON` latched por linha.
- Justificativa tecnica:
  - aplicar `R0/R1` no meio da linha permite tearing de modo/display que combina com os artefatos remanescentes no titulo e no split da tela de save;
  - o comportamento line-latched e exatamente o workaround adotado nas referencias HDL para o Space Manbow.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-b3a4c09ddcf14170a25f7b899dad0fd4a1402195`
- Proximo passo:
  - validar em hardware se a distorcao residual do titulo/save diminui com o latch por linha;
  - se o freeze apos o gameplay persistir, o alvo seguinte sera a transicao `gameplay -> tela preta`, com foco em compare `IE1` vs `ScreenON` latched vs conclusao do command engine.

## Iteracao atual (15/03/2026 02:52 BRT)
- Feedback de hardware com o build line-latched:
  - a distorcao do titulo ainda existe;
  - o congelamento segue no ponto em que a gameplay deveria assumir;
  - o print novo mostra `PC:C699`, `SM:08` e `R1:22` na tela preta, indicando engine viva fora da janela do menu, com display ainda desligado.
- Leitura tecnica:
  - o freeze ja nao parece ser um loop preso no titulo/save;
  - a janela de trace VDP/IRQ existente continua capturando os ultimos eventos relevantes do `bank27`, mas isso nao estava visivel no overlay por screenshot;
  - para o fluxo de hardware atual, o dado mais util e o **ultimo evento** do trace imediatamente antes da tela preta.
- Correcao aplicada:
  - `src/fmsx_runtime.h` e `src/fmsx_runtime.c`
    - o snapshot `TFmsxTimingDebug` passou a exportar o ultimo evento do buffer circular VDP/IRQ (tipo, janela, `PC`, scanline, fase da linha, bancos ativos, `R#1`, `R#23`, `S#2`).
  - `src/kernel.cpp`
    - `TM6B` foi reaproveitado para mostrar esse ultimo evento de forma compacta no overlay (`EV/W/PC/SL/LP/B/R1/R23/S2`).
  - `docs/debug-layer.md`
    - documentada a nova semantica do `TM6B`.
- Justificativa tecnica:
  - com `PC` ja em RAM (`C699`) e fora da janela de trace do menu, o proximo screenshot precisa dizer qual foi a ultima transicao VDP/IRQ valida antes do preto;
  - isso reduz a ambiguidade entre: `R#1` nao religado, compare `R#19/R#23` errado, polling de `S#2` ou command engine.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-02b6f03f02079fc2a3925cc42346cc25f112eac6`

## Iteracao atual (15/03/2026 03:03 BRT)
- Feedback de hardware apos expor o ultimo evento em `TM6B`:
  - visualmente nada mudou no titulo/save;
  - `TM6B` continuou zerado (`EV:-- W:-- PC:0000`), entao a instrumentacao nao estava capturando o fluxo real.
- Causa encontrada:
  - o trace VDP/IRQ ainda dependia de um filtro restritivo (`ROMName` + heuristica de janela associada ao `bank27`);
  - o loop principal observado no hardware esta em `PC:47CD` na maior parte do tempo, e a transicao preta cai em RAM (`PC:C698/C699`), fora dessa heuristica;
  - na pratica, o runtime descartava exatamente os eventos que precisavamos ver.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_trace_enabled_now()` passou a registrar sempre em build `DEBUG=1`, sem filtrar por `ROMName`/janela.
- Justificativa tecnica:
  - os eventos que interessam (`R#19`, `R#23`, `S#2`, `IE1`, command engine) sao raros o bastante para caber no buffer circular de 128 entradas;
  - para diagnostico via screenshot em hardware, ter o ultimo evento real vale mais do que uma classificacao de janela que falha.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-1ec6a1dc02e0fcd3326f55a654b71387cb73cd2d`

## Iteracao atual (15/03/2026 03:15 BRT)
- Feedback de hardware consolidado ate aqui:
  - o titulo do `SMANBOW2` continua com aparencia de "stretch 2x" e linhas intervaladas abaixo do menu;
  - a tela de save continua parcialmente distorcida;
  - o jogo ainda congela ao sair da apresentacao para a gameplay, ou imediatamente ao carregar save.
- Nova leitura tecnica:
  - com `S#1` sticky e `R0/R1` latched por linha, o sintoma remanescente passou a combinar mais com **enderecamento de linha/pagina bitmap errado** do que com timing puro;
  - a comparacao direta com BlueMSX mostrou que o caminho local ainda tratava `ChrTab` como ponteiro-base aditivo em `SCREEN5/6/7/8/10/12`, enquanto a referencia preserva apenas os bits de pagina e recompõe os 15 bits inferiores a partir da linha visivel;
  - isso explica melhor o logo "esticado/intercalado" e a composicao errada das janelas do save do que a hipotese anterior de HBlank residual.
- Correcao aplicada:
  - `src/fmsx_local/Common.h`
    - adicionado `V9958BitmapLinePtr()`, que recompõe a base da linha bitmap preservando somente os bits altos de pagina e substituindo os 15 bits inferiores pelo offset de linha (`(Y+VScroll)<<7`);
    - `RefreshLine5`, `RefreshLine6`, `RefreshLine7`, `RefreshLine8`, `RefreshLine10` e `RefreshLine12` passaram a usar esse helper em vez de `ChrTab + lineOffset`.
  - `src/fmsx_local/Wide.h`
    - `RefreshLine6` e `RefreshLine7` wide receberam o mesmo calculo canonico de base por linha.
- Justificativa tecnica:
  - no modelo anterior, somar `lineOffset` sobre `ChrTab` mantinha bits baixos do endereco-base que BlueMSX/openMSX tratam como parte do mascaramento da tabela, nao como deslocamento absoluto;
  - em modos bitmap do V9958, isso desloca a fonte real da linha e produz exatamente o padrao de duplicacao/interleave visto no titulo e na tela de save.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-9650e1f29a68ba7dc0f815277fae62b72803e035`
- Proximo passo:
  - validar em hardware se o titulo deixa de parecer "2x/intercalado" e se a composicao da tela de save aproxima do BlueMSX;
  - se o freeze persistir mesmo com o enderecamento corrigido, a frente volta para a transicao `SM:08`/`R1:22` na entrada da gameplay, com foco no ultimo write que mantem o display desligado.

## Iteracao atual (15/03/2026 03:49 BRT)
- Nova evidencia funcional:
  - o usuario observou que, no fluxo correto do cart, existe uma pequena sintese de voz dizendo `START` imediatamente antes da entrada da gameplay;
  - no core atual essa fala nao acontece e o travamento aparece exatamente nessa mesma transicao.
- Causa raiz consolidada para o freeze de entrada da gameplay:
  - o travamento em `PC:C698/C699` nao era um wait de VDP; ele corresponde ao codigo copiado do `bank00` que executa sequencias AMD Flash (`AA/55/80/30` para erase e `AA/55/A0` para program);
  - `SMANBOW2.ROM` (SHA1 `00a81872d548a7278b8901608bf12e8f79009bee`) estava sendo tratado como `MAP_KONAMI5`, mas BlueMSX/openMSX tratam esse cart como `Manbow2`, com Flash gravavel no ultimo setor de 64KB;
  - sem essa semantica, o jogo entra no loop de verificacao `ld a,(de) / cp (hl) / jr nz,...` e nunca conclui a preparacao do save/cart antes de soltar a gameplay.
- Correcao aplicada:
  - `src/fmsx_mapper_ext.h`
    - novo mapper local `MAP_MANBOW2` (e reserva para `MAP_MANBOW2_2`) sem alterar `third_party`.
  - `src/fmsx_carts_sha_fallback.c`
    - fallback por SHA1 do `SMANBOW2.ROM` original para `MAP_MANBOW2`.
  - `src/fmsx_local/MSX.c`
    - suporte minimo a Flash AMD do cart `Manbow2`:
      - unlock `AA/55`;
      - byte-program `A0`;
      - sector erase `80 ... 30`;
      - area gravavel restrita ao ultimo setor de 64KB;
      - persistencia desse setor em `.sav`.
    - o caminho de mapper passou a manter o bank-switch tipo Konami SCC, mas agora desvia writes de programacao/erase para a Flash antes de interpretar banco;
    - o ciclo de `LoadCart()` passou a carregar/salvar o setor gravavel do cart e limpar recursos dedicados ao trocar/ejetar cartucho.
- Impacto esperado:
  - destravar a transicao entre apresentacao/save e gameplay;
  - permitir que a rotina do cart conclua a atualizacao/verificacao da Flash em vez de ficar presa em RAM;
  - a fala `START` passa a ser um marcador funcional util para validar que o fluxo saiu do loop de programacao.
- Limitacao atual:
  - esta iteracao ataca o freeze do cart e a persistencia do save;
  - a distorcao visual do titulo/save ainda pode permanecer parcialmente, porque ela pertence ao gap remanescente de renderer/timing do V9958.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-8e9643bbbd8625fc14149196f5870d8197203926`
- Proximo passo:
  - validar em hardware se o gameplay finalmente inicia e se o cart deixa de travar ao selecionar save;
  - se o freeze desaparecer mas a fala `START` ainda nao sair, isolar o bloco de audio/cart ports como frente separada do renderer.

## Iteracao atual (15/03/2026 20:36 BRT)
- Feedback de hardware mais recente:
  - o `SMANBOW2` continua sem chegar na gameplay;
  - o titulo permanece com aparencia de imagem "esticada 2x"/intercalada;
  - o overlay segue caindo no mesmo loop em `PC:C698/C699`, indicando que a primeira emulacao minima da Flash ainda nao fechou a rotina de verificacao do cart.
- Refinamento tecnico aplicado no cart `Manbow2`:
  - o primeiro suporte local de Flash AMD reconhecia a sequencia por endereco Z80 absoluto (`4555h/42AAh`) e ainda descartava writes que passavam pela janela do SCC;
  - a referencia do openMSX (`RomManbow2` + `AmdFlash`) faz diferente:
    - todo write em `4000h-BFFFh` vai para a Flash;
    - writes na janela do SCC vao **para SCC e para Flash ao mesmo tempo**;
    - o unlock AMD e conferido por `addr & 07FFh == 0555h/02AAh`, isto e, pelo offset real dentro da Flash, nao pelo endereco Z80 absoluto da pagina atual;
    - o chip tambem aceita `F0` (reset) e `AA/55/90` (autoselect).
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`
    - decoder da Flash `Manbow2` alterado para casar comandos por offset real da Flash (`& 07FFh`) em vez de `4555h/42AAh` fixos;
    - adicionado modo de leitura `AUTOSELECT` com respostas minimas de `manufacturer/device/sector protect` compatveis com `AM29F040B`;
    - `F0` e `AA/55/F0` agora retornam o cart para modo `READ`;
    - writes na janela SCC (`9800h-9FFFh`) deixaram de consumir o fluxo no mapper `Manbow2`: o SCC continua recebendo o write, mas a Flash e o bank-switch tambem o recebem, como na referencia;
    - no caminho `MAP_MANBOW2`, o bank-switch tipo Konami passa a acontecer mesmo quando o write tambem foi interpretado como trafego da Flash.
- Justificativa tecnica:
  - a rotina em RAM do `bank00` que prepara save/cart faz erase/program e depois entra em loops de comparacao direta (`ld a,(de) / cp (hl) / jr nz,...`);
  - se o unlock/program nao cair no offset correto da Flash, ou se um write emitido na janela SCC nao chegar ao chip, o valor lido em `de` nunca converge e o fluxo morre exatamente em `C698/C699`, que e o sintoma visto no hardware.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-af3fe5925544d96d1ccd1c8ea8f7f908f5b33bd8`
- Proximo passo:
  - validar em hardware se o loop de Flash finalmente sai e se a fala `START` reaparece antes da gameplay;
  - se o freeze persistir mesmo com o decoder da Flash alinhado, revisar o trecho em RAM ao redor de `C698/C699` para descobrir qual endereco de `de` ainda nao esta convergindo;
  - a distorcao visual do titulo/save continua como frente separada do renderer V9958.

## Iteracao atual (15/03/2026 21:06 BRT)
- Feedback de hardware mais recente:
  - o build anterior continuou travando no mesmo ponto (`PC:C698/C699`);
  - visualmente nada mudou no titulo/save;
  - o overlay antigo ainda nao mostrava o dado decisivo para o freeze do cart: banco efetivo em `4000h` e ultima operacao da Flash.
- Refinamento tecnico aplicado nesta rodada:
  - revisao do trecho em RAM mostrou que o loop de verify continua exatamente no `bank00:6CBB`, e os helpers copiados em RAM usados antes dele sao:
    - `CBCC -> bank00:71EF`: seleciona apenas o banco de `5000h`;
    - `CC4E -> bank00:7271`: seleciona `5000h/7000h/9000h/B000h` em sequencia (`A, A+1, A+2, A+3`);
    - para o save, o jogo chama `CC4E(0x38)`, portanto espera ler/escrever em `4000h` com bancos `38/39/3A/3B`, isto e, no setor final `0x70000+`.
- Instrumentacao adicionada:
  - `src/fmsx_local/MSX.c`
    - telemetria dedicada da Flash `Manbow2`: ultima operacao (`READ/RESET/AUTOSELECT/PROGRAM/ERASE/CMD`), ultimo slot, ultimo endereco Z80, ultimo offset absoluto, ultimo valor escrito/lido, estado/modo internos e contadores de `read/program/erase`;
    - reset da telemetria ao reprovisionar/liberar o cart, para evitar screenshot com evento antigo apos reset.
  - `src/fmsx_runtime.h`
  - `src/fmsx_runtime.c`
    - novo snapshot com:
      - registrador primario de slots (`A8`);
      - `EnWrite` efetivo da pagina `4000h-7FFFh`;
      - slot logico e `ROMType` do cart ativo em `P1`;
      - bancos correntes em `4000h/6000h/8000h/A000h`;
      - ultimo estado observado da Flash `Manbow2`.
  - `src/kernel.cpp`
    - nova linha `TM6C` no overlay com o diagnostico direto do cart/Flash:
      - `A8`, `EW`, `C/T`, `B`, `F`, `S/M`, `A/O`, `V:w/r`.
- Justificativa tecnica:
  - com `P1:1-0` ja estavel no overlay, o proximo diagnostico deixou de ser "qual slot" e passou a ser "qual banco/offset a pagina `4000h` realmente enxerga no instante do loop";
  - `TM6C` separa imediatamente tres cenarios que antes pareciam iguais por screenshot:
    - a pagina `4000h` saiu do cart;
    - o cart permaneceu, mas com bancos errados;
    - o comando AMD entrou, mas o readback da Flash nao converge com o byte programado.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Proximo passo:
  - validar em hardware e capturar a nova linha `TM6C` durante:
    - titulo;
    - selecao de save;
    - tela preta/travamento em `C698/C699`;
  - com `TM6C`, decidir entre corrigir:
    - banco efetivo do cart;
    - write path da Flash;
    - ou readback da Flash apos `PROGRAM`.

## Iteracao atual (15/03/2026 21:22 BRT)
- Causa raiz adicional fechada no loader:
  - o fallback SHA1 para `SMANBOW2.ROM` ja retornava `MAP_MANBOW2`, mas `LoadCart()` ainda usava a condicao antiga `Type>=MAP_GUESS`;
  - como `MAP_GUESS` do fMSX e `8`, isso fazia os novos tipos locais `MAP_MANBOW2=9` e `MAP_MANBOW2_2=10` entrarem de novo no caminho de autodeteccao e serem rebaixados imediatamente para um mapper heuristico (`Konami5`, na pratica);
  - esse detalhe explica por que varias builds "sem mudanca visual" continuavam travando em `PC:C698/C699` mesmo com a Flash `Manbow2` ja implementada no core: o cart nao permanecia no mapper novo apos a carga.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`
    - `LoadCart()` agora reaplica `GuessROM()` apenas quando `Type==MAP_GUESS`, e nao mais para qualquer tipo `>= MAP_GUESS`;
    - tabelas locais relacionadas a nome/heuristica de mapper foram ampliadas para o range estendido (`MAP_MANBOW2`, `MAP_MANBOW2_2`), evitando que a extensao local ficasse parcialmente fora do dominio conhecido do arquivo;
  - `src/kernel.cpp`
    - `ClearDebugOverlay()` passou a limpar tambem a linha `19`, para a nova `TM6C` nao herdar lixo visual entre frames.
- Justificativa tecnica:
  - esta e a primeira rodada em que o `SMANBOW2` deve realmente permanecer carregado como `Manbow2` do inicio ao fim do boot, em vez de acertar no fallback SHA e em seguida voltar silenciosamente ao mapper heuristico;
  - portanto, e tambem a primeira build em que faz sentido esperar mudanca real no loop de verify da Flash em `C698/C699`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1` (OK)
  - artefatos atualizados: `artifacts/kernel8-issue176.img` e `artifacts/kernel8-default.img`
- Rastreabilidade:
  - `BUILD_HASH:29222df-9abc785e0018636cf939e6f839f7822a2fb6a372`
- Proximo passo:
  - validar em hardware se o freeze finalmente sai de `PC:C698/C699`;
  - se a gameplay ainda nao entrar, usar `TM6C` ja funcional na linha 19 para verificar se o write path da Flash esta ativo e qual offset/banco o helper em RAM esta tentando programar;
  - manter a distorcao visual do titulo/save como frente separada do renderer V9958.
