# Issue #82 - Epic: Auditoria comparativa do V9958 stock

- URL: https://github.com/sandersouza/msxbarepi/issues/82
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:video`, `area:emulation`
- Estado local atual: EM PROGRESSO

## Objetivo atual
Transformar a `#82` na issue-epic da auditoria comparativa do `V9958 stock`, usando `blueMSX` como referência software, `V9958-Super` como referência HDL/semântica stock e o nosso core local como alvo da análise.

## Escopo da trilha
- escopo fechado em `V9958 stock`
- sem incluir `R#29+`, modos super ou extensões próprias do `V9958-Super`
- camada de descoberta antes da camada de correção

## Documento canônico
- Matriz central da trilha:
  - [v9958-stock-compare-matrix.md](/Users/sandersouza/Developer/msxbarepi/docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md)
- Evidências auxiliares da `#82`:
  - [README.md](/Users/sandersouza/Developer/msxbarepi/docs/reverse-engineering/issues/issue-82/README.md)

## Sub-issues da trilha
- [#231 - Criar matriz comparativa do V9958 stock vs blueMSX e V9958-Super](https://github.com/sandersouza/msxbarepi/issues/231)
- [#232 - Fechar auditoria de protocolo I/O, registradores e status do V9958 stock](https://github.com/sandersouza/msxbarepi/issues/232)
- [#233 - Fechar gap analysis do command engine e timing do V9958 stock](https://github.com/sandersouza/msxbarepi/issues/233)
- [#234 - Fechar gap analysis do renderer V9958 stock (scroll, multipage, odd/even e addressing)](https://github.com/sandersouza/msxbarepi/issues/234)
- [#235 - Validar corpus dinâmico do V9958 stock com telemetria já existente](https://github.com/sandersouza/msxbarepi/issues/235)
- [#236 - Consolidar backlog implementável dos gaps confirmados do V9958 stock](https://github.com/sandersouza/msxbarepi/issues/236)

## Checklist da epic
- [x] Converter a `#82` em umbrella da auditoria stock do `V9958`
- [x] Criar as 6 sub-issues da camada de descoberta
- [x] Vincular `#231..#236` como sub-issues da `#82`
- [x] Criar a matriz canônica da trilha
- [ ] Fechar a leitura estática dos blocos de I/O, status, engine e renderer
- [ ] Fechar a validação dinâmica mínima com telemetria existente
- [ ] Consolidar o backlog implementável
- [ ] Abrir issues reais de implementação derivadas dos gaps confirmados

## Iteração 2026-03-10 (branch `fix-acurating-timing-vdp9958`)

- Ajustado renderer local do fMSX (`src/fmsx_local`) para aplicar scroll horizontal V9958 com suporte a multipágina em `SCREEN 5/6/7`:
- `R25 bit0` habilita largura virtual dupla (2 páginas).
- `R26` usa faixa estendida em multipágina e mantém modelo coarse+fine.
- `R27` segue display-shift com border-fill à esquerda.
- `R25 bit1` mantém máscara de borda esquerda sem alterar MSX1/MSX2.
- Confirmado foco do teste `Gradius2E/Nemesis2E` em `SCREEN 4` (modo tile compatível com MSX1 + scroll HW no V9958).
- Aplicado o mesmo modelo completo de `R25/R26/R27` em `RefreshLine4()`:
- `R25 bit0` passa a habilitar largura virtual de 512px no `SCREEN 4` (duas páginas horizontais).
- Leitura da segunda página via ponteiro de scroll (`+0x8000`) com wrap de VRAM.
- Composição final usa `Src = X - Fine + Coarse` com `border-fill` e máscara de borda esquerda (`R25 bit1`).
- Nova telemetria de hardware (overlay `TM2`) durante jogo indicou `SM:02` no cenário sem scroll.
- Aplicado também o modelo completo de `R25/R26/R27` em `RefreshLine2()` para cobrir `SCREEN 2`:
- largura virtual 256/512 conforme `R25 bit0`;
- leitura de segunda página com `V9958ScrollPagePtr(...,0x8000)` quando multipágina;
- composição por pixel com `Src = X - Fine + Coarse` e máscara de borda esquerda (`R25 bit1`).
- Risco aberto: boot screen MSX2+ continua ausente; provável dependência de cadeia completa SubROM/Kanji BASIC + rotina de interrupção por linha (não apenas renderer de `SCREEN 5`).
- Instrumentação ampliada no overlay `TM2` para diagnóstico de boot screen:
- adicionados `R19`, `I1` (IE1 enable em `R0`) e `F1` (flag de line coincidence em `S#1`) para confirmar execução da rotina de line interrupt no boot.
- adicionados `RT:r/w` + `RR/RM` para contar acessos do BIOS ao RTC (`B5h`) e observar registrador/mode ativos em runtime; após ajuste de layout, `RR/RM` ficaram na `TM3`.
- overlay dividido em `TM2` + `TM3` para evitar sobreposição horizontal com mailbox/viewport em HDMI durante debug.
- `TM3` ganhou flags históricas de seleção de slot (`KB.../d` e `J.../c`) para confirmar se o boot chegou a selecionar `3-1` (KANJIBASIC) e `0-3` (MSX-JE) em algum momento após reset.
- Ajuste de fidelidade do registrador de subslot (`0xFFFF`): leitura agora retorna `0xFF` quando o primário selecionado não é expandido; escrita em primário não-expandido também é neutralizada, evitando detecção incorreta de subslot pela BIOS.
- Adicionado indicador `KB` no `TM2` para confirmar mapeamento de `KANJIBASIC` em `slot 3-1`.
- `TM2` agora também exibe integridade/seleção do KANJIBASIC (`KB:a/b/c`), slot ativo da página `4000h` (`P1`) e estado de `DISK.ROM` (`D`) para eliminar dúvida de sobrescrita.
- Loader de BIOS/EXT ganhou fallback de nomes de SubROM (`MSX2SUB.ROM`/`SUBROM.ROM`) para MSX2/MSX2+.
- Correção de slot mapping no reset MSX2+ (baseado no `Sony_HB-F1XDJ.xml` do openMSX):
- `KANJIBASIC.ROM` passa a ser carregado (quando presente) em `MemMap[3][1][2..5]` (`0x4000-0xBFFF`).
- Quando `KANJIBASIC` está ativo, o caminho de `DISK.ROM` não sobrescreve `slot 3-1:4000h-7FFFh`, preservando a rotina de boot logo.
- Runtime de `disk rom off` agora mantém esse mapeamento no MSX2+ para não apagar a área de startup.
- Alias de VFS/initramfs ampliados para `KANJIBASIC` e `MSX2P SUBROM` (`HB-F1XDJ_*`, `FS-A1FX_*`).
- Correção adicional (confirmada por telemetria `KB:1/0/1 D:1`): guard de proteção do `KANJIBASIC` no caminho `PATCHBDOS` passou de `MODEL(MSX_MSX2P)` para teste em `NewMode` durante `ResetMSX()`, evitando sobrescrita por `DISK.ROM` quando `Mode` ainda está no estado antigo.
- Correção de boot chain: patches de BIOS/BDOS (`ED FE C9`) agora só são aplicados quando `PATCH_Z80` está ativo. No build baremetal atual, sem `PatchZ80()`, esses patches convertiam entradas da tabela de vetores da BIOS em `RET` imediato e podiam pular partes do startup MSX2+.
- Ajuste de fallback de RTC sem `CMOS.ROM`: para MSX2+ foi adicionado default explícito no banco 2 (`RTC[2]`) para evitar estado zerado que pode desabilitar fluxo de startup logo em alguns firmwares.
- Decisão de baseline para MSX2+ nesta issue: usar ROM set Sony HB-F1XDJ no empacotamento do `initramfs` (nomes canônicos já esperados pelo runtime), sem alterar a ordem de fallback do loader.
- Correção de fidelidade do modelo derivado (slot mapper): removidos hardcodes residuais de RAM mapper `3-2` no core (`PSlot/SSlot` e load-state), passando a usar `RAMMapperSubSlot()` em todo o caminho; no perfil MSX2+ isso fixa o RAM mapper em `3-0` como no `Sony_HB-F1XDJ.xml`.
- `StartMSX()` agora considera `DiskROMSubSlot()` ao detectar presença de DiskROM para cargas auxiliares (`MSXDOS2.ROM`), evitando assumir `3-1` quando o modelo ativo é MSX2+ (`3-2`).
- Runtime de `disk rom off` passou a desmapear `DISK.ROM` no subslot correto por modelo (`3-1` em MSX2, `3-2` em MSX2+), mantendo o guard de Kanji BASIC apenas para o caso de conflito real de subslot.
- Adicionado stub de `Reset Status Register` em `0xF4` para perfil MSX2+ (sem inverter, seguindo semântica do openMSX para HB-F1XDJ), com reset em `0x00`; antes o core retornava `NORAM` (`0xFF`) nesse porto.
- Correção de page stride no `SM:06` (`SCR 6` interno do fMSX, `512x192x4`): em multipágina (`R25 bit0`) a segunda página horizontal deve usar offset `+0x8000` no layout de VRAM do fMSX local. O uso de `+0x10000` nesse caminho gerava leitura de página errada (blocos pretos/recortes) durante a animação de boot.
- Ajuste adicional de gate de multipágina (modelo openMSX): rotação horizontal em duas páginas agora só ativa quando `R25 bit0` **e** `R2 bit5` estão ligados; antes o core ativava multipágina apenas por `R25`, o que podia misturar página vazia em `SCREEN 6` durante o boot logo.
- Overlay de diagnóstico VDP atualizado para fechar hipótese de boot:
  - `TM2` agora mostra `R2`, `MP` (multipágina real = `R25 bit0 && R2 bit5`) e `DP` (display page).
  - `TM3` agora mostra estado do command engine (`C/CE/TR`) e contadores `CS/CP`, onde `CP` conta inícios de cópia VRAM->VRAM (`LMMM/HMMM/YMMM`).
- Correção no renderer `NARROW` para `SM:06/SM:07` (`RefreshLine6/RefreshLine7`): scroll horizontal V9958 por pixel passou a ser aplicado também nesses modos, com leitura de página extra em multipágina (`+0x8000` no `SM:06`, `+0x10000` no `SM:07`).
- Helpers de scroll 512 ajustados para unidade de pixel do VDP (`Coarse=R26<<3`, `Fine=R27[2:0]`, máscara esquerda baseada em `8-Fine`), removendo deslocamento duplicado que atrasava/desalinhava composição em `MSX2+`.
- Correção adicional de base de tabela (`ChrTab`) no core local: com multipágina ativa (`R25 bit0` + `R2 bit5`) os caminhos `SetScreen()` e `VDPOut(R#2)` agora mascaram `R2 bit5` para não deslocar indevidamente a base VRAM em `SM:06/SM:07`; isso alinha o comportamento ao modelo BlueMSX/openMSX em que esse bit vira seletor de página horizontal.
- Overlay de diagnóstico ganhou `TM4` para acelerar triagem do boot MSX2+ sem depender de UART:
  - `I1:a/b` contabiliza eventos de coincidência de linha vs. acks por leitura de `S#1`.
  - `KJ/KR/KW/KN` indica presença de `KANJI.ROM`, tráfego em `D8h/D9h` e leituras nulas.

## Referências Técnicas Utilizadas

- Base upstream fMSX: `third_party/fmsx/fMSX/Common.h`, `third_party/fmsx/fMSX/Wide.h`, `third_party/fmsx/fMSX/MSX.h`
- Mapeamento de máquina de referência: `third_party/openMSX/share/machines/Sony_HB-F1XDJ.xml`
- Notas de arquitetura recuperadas: `docs/recovery-openmsx-chat-summary.md`
- Modelo de scroll fino V9958 (display-shift): `~/Library/Application Support/Code/User/workspaceStorage/.../v9958-fine-scroll-model.md`

## Validação Manual Recomendada (hardware)

1. Bootar em perfil `MSX2+` com BIOS chain completa (BIOS + EXT/SUB + Kanji quando disponível).
Resultado esperado: sequência de boot sem regressão visível em relação ao baseline da issue.
2. Rodar Xevious (SCREEN 4) e observar scroll fino horizontal.
Resultado esperado: scroll fino presente, sem jitter grosseiro por linha.
3. Rodar Nemesis2E (cenas com scroll horizontal contínuo).
Resultado esperado: progressão de scroll fino mais contínua, incluindo transição de páginas sem salto de 8px.
4. Revalidar jogo MSX1 e MSX2 já estável do baseline (sanity check).
Resultado esperado: sem regressão visual óbvia fora do perfil MSX2+.

- Ajuste de throughput do command engine V9938 para MSX2+: o build deixou de incluir `third_party/fmsx/fMSX/V9938.c` diretamente e passou a usar cópia local `src/fmsx_local/V9938.c` (via `src/fmsx_upstream_v9938.c`), com `LoopVDP()` aplicando quantum maior em MSX2+ (`50000` vs `12500`) para remover lentidão extrema da animação de boot logo.

- Ajuste de timing boot MSX2+: turbo efetivo agora força 100% somente enquanto o logo roda em SCREEN 6 com máscara esquerda ativa (R25 bit1), retornando ao turbo configurado após sair desse estado.
- Ajuste visual de máscara em SCREEN 6/7 (narrow+wide): pixels da faixa mascarada usam a cor do backdrop scrolleado da própria linha, reduzindo diferença de tom entre bloco de ocultação e fundo.

- Aceleracao cirurgica da fase de boot logo MSX2+: quando `PC` esta em `0x7A00-0x7FFF` (KANJIBASIC), `SM:06` e mascara esquerda (`R25 bit1`) ativa, `fmsx_runtime_step_frame()` executa burst de 6 frames por tick para reduzir tempo real de boot sem alterar runtime normal de jogos.

## Iteração 2026-03-29 (branch `82-auditar-registradores-v9958`)

- A issue foi reestruturada como epic da auditoria comparativa do `V9958 stock`.
- Foram abertas e vinculadas como sub-issues:
  - `#231` matriz canônica
  - `#232` I/O/registradores/status
  - `#233` command engine/timing
  - `#234` renderer/addressing
  - `#235` validação dinâmica mínima
  - `#236` backlog implementável
- A matriz canônica passou a viver em `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`.
- O diretório de evidências da trilha passou a viver em `docs/reverse-engineering/issues/issue-82/`.

- Repro reclassificado: `POKE -1,170` nao escreve em `R#1`; ele grava `0xAA` no seletor de subslot em `0xFFFF`.
- Problema pratico tratado nesta rodada: no perfil `MSX2+`, esse `POKE` passou a desmontar a RAM de `8000h-FFFFh` porque a topologia atual usa `RAM mapper = 3-0` e `DISK.ROM = 3-2`.
- Tentativa descartada:
  - foi testado um alias de compatibilidade em `3-2` para manter RAM nas paginas `0`, `2` e `3` sem mover `DISK.ROM`;
  - a hipotese falhou no hardware e foi revertida, entao o core permaneceu no baseline anterior enquanto a investigacao segue.
