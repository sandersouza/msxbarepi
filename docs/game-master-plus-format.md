# Game Master+ Catalog Format

## Objetivo

Definir um formato simples e deterministico para `SD:/gamemaster.cht`, adequado ao runtime baremetal e ao fluxo futuro de browser/UI de cheats.

## Caminho canonico

- Arquivo esperado: `SD:/gamemaster.cht`

## Diretriz de parser

- Sem JSON ou XML generico no runtime.
- Texto ASCII, uma instrucao por linha.
- Comentarios iniciam com `#` ou `;`.
- Strings com espacos usam aspas duplas.

## Gramatica

```text
game "<titulo-do-jogo>"
rom "<id-opcional>"
cheat "<titulo-do-cheat>"
poke <ADDR_HEX> <VALUE_HEX> <SIZE>
[poke <ADDR_HEX> <VALUE_HEX> <SIZE>]
endcheat
[cheat ...]
endgame
```

## Comandos

- `game "<titulo>"`: inicia um bloco de jogo.
- `rom "<id>"`: identificador opcional do jogo dentro do bloco atual.
- `cheat "<titulo>"`: inicia um cheat dentro do jogo atual.
- `poke <ADDR_HEX> <VALUE_HEX> <SIZE>`: adiciona uma escrita ao cheat atual.
- `endcheat`: fecha o cheat atual.
- `endgame`: fecha o jogo atual.

## Regras de validacao

- `game` nao pode aninhar outro `game`.
- `cheat` exige um `game` aberto.
- `poke` exige um `cheat` aberto.
- `endcheat` exige pelo menos um `poke`.
- `endgame` exige pelo menos um `cheat`.
- Titulos de jogo nao podem duplicar.
- Titulos de cheat nao podem duplicar dentro do mesmo jogo.
- `rom` nao pode duplicar no catalogo.

## Formato de numeros

- `ADDR_HEX`: hexadecimal de 1 a 4 digitos.
- `VALUE_HEX`: hexadecimal de 1 a 4 digitos.
- `SIZE`: `8`, `8-bit`, `8bit`, `16`, `16-bit` ou `16bit`.

## Exemplo valido

```text
# SD:/gamemaster.cht
game "Space Manbow 2"
rom "SMANBOW2"
cheat "Invencibilidade"
poke CA53 03 8
poke CA54 03 8
endcheat
cheat "Vidas infinitas"
poke CB0F 0099 16
endcheat
endgame
```

## Estrutura em memoria

- Maximo de jogos: `64`
- Maximo de cheats: `256`
- Maximo de pokes: `512`
- Titulo de jogo/cheat: ate `48` caracteres ASCII
- `rom_id`: ate `24` caracteres ASCII

## Erros expostos pelo parser

- `file-open-failed`
- `catalog-empty`
- `line-too-long`
- `syntax-error`
- `unexpected-keyword`
- `unexpected-end`
- `missing-game`
- `missing-cheat`
- `duplicate-game`
- `duplicate-cheat`
- `duplicate-rom-id`
- `too-many-games`
- `too-many-cheats`
- `too-many-pokes`
- `invalid-hex`
- `invalid-size`
- `value-out-of-range`
- `title-too-long`
