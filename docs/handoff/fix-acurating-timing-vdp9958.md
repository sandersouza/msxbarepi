# Handoff Persistente da Branch fix-acurating-timing-vdp9958

Ultima atualizacao: 11/03/2026 (ciclo 19:20 BRT)

## Objetivo desta memoria

Registrar estado tecnico e operacional desta branch para continuidade entre sessoes, mesmo sem historico de chat.

## Estado atual resumido

- Branch ativa: fix-acurating-timing-vdp9958
- Foco: fidelidade de timing/VDP no boot MSX2/MSX2+ e estabilidade de boot/runtime.
- Sintoma principal em hardware: MSX2/MSX2+ passam do boot screen e travam; no MSX1 nao trava o RPi, mas nao aparece viewport.
- Hipotese recente confirmada por analise de codigo: regressao de ponteiro de sprite em modos de texto/tile apos refactor de composicao de scroll.

## Diagnostico tecnico confirmado (11/03)

Em src/fmsx_local/Common.h, funcoes RefreshLine1() e RefreshLine3() foram migradas para pipeline BgRaw + V9958ComposeScrolledLine256().

No codigo antigo, o ponteiro de linha (P) era avancado durante o loop de renderizacao e a chamada de sprite usava P-256 para voltar ao inicio da linha.

No codigo novo, P nao e mais avancado durante a composicao (escrita direta em P[0..255]), mas a chamada antiga permaneceu. Isso deslocava escrita de sprites para memoria incorreta.

Correcao aplicada:

- RefreshLine1(): Sprites(Y,P-256) -> Sprites(Y,P)
- RefreshLine3(): Sprites(Y,P-256) -> Sprites(Y,P)

Impacto esperado:

- Eliminar corrupcao de framebuffer/linha em SCREEN1/SCREEN3.
- Recuperar viewport no MSX1 e reduzir chance de lock em fluxos que passam por esses modos no MSX2/MSX2+.

## Contexto de alteracoes anteriores da branch

- fmsx_runtime_step_frame() foi alterado para rodar fronteira por RunZ80() unico por passo, com quit por janela de VBlank (g_fmsx_quit_after_vblank=1).
- Foi tentada abordagem de RTC virtual e politicas de quit/frame mais agressivas; houve regressao de freeze e parte desse experimento foi revertida.
- Tambem existem mudancas de VDP/timing e politica NTSC em src/fmsx_local/MSX.c, alem de ajustes em src/fmsx_local/V9938.c e src/fmsx_local/Common.h.

## Build e rastreio mais recente

- Comando de build usado: make -j4 DEBUG=1
- Build mais recente validado localmente: OK
- Artefato principal: artifacts/kernel8-default.img
- BUILD_HASH registrado: a9fcf0e-c7182027280a192642e4b921d338792ddfec8d53

## Estado desta iteracao (11/03/2026 19:20 BRT)

- Validacao de contexto concluida via AGENTS.md + CONTEXT.md + este handoff.
- Confirmado em diff que a correcao do ponteiro de sprites em SCREEN1/SCREEN3 permanece aplicada em src/fmsx_local/Common.h (`Sprites(Y,P)`).
- Nao houve novo commit neste ciclo; alteracoes seguem locais no working tree.

## Comando oficial para preparar SD

KERNEL_IMG=artifacts/kernel8-default.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh

## Proximos passos recomendados

1. Validar em hardware se viewport do MSX1 voltou e se MSX2/MSX2+ ainda travam no mesmo ponto.
2. Se ainda travar, coletar screenshot do overlay no ponto de travamento e registrar F/PC/ScanLine/R26/R27.
3. Isolar a proxima investigacao em um eixo por vez:
	- eixo A: timing/quit de frame em LoopZ80
	- eixo B: composicao de linhas/mascara/sprites em modos VDP
	- eixo C: mapeamento de portas S1985/RTC e efeitos colaterais de boot
4. Evitar combinar mudancas de RTC virtual + politica de quit + renderer na mesma iteracao.

## Riscos e observacoes

- Existem multiplas mudancas nao relacionadas no working tree (docs, scripts, roms, .gitignore e outros). Nao misturar com correcoes de timing sem necessidade.
- CONTEXT.md estava apontando para caminho absoluto de outro workspace. Ponteiro foi alinhado para este handoff de branch.

## Checklist rapido para proxima sessao

- Confirmar PWD em /Users/sandersouza/Developer/msxbarepi antes de build.
- Rodar make -j4 DEBUG=1.
- Gerar BUILD_HASH apos build para rastreio.
- Testar em hardware com o kernel gerado.
- Atualizar este arquivo com:
  - sintomas observados
  - arquivo(s)/funcao(oes) alterados
  - resultado do build
  - BUILD_HASH novo
