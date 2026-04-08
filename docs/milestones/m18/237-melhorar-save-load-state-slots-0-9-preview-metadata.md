# Issue #237 - [P2] Melhorar Save/Load State com slots 0-9, preview e metadata

- URL: https://github.com/sandersouza/msxbarepi/issues/237
- Milestone: Feature requests / Requisição de Features (m18)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:settings`, `area:storage`, `area:emulation`
- Estado local atual: BACKLOG

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
  - data/hora do save;
  - ROM/cartucho carregado;
  - disco(s) carregado(s) no momento do save.
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
- A caixa `INFO` mostra preview/print, data/hora e mídia carregada para o slot selecionado.
- Slots vazios ou inválidos ficam legíveis e não quebram a navegação.
- Regressão: save/load continuam restaurando o ponto correto de execução sem quebrar boot, áudio, input ou renderer.

## Checklist inicial
- [ ] Mapear fluxo atual de save/load state e formato persistido no SD
- [ ] Definir contrato de slots `0-9` e sidecar de metadata
- [ ] Definir de onde vem `data/hora` do save no runtime atual
- [ ] Reusar/adaptar componentes do `file browser` para a tela de `Load State`
- [ ] Implementar preview/print por slot
- [ ] Exibir ROM/cartucho e disco(s) carregados no slot selecionado
- [ ] Validar slots vazios/corrompidos/incompatíveis

## Notas
- Esta issue nasce como evolução funcional da `#99`, não como correção de regressão.
- Se o runtime não tiver relógio absoluto confiável, a implementação deve documentar explicitamente qual fonte será usada para `data/hora` do save.
