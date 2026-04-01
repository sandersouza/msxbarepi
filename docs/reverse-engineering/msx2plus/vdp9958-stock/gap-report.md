# Gap Report - V9958 Stock

## Onde o core local ja esta bem alinhado

- `REG-001`: a selecao de registradores por `0x99` usa a janela de `6 bits`, como nas referencias.
- `CMD-002`: leitura de `S#7` limpa `TR` e devolve o registrador de cor.
- `CMD-003`: escrita em `R#44` alimenta `CLR` e limpa `TR`.
- `STS-005`: `S#2 bit4` segue pertencendo ao `SRCH`.
- `CMD-001`: o mapeamento de `SCR5..12` para os modos internos do bloco de comandos ja espelha o `blueMSX`.

## Gaps confirmados

- `CMD-005`: o command engine local ainda e dirigido por quantum fixo, enquanto a referencia principal (`blueMSX`) o dirige por tempo corrido.
- `IO-004`: leitura de `0x99` ainda nao faz um sync temporal equivalente ao da referencia; hoje so consome um slice pendente.
- `REN-004`: `SCREEN 6/7` continua simplificado em comparacao com a logica page-aware do `blueMSX`.
- `REN-007`: odd/even page e `R#9 interlace` continuam acoplados a um modelo local simplificado de `FlipEvenOdd` e `OddPage`.
- `REN-008`: `R#27`, mascara de borda e alinhamento horizontal ainda nao seguem o mesmo fluxo do renderer de referencia.
- `REG-003`: `R#24`, `R#28..R#31` ainda nao estao blindados como area invalida/inerte.

## Disputas em aberto

- `STS-006`: `S#8/S#9` no `blueMSX` aparecem como valor latched no fim do `SRCH`; no lineage HDL aparecem como `SXTMP` live.
- `REG-004`: o comentario historico em `third_party/V9958-Super/docs/revisions.md` fala em correcao do auto-incremento de `R#17`, mas o snapshot visivel ainda mostra incremento acima de `R#47`.

## Leitura pratica para a implementacao

- O boot logo nao depende de uma ROM "misteriosa".
- O gargalo esta em fazer o core responder como o BIOS espera quando:
  - faz polling de `S#2`
  - usa `S#7` como janela de transferencia
  - reprograma `R#32..R#46` por `0x9B`
  - desenha em `SCREEN 6/7` com pagina, scroll e odd/even

## Prioridade tecnica

1. `CMD-005`
2. `IO-004`
3. `REN-004`
4. `REN-007` + `REN-008`
5. `REG-003`

Se esses quatro primeiros itens nao forem tratados em conjunto, a chance e alta de corrigir um sintoma do logo e deslocar o defeito para outro ponto do mesmo fluxo.
