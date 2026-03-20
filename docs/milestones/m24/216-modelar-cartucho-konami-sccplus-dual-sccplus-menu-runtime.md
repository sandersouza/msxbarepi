# [P1] Modelar cartucho `Konami SCC+` com modo `DUAL` no runtime/menu

Milestone remota: #24
Issue remota: #216

## Objetivo
Substituir a semantica atual de `Konami SCC` por um modelo real de cartucho/configuracao SCC+ no runtime e no menu, incluindo um estado `DUAL` para ativar dois SCC+ simultaneos.

## Escopo tecnico
- Renomear a UX para `Konami SCC+`.
- Consolidar a UX em um unico item `Konami SCC+` com estados `OFF/ON/DUAL`.
- Politica fechada:
  - primeiro `Konami SCC+` = expansao interna;
  - `DUAL` = segundo cartucho reservado no slot B;
  - se slot B estiver ocupado, nao ativar.
- Separar presenca de cartucho SCC+ de mute/mix de audio.
- Evoluir persistencia/settings para novo modelo, lendo `scc_cart` legado como compatibilidade de entrada.
- Atualizar locales `PT/EN/ES` e docs afetadas.

## DoR
- [ ] Comportamento tecnico do core SCC/SCC+ fechado pela #215.
- [x] Politica de slot validada: primario interno, secundario no slot B.
- [x] Mapeamento de persistencia/config definido.

## DoD
- [x] Menu exibe `Konami SCC+`.
- [x] Menu exibe o estado `DUAL` no proprio item `Konami SCC+`.
- [x] Persistencia nova funcionando e compatibilidade com `scc_cart` legado preservada.
- [x] Conflito com slot B ocupado tratado explicitamente.
- [x] Locales/documentacao atualizados no mesmo ciclo.

## Implementacao atual
- Runtime/config:
  - `scc_cart` deixou de atuar como gate de audio e passou a ser compatibilidade de entrada para `scc_plus`.
  - Novas chaves persistidas: `scc_plus` e `scc_dual`.
  - `DUAL` so ativa quando o slot B esta livre; caso contrario, o runtime rejeita a ativacao e mantem o estado em `ON`.
- Menu/UI:
  - `Konami SCC+` agora cicla entre `OFF`, `ON` e `DUAL`.
  - o estado `DUAL` so e oferecido quando o slot B esta livre.
  - Carregar ROM no `SLOT2` com `Konami SCC+` em `DUAL` agora e bloqueado explicitamente.
- Core/MSX:
  - o suporte `SCC(-I)` sem ROM foi ampliado de `slot<2` para slots virtuais controlados pelo runtime;
  - `SCCOn[]` e `SCCIMode[]` passaram a cobrir `MAXSLOTS`;
  - save-state passou a serializar esses vetores completos dentro do bloco `State[256]`, sem alterar o formato global do snapshot.
  - correcao estrutural posterior:
    - a primeira versao do `Dual SCC+` ainda compartilhava um unico `SCChip` global e um unico bloco de `5` canais SCC;
    - o caso de teste `GRADIUS1E.ROM` expôs a falha: voz no segundo cartucho roubando/distorcendo os canais do primeiro;
    - o core passou a ter `SCChip[2]`, com um bloco de `5` canais por chip;
    - o mixer local foi expandido para `25` canais totais (`PSG + FM-PAC + SCC primario + SCC secundario`);
    - o mute de `Layer 3` agora cobre os `10` canais SCC.
  - correcao posterior do caminho efetivo de audio:
    - o segundo `SCC+` ainda podia sumir porque o build real continuava resolvendo `Sound.h` do fMSX original, mantendo `SND_CHANNELS=20`;
    - a criacao de `src/fmsx_compat/Sound.h` passou a amarrar o build ao `EMULib.h` local com `SND_CHANNELS=25`;
    - o menu foi consolidado para um unico item `Konami SCC+` com ciclo `OFF/ON/DUAL`, removendo a opcao separada de `Dual SCC+`.

## Validacao local
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- `BUILD_HASH:910d31c-f15c12ece2aa19d2fbe54c8ffcdfa80bd290ab2c`
- `BUILD_BID:202603201755-910d31c`
- `BUILD_ID (TXTDBG): FFCE`
- rodada estrutural do dual SCC:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1`: OK
  - `BUILD_HASH:910d31c-e9f1a6b9368e4ceb3a2e95be49b78e867a792250`
  - `BUILD_BID:202603201820-910d31c`
  - `BUILD_ID (TXTDBG): 9B61`
- rodada de consolidacao do mixer/menu:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1`: OK
  - `BUILD_HASH:910d31c-25cac9a5e23ecf469cc62337895e46c5209cdee2`
  - `BUILD_BID:202603201838-910d31c`
  - `BUILD_ID (TXTDBG): ACEA`
- rodada de inteligibilidade do segundo SCC:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1`: OK
  - `BUILD_HASH:910d31c-7b33f28ab3e827303746f029faa9a2723e497652`
  - `BUILD_BID:202603201845-910d31c`
  - `BUILD_ID (TXTDBG): 21A8`
  - ajuste tecnico:
    - `SCC primario` e `SCC secundario` agora passam por buses independentes no mixer local;
    - o `SCC secundario` recebeu voicing mais neutro e ganho moderado adicional para melhorar inteligibilidade de voz sem mexer no som aprovado do primario.

## Risco em aberto
- Ainda falta validacao em hardware para confirmar:
  - ativacao do `Konami SCC+` interno no boot;
  - conflito real de `Konami SCC+ DUAL` com ROM no slot B;
  - ausencia de regressao no baseline estavel atual do `SMANBOW2`.
  - independencia real de musica/voz em jogos que usam `2 SCC+` simultaneos, com `GRADIUS1E.ROM` como teste de regressao.
