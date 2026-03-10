# Issue #82 - Validar VDP9958 e modos MSX2+

- URL: https://github.com/sandersouza/msxbarepi/issues/82
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:video`, `area:emulation`

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
- Adicionado indicador `KB` no `TM2` para confirmar mapeamento de `KANJIBASIC` em `slot 3-1`.
- Loader de BIOS/EXT ganhou fallback de nomes de SubROM (`MSX2SUB.ROM`/`SUBROM.ROM`) para MSX2/MSX2+.
- Correção de slot mapping no reset MSX2+ (baseado no `Sony_HB-F1XDJ.xml` do openMSX):
- `KANJIBASIC.ROM` passa a ser carregado (quando presente) em `MemMap[3][1][2..5]` (`0x4000-0xBFFF`).
- Quando `KANJIBASIC` está ativo, o caminho de `DISK.ROM` não sobrescreve `slot 3-1:4000h-7FFFh`, preservando a rotina de boot logo.
- Runtime de `disk rom off` agora mantém esse mapeamento no MSX2+ para não apagar a área de startup.
- Alias de VFS/initramfs ampliados para `KANJIBASIC` e `MSX2P SUBROM` (`HB-F1XDJ_*`, `FS-A1FX_*`).

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
