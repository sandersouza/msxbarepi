# Handoff - branch `214-gap-analysis-scc-sccplus-space-manbow2`

Data: 2026-03-20

## Contexto atual
- Milestone aberta: `#24 - Melhorias audio cart SCC/SCC+`
- Branch ativa: `214-gap-analysis-scc-sccplus-space-manbow2`
- Issue ativa: `#214 - [P0] Fechar gap analysis SCC/SCC+ vs openMSX/blueMSX usando Space Manbow 2`
- Baseline funcional de referencia para `SMANBOW2`: estado estavel recuperado na trilha da `#201`, a preservar antes de qualquer mudanca em SCC/SCC+.

## Milestone e issues abertas
- `#214` Gap analysis SCC/SCC+ com `Space Manbow 2`
- `#215` Core SCC/SCC+ compativel para sample streaming do `START!`
- `#216` Cartucho `Konami SCC+` e `Dual SCC+` no runtime/menu
- `#217` Validacao em hardware e regressao controlada

## Decisoes fechadas
- O primeiro `Konami SCC+` sera tratado como expansao interna.
- `Dual SCC+` usara o slot B e deve falhar/bloquear quando houver cartucho ja carregado nesse slot.
- Referencias obrigatorias: `openMSX`, `blueMSX` e disassemblies locais do `Space Manbow 2`.
- Nesta milestone, mudancas em VDP/boot/pacing ficam fora de escopo, salvo regressao diretamente causada pelo trabalho de SCC/SCC+.

## Estado operacional
- Espelho local criado em `docs/milestones/m24/`.
- Milestone remota `#24` criada no GitHub.
- Issues remotas `#214` a `#217` criadas e vinculadas a milestone.
- Issues adicionadas ao projeto `MSX BarePI`.
- Branch da issue `#214` criada via `gh issue develop` e sincronizada com `origin`.
- PR remoto aberto para review: `#218 - Issue #214: fechar gap analysis SCC/SCC+ vs openMSX/blueMSX`
- Item `#214` no projeto atualizado para `In review`.

## Achados consolidados da #214
- Baseline funcional a preservar:
  - ancora de boot/VDP vinda do rollback para `cf021ce` na trilha da `#176`;
  - ancora funcional de `Manbow2/SCC` vinda da `#201`, validada em hardware pela build `7003` (`BUILD_HASH:68fd7fb-ab9f9bec237dc017c77bc8f3665a3b7b4ab6a19a`, `TXTDBG BUILD:7003`).
- Diagnostico do core local:
  - `src/fmsx_local_scc.c` ainda e essencialmente o `SCC.c` do fMSX, com unica diferenca local de balanceamento de volume;
  - o runtime atual trata `scc_cart` apenas como gate de mixer, nao como presenca real de cartucho/chip.
- Comparacao com referencias:
  - `openMSX` e `blueMSX` implementam modos distintos de chip (`Real`, `Compatible`, `Plus`), deformation register, rotacao/read-only e semantica de `freq/volume` relevante para sample streaming;
  - `RomManbow2` e `romMapperMegaFlashRomScc.c` confirmam que o `Space Manbow 2` deve continuar em SCC comum, so na janela `9800h-9FFFh`.
- Alvo do disassembly para a voz `START!`:
  - `docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank06.asm:1740` contem `ld de,09800h ;4884`, unico alvo direto e confiavel da trilha SCC no material reverso atual;
  - as rotinas de boot em `bank00.asm` (`419b`, `41a2`, `7205`, `728a`) confirmam o padrao de bank-switch `9000h/B000h`, mas nao mudam a conclusao de que o sample esperado do jogo opera sobre SCC comum.
- Conclusao fechada:
  - a ausencia do `START!` hoje aponta para gap de semantica do chip SCC no core local, nao para falta de `SCC+` no mapper `Manbow2`.

## Plano de continuidade
- `#215`: portar para o core local o comportamento de SCC/SCC+ ausente, inspirado em `openMSX` e `blueMSX`, preservando intacto o mapper `Manbow2`.
- Instrumentacao prevista:
  - somente UART;
  - eventos agregados `SCC MODE`, `SCC WAVE`, `SCC FV`, `SCC DEF`;
  - sem expandir overlay HDMI nesta rodada.
- `#216`: tratar separadamente o modelo de cartucho/menu (`Konami SCC+`, `Dual SCC+`), ja que isso nao explica o `START!` do `Space Manbow 2`.

## Proximo passo imediato
- Iniciar a `#215` com foco estrito em semantica de chip SCC/SCC+, usando `Space Manbow 2` como teste canonico da voz `START!`.
