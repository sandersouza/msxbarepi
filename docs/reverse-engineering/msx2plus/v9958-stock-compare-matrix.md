# Matriz Comparativa V9958 Stock

## Objetivo

Fechar, no mesmo arquivo canonico citado pela umbrella `#82` e pelas sub-issues `#231..#236`, onde o core local ja converge com o `V9958 stock` e onde ainda diverge de `blueMSX` e do lineage HDL representado por `third_party/V9958-Super`.

## Taxonomia

- `match`: comportamento local suficiente para considerar convergencia pratica com o alvo stock
- `partial`: implementado, mas incompleto ou com ressalvas relevantes
- `conflict`: desvio confirmado do comportamento desejado
- `disputed`: as referencias divergem entre si e ainda falta decidir qual alvo vamos adotar
- `n/a`: recurso fora do alvo `V9958 stock`

## Cobertura por familias

- `R#0..R#23`: majoritariamente herdados do fMSX, com pontos criticos em `R#2`, `R#9`, `R#15`, `R#17`, `R#19` e `R#23`
- `R#24`, `R#28..R#31`: tratados como area invalida/inerte nas referencias externas, mas ainda nao totalmente blindados no core local
- `R#25..R#27`: presentes, porem ainda com renderer e addressing simplificados
- `S#0..S#6`: em geral proximos do esperado, com `S#2` dependendo de sync temporal melhor
- `S#7`: convergencia boa
- `S#8/S#9`: disputa aberta entre modelo `latched-on-complete` e `live SXTMP`
- `R#32..R#46`: bloco de comandos existe e e usado pelo boot logo, mas o modelo temporal ainda diverge

## Matriz

