# Issue #237 - [P2] Melhorar Save/Load State com slots 0-9, preview e metadata

- URL: https://github.com/sandersouza/msxbarepi/issues/237
- Milestone: Feature requests / Requisição de Features (m18)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:settings`, `area:storage`, `area:emulation`
- Estado local atual: IN_PROGRESS

## Objetivo
Evoluir a UX atual de `Save State` / `Load State` para um fluxo navegavel por slots `0-9`, com metadata visual e contextual suficiente para o usuario identificar rapidamente qual estado deseja restaurar.

## Contexto tecnico
- A trilha antiga da `#99` fechou a persistencia basica de save/load no SD, mas deixou o fluxo com cara de operacao opaca e pouco navegavel.
- O usuario agora quer transformar `Load State` em uma experiencia mais proxima de `file browser`, com slots fixos e uma caixa lateral de informacao.
- O novo fluxo tambem precisa tornar `Save State` mais deliberado, permitindo escolher conscientemente um slot `0-9` em vez de depender de um unico estado implicito.

## Escopo
- `Save State` passa a permitir escolha explicita de slot `0-9`.
- Cada slot persiste:
  - estado serializado do emulador;
  - metadata lateral para a UI;
  - um `print`/preview capturado no momento do save.
- `Load State` passa a abrir uma tela estilo `file browser`, dividida em:
  - lista fixa de slots `0-9`;
  - caixa lateral de `INFO`.
- A caixa `INFO` deve mostrar, para o slot selecionado:
  - preview/print do momento do save;
  - ROM/cartucho carregado;
  - disco(s) carregado(s) no momento do save.
  - cassete carregado no momento do save.
- Slots vazios, corrompidos ou incompatíveis precisam aparecer de forma clara e não podem travar o fluxo.
- O layout deve reaproveitar, quando fizer sentido, componentes e semantica do `file browser` atual, sem degradar navegacao por teclado/auto-repeat.

## Fora de escopo
- Criar save states arbitrariamente ilimitados ou por nome livre nesta rodada.
- Mudar o formato do core além do necessário para suportar slots e metadata.
- Criar um gerenciador completo de screenshots fora do contexto de save state.

## DoR (sugestao)
- Fluxo atual de save/load state está funcional e mapeado.
- Estrutura atual do `file browser` e do menu comporta reutilização parcial para a nova tela.
- Fonte de metadata para ROM/DSK carregados no runtime está identificada.

## DoD (sugestao)
- `Save State` permite escolher e sobrescrever conscientemente um slot `0-9`.
- `Load State` abre uma UX navegavel por slots `0-9` em estilo `file browser`.
- A caixa `INFO` mostra preview/print e mídia carregada para o slot selecionado.
- `Load State` restaura ROMs, discos e cassete a partir dos caminhos salvos; se a midia nao existir, deixa o respectivo slot/drive/cassete vazio.
- Slots vazios ou inválidos ficam legíveis e não quebram a navegação.
- Regressão: save/load continuam restaurando o ponto correto de execução sem quebrar boot, áudio, input ou renderer.

## Checklist inicial
- [x] Mapear fluxo atual de save/load state e formato persistido no SD
- [x] Definir contrato de slots `0-9` e sidecar de metadata
- [x] Remover data/hora da UI por ausencia de relogio com bateria no Raspberry Pi 3B
- [x] Reusar/adaptar componentes do `file browser` para a tela de `Load State`
- [x] Implementar preview/print por slot
- [x] Exibir ROM/cartucho e disco(s) carregados no slot selecionado
- [x] Exibir e persistir cassete carregado no slot selecionado
- [x] Validar slots vazios/corrompidos/incompatíveis

## Atualizacao local 2026-05-04
- Branch local: `codex/237-melhorar-save-load-state-slots-preview-metadata`.
- `Save State` e `Load State` agora abrem uma tela de slots fixos `0-9` antes de executar a acao.
- O estado serializado usa `SD:/states/slot-<n>.sav`; a metadata usa `SD:/states/slot-<n>.meta`; o preview usa `SD:/states/slot-<n>.raw`.
- O preview e um thumbnail bruto `256x192` em `TScreenColor`, derivado do snapshot do viewport usado pelo menu de pausa.
- A lista de slots mostra apenas `SLOT 0..9`; detalhes ficam na caixa lateral `INFO`.
- A caixa lateral `INFO` mostra cartucho A, disco A, cassete e preview ampliado quando disponivel.
- A metadata salva nomes curtos para UI e caminhos completos de ROM/DSK/CAS para restauracao; `Load State` descarrega a midia quando o caminho salvo esta vazio ou nao existe no SD.
- A UI nao exibe data/hora porque o Raspberry Pi 3B nao tem relogio com bateria nesse fluxo.
- Slots vazios aparecem como `EMPTY/VAZIO`; slots com arquivo invalido/corrompido aparecem como `INVALID/INVALIDO` e nao disparam `Load State`.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=1`, `make -j4 DEBUG=0`.
- Ajuste 2026-05-05: lista de slots sem coluna de status/timestamp, cursor inicial sempre no `SLOT 0`, coluna de slots compacta e centralizada, preview fixo `256x192`, painel lateral sem `INFO`/`DATE`/`PREVIEW`, quadro lateral subido e sem linha de espaco ate a borda inferior da janela, e `Save State` mantendo o menu aberto apos gravar.
- Build final `DEBUG=0`: `BUILD_BID=202605051208-2bf4d90`, `TXTDBG BUILD:8C72`, artefato `artifacts/kernel8-issue237.img`.

## Notas
- Esta issue nasce como evolução funcional da `#99`, não como correção de regressão.
- A UI nao exibe data/hora porque o Raspberry Pi 3B nao tem relogio com bateria nesse fluxo.
