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