| ID | Tema | Estado | Core local | Referencia externa | Impacto |
| --- | --- | --- | --- | --- | --- |
| `REG-001` | Janela de selecao da escrita por `0x99` | `match` | `OutZ80()` usa `Value&0x3F` ao decodificar registradores em `src/fmsx_local/MSX.c:3824-3833` | `blueMSX` e `V9958-Super` tambem tratam a selecao por 6 bits | Base correta para `R#0..R#63` |
| `REG-003` | Registros invalidos/inertes (`R#24`, `R#28..R#31`) | `conflict` | o core local ainda persiste valor cru em `VDP[R]` apos o `switch` de `VDPOut()` em `src/fmsx_local/MSX.c:4566-4645` | `blueMSX` e o lineage HDL nao dao semantica funcional a esses buracos | Risco baixo para o logo, mas impede completar a auditoria stock |
| `REG-004` | Escrita indireta via `R#17/0x9B` e decode funcional de `R#32..R#46` | `partial` | o caminho local escreve `R#44` e inicia `R#46`, mas ainda depende do modelo temporal local; o overlay de campo ja mostrou `R17` subindo acima de `0x2F` | `V9958-Super` expõe `VDPR17REGNUM <= VDPR17REGNUM + 1` em `vdp_register.sv:748-757`, enquanto `docs/revisions.md:200-207` diz que houve correcao posterior | o boot logo usa esse caminho em massa por `0x9B` |
| `IO-001` | Porta `0x98` para dados de VRAM | `match` | `OutZ80()` sincroniza antes da escrita, incrementa `VAddr` e pagina por `R#14` em `src/fmsx_local/MSX.c:3782-3801` | comportamento basico casa com o esperado no fMSX lineage e com a ideia de VRAM data port | nao parece ser o gargalo principal do logo |
| `IO-004` | Leitura `0x99`, selecao de `S#n` e sequenciador de latch | `partial` | `InZ80()` chama `fmsx_vdp_sync_before_status_read()`, seleciona `S#n` por `R#15` e forca `VKey=1` em `src/fmsx_local/MSX.c:3558-3577` | `blueMSX` faz `sync(vdp, boardSystemTime())` antes de expor `S#n` em `VDP.c:1082-1086`; o lineage HDL entrega os bits live direto do banco de status em `vdp_register.sv:432-467` | hoje o core local so drena um slice, nao um sync temporal completo |
| `STS-005` | `S#2 bit4` (`BD/BO`) ownership do `SRCH` | `match` | o `SrchEngine()` atualiza `VDPStatus[2]` e o fluxo local preserva `BD` no ownership do `SRCH` | `blueMSX` e `V9958-Super` tambem associam `BD` ao bloco de comandos | item fechado para o alvo stock pratico |
| `STS-006` | `S#8/S#9` (`SXTMP`) durante `SRCH` | `disputed` | no core local, `VDPStatus[8]` e `VDPStatus[9]` sao atualizados no ponto de conclusao do `SRCH` em `src/fmsx_local/V9938.c:424-425` | `blueMSX` expõe `borderX` latched via `vdpGetBorderX()` em `V9938.c:1194-1196`, enquanto `V9958-Super` expõe `VDPCMDSXTMP` live em `vdp_register.sv:463-467` | precisamos escolher alvo antes de chamar de "perfeito" |
| `CMD-001` | Mapeamento de screen mode para o bloco de comandos | `match` | `VdpCommandScreenMode()` em `src/fmsx_local/V9938.c:196-206` espelha `SCR5..8 -> 0..3`, `SCR9..12 -> 3`, e `R#25 bit6` fora do range | `blueMSX` faz o mesmo em `V9938.c:1141-1155` | boa base para os comandos usados pelo BIOS |
| `CMD-002` | Leitura de `S#7` limpa `TR` | `match` | `InZ80()` faz `VDPStatus[7]=VDP[44]=VDPRead()` quando `status_reg==7` em `src/fmsx_local/MSX.c:3583-3588` | `blueMSX` limpa `TR` em `vdpGetColor()` (`V9938.c:1205-1207`); `V9958-Super` trata `S#7` como `VDPCMDCLR` e ack de `TR` | convergencia suficiente para o logo |
| `CMD-003` | Escrita em `R#44` limpa `TR` e carrega `CLR` | `match` | `VDPOut()` encaminha `R#44` para `VDPWrite(V)` em `src/fmsx_local/MSX.c:4627-4630` | `V9958-Super` limpa `TR` ao receber `#44` em `vdp_command.sv:489-493` | fluxo de transferencias CPU<->VDP esta no caminho certo |
| `CMD-004` | `R#25 bit6` (`commandEnable`) fora de `SCR5..SCR12` | `partial` | o core local habilita fallback em `SM=2` apenas em `MODEL(MSX_MSX2P)` e quando `VDP[25]&0x40` | `blueMSX` faz o mesmo; o lineage HDL reforca que essa decisao e do registrador de comando, nao do renderer | falta validar exaustivamente em repros dinamicos fora do logo |
| `CMD-005` | Modelo temporal do command engine | `conflict` | `LoopVDP()` ainda usa quantum fixo (`250000`/`12500`) em `src/fmsx_local/V9938.c:186-194` e `1033-1047`; `fmsx_vdp_sync_before_status_read()` drena no maximo um slice em `892-904` | `blueMSX` executa o engine por tempo corrido em `vdpCmdExecute(systemTime)` (`V9938.c:1251-1259`) e sincroniza antes de status read | maior bloqueio restante para o boot logo |
| `REN-002` | `SCREEN 4/5` em bitmap stock | `partial` | o core local ja compoe pagina principal + pagina secundaria com `BgRaw` e `R25/R26/R27` em `src/fmsx_local/Common.h:1061-1124` | `blueMSX` usa pipeline streaming page-aware; o local ainda simplifica o acesso por linha | funcional, mas menos fiel |
| `REN-004` | `SCREEN 6/7` em 512px, multipage e page split | `conflict` | `Common.h` e `Wide.h` expandem a linha inteira para `BgRaw` e depois aplicam scroll em segundo passe (`Common.h:1381-1488`, `Wide.h:165-277`) | `blueMSX` usa `jumpTable`, `vdpHScroll512()`, `page`, `vdpIsOddPage()` e troca de pagina durante a linha em `Common.h:1627-1820` | aqui mora a maior parte do bug visual do logo; na `#235`, a evidencia dinamica ficou bloqueada por falta de repro high-res util no corpus |
| `REN-005` | `SCREEN 8` interleaved | `partial` | o core local ja usa `V9958ExpandInterleaved256ToPalette()` em `src/fmsx_local/Common.h:1164-1193` | a referencia externa continua mais perto do hardware na selecao de pagina e odd/even | suficiente para analise, insuficiente para chamar de perfeito |
| `REN-006` | `SCREEN 10/12`, YJK/YAE e scroll | `partial` | o core local ja expande bytes interleaved e decodifica `YJKColor()` em `src/fmsx_local/Common.h:1227-1347` | ainda falta equivalencia completa de page split e temporalidade de `R#25` | menor prioridade que `SCREEN 6/7` para o logo |
| `REN-007` | Odd/even page por `FIELD` e `R#9 interlace` | `partial` | o local usa `FlipEvenOdd` e `OddPage` em `V9958BitmapLinePtr()` (`src/fmsx_local/Common.h:121-143`) | `blueMSX` e o HDL integram odd/even com base de tela, `FIELD` e renderer page-aware | pode distorcer o quadro final do boot logo |
| `REN-008` | `R#27`, left-edge mask e alinhamento da janela | `partial` | helpers em `src/fmsx_local/Common.h:43-94` e composicao em `Common.h`/`Wide.h` ja existem | `blueMSX` mascara borda e reposiciona pagina com granularidade mais proxima do hardware | sintomas visiveis: tarjas e desalinhamento; na `#235`, a evidencia dinamica ficou bloqueada por falta de repro com `R27` relevante no corpus |

## Fora do alvo stock

| Tema | Estado | Observacao |
| --- | --- | --- |
| `R#29+`, super-res e caminho `ENABLE_SUPER_RES` | `n/a` | fora do alvo desta auditoria |
| Saida VGA/HDMI e simplificacoes especificas do `V9958-Super` | `n/a` | nao definem o comportamento stock do `MSX2+` |
| VRAM 20-bit / organizacao super-res proprietaria | `n/a` | nao participa do bug atual do logo |

## Leitura executiva

- O bloco de comandos existe e o BIOS realmente o usa.
- O principal desvio restante nao e "ROM errada", e sim a combinacao de `status sync` incompleto + `command engine` de quantum fixo + renderer `SCREEN 6/7` simplificado.
- `R#25/R#26/R#27`, `R#2 bit5`, `R#9 interlace` e odd/even ainda estao presentes no core local, mas com semantica menos fiel do que a de `blueMSX`.
