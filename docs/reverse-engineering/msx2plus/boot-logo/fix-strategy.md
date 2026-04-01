# Estrategia para Fechar o Boot Logo

## Meta

Fazer o boot logo do `MSX2+` rodar com a mesma leitura operacional do `blueMSX`:

- cadencia normal
- sem tarjas/blocos
- sem pagina errada
- sem depender de ROM "extra" como explicacao principal

## Ordem fechada

### 1. Congelar a topologia de referencia

- manter como base o perfil `HB-F1XDJ` ja refletido no core local para:
  - slot `0` expandido
  - slot `3` expandido
  - RAM mapper em `3-0`
  - Disk ROM em `3-2`
  - `MSX2PEXT` + `KANJIBASIC` em `3-1`
- nao iniciar a correcao trocando ROMs
- tratar `MSXJE` como item de paridade futura, nao como causa raiz do bug atual

### 2. Fechar o contrato de status

- alinhar `S#2`, `S#7`, `S#8` e `S#9` a um sync temporal equivalente ao do `blueMSX`
- preservar o caminho que o BIOS do logo esta usando:
  - `0x2BE4/0x2BEF` para polling de `S#2`
  - `0x32CD` para `S#7`
  - `0x32E7` para `R#17`
- decisao de referencia:
  - usar `blueMSX` como alvo principal para semantica stock
  - manter a divergencia do `V9958-Super` registrada como cheque de HDL

### 3. Migrar o command engine para modelo temporal

- remover a dependencia de quantum fixo como fonte principal de progresso do engine
- trocar por acumulacao temporal ou equivalente funcional ao `systemTime` do `blueMSX`
- manter `R#46` apenas armando estado/`CE`, e nao consumindo trabalho extra no mesmo instante

### 4. Reescrever `SCREEN 6/7` como renderer page-aware

- tratar `R#25`, `R#26`, `R#27`, `R#2 bit5`, odd/even e `R#9 interlace` como um unico bloco
- abandonar o modelo atual de:
  - expandir a linha inteira para `BgRaw`
  - aplicar scroll depois
- aproximar o fluxo da referencia:
  - `jumpTable`
  - `hScroll512`
  - `page`
  - mascara de borda
  - troca de pagina durante a linha

### 5. Revalidar primeiro o logo, depois o corpus

- primeira validacao obrigatoria:
  - boot logo `MSX2+`
- segunda validacao obrigatoria:
  - `STS006`
  - `REG004`
- terceira validacao obrigatoria:
  - `Knightmare Gold`
  - `Gradius2E/Nemesis2E`

## O que nao fazer

- nao atacar primeiro `KANJI.ROM`
- nao assumir que o problema e so interlace
- nao mexer em ROM set antes de fechar status + command engine + renderer
- nao chamar a correcao de "perfeita" enquanto `SCREEN 6/7` continuar no modelo simplificado atual

## Definition of Done desta trilha

- o logo anima na cadencia correta
- o quadro final nao mostra blocos/tarjas de pagina incorreta
- `S#2` e `S#7` obedecem ao fluxo esperado pelo BIOS
- `STS006` e `REG004` continuam reproduzindo o comportamento documentado
- nao aparece regressao obvia nos workloads dinamicos ja usados pela umbrella `#82`
