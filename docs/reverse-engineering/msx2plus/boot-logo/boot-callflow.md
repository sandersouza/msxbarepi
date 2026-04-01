# Callflow do Boot Logo no MSX2PEXT.ROM

## Ponto central

O `z80dasm` confirmou que o logo do `MSX2+` nao e um "efeito magico" fora da BIOS. Ele usa o bloco de comandos do `V9958` de forma intensa, com polling de `S#2`, transferencias por `S#7` e programacao indireta de `R#32..R#46` via `0x9B`.

## Rotinas-chave confirmadas

| Offset | Papel observado | Evidencia resumida | Leitura pratica |
| --- | --- | --- | --- |
| `0x2BE4` | espera `CE=0` | `ld a,02h ; call 2BEFh ; rrca ; jr c,2BE4h` | seleciona `S#2` e fica em loop enquanto `S#2 bit0` indica comando ativo |
| `0x2BEF` | helper generico de leitura de status | escreve `A` em `0x99`, escreve `0x8F`, le `0x99`, e volta `R#15` para zero | confirma uso formal de `R#15` para ler `S#n` |
| `0x32CD` | leitura de `S#7` | escreve `07h`/`8Fh` em `0x99`, le `0x99`, depois restaura `R#15=0` | esta e a janela de transferencia do registrador de cor |
| `0x32E7` | arma `R#17` para escrita indireta | escreve `A` e depois `91h` em `0x99` | com `A=20h`, aponta para `R#32` com autoincremento; com `A=ACh`, aponta para `R#44` sem autoincremento |
| `0x2E3E` | wrapper de comando com lote `R#32..R#45` | espera `CE`, chama `0x32E7` com `20h`, faz `OTIR` de 14 bytes para `0x9B`, e em seguida escreve `0x90|LO` | pre-carrega parametros e dispara comando do grupo `0x9*` |
| `0x2EBF` | wrapper de transferencia CPU<->VDP | mesmo padrao de lote por `0x9B`, mas termina em `0xB0|LO` | comando do grupo `0xB*` |
| `0x3040` | wrapper adicional com packing por modo | faz lote em `R#32..R#45`, depois escolhe caminho conforme `0xFCAF` | confirma que o logo depende do empacotamento de pixels por modo |
| `0x3299` | wrapper fixo que termina em `R#46=0xA0` | apos `OTIR` de 14 bytes, escreve `0xA0` em `0x9B` | o BIOS tambem usa o grupo `0xA*` |

## O que `0xFCAF` esta fazendo

As rotinas em `0x2E58`, `0x2ED8`, `0x305C` e `0x314A` leem `0xFCAF`, subtraem `06h` e entram em loops diferentes de empacotamento/desempacotamento. Isso sugere:

- a rotina do logo nao esta desenhando de um jeito unico para todos os modos
- o fluxo e sensivel ao modo de tela e ao formato de pixel
- o problema atual do nosso boot nao e apenas "faltou alternar paginas"; falta casar a semantica do modo de tela com o bloco de comandos

## Como o fluxo se organiza

1. A `SubROM` prepara estrutura de parametros em RAM de trabalho.
2. `0x2BE4` garante que o comando anterior terminou.
3. `0x32E7` arma `R#17` para `R#32`.
4. `OTIR` manda `R#32..R#45` para `0x9B`.
5. O ultimo write em `0x9B` vira `R#46`, iniciando o comando.
6. O BIOS acompanha a execucao via `S#2`.
7. Quando precisa ler/transferir dados, usa `S#7`.
8. Dependendo do modo em `0xFCAF`, entra em loops diferentes de packing.

## Refinamento da hipotese original

Hipotese inicial do bug:

- "talvez o logo use um modo entrelacado alternando paginas e screens"

Hipotese refinada apos `z80dasm`:

- o mecanismo principal verificado e comando VDP + multipage + packing por modo
- odd/even e `R#9 interlace` continuam relevantes do lado do emulador, porque afetam qual pagina/linha o renderer mostra
- porem o fluxo ROM-side que realmente dirige a animacao e, antes de tudo, um pipeline de blit/transferencia do `V9958`

## Leitura de causa raiz

O logo depende ao mesmo tempo de:

- `S#2` no instante certo
- `S#7` no instante certo
- `R#17/0x9B` funcionando como a BIOS espera
- `R#32..R#46` obedecendo ao mesmo pacing da referencia
- `SCREEN 6/7` mostrando a pagina correta no momento correto

Se qualquer um desses blocos atrasar ou usar addressing simplificado, a animacao fica lenta, com blocos ou com pagina errada.
