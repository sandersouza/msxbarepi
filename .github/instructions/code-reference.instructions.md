---
description: "Use para diretrizes base de comparação de código, referências técnicas e alinhamento de implementação no msxbarepi."
name: "Code Reference and Implementation Alignment"
applyTo:
  - "src/**"
  - "include/**"
  - "docs/**"
  - "third_party/**"
---

# Code Reference and Implementation Alignment

## Objetivo

- Ter como base, outros códigos de referência, sejam eles de terceiros (ex.: `third_party/fmsx`, `third_party/circle`) ou internos (ex.: `src/`, `include/`, `docs/`), para garantir alinhamento técnico, consistência e evitar retrabalho; usando como base a semântica de código, organização, padrões de implementação e documentação desses códigos de referência, incluindo mas não somente:
  - Estrutura de código e organização de arquivos.
  - Padrões de implementação e estilo de código.
  - Documentação técnica e comentários.
  - Abordagem para resolução de problemas técnicos específicos (ex.: emulação de VDP, gerenciamento de memória, etc.).
  - Código implementado e funcionais em outros emuladores MSX (ex.: `blueberrymsx`, `blueMSX`) para comportamento de hardware específico, como VDP V9958, mapeadores, etc.
  - VHDL de projetos como `ocm-pld-dev` e `V9958-Super` para comportamento de hardware específico, como VDP V9958.

## Diretrizes de implementacao

- Antes de implementar uma funcionalidade ou resolver um problema técnico, consultar os códigos de referência para entender como eles abordam a questão.
- Se uma solução já existe em um código de referência e é aplicável ao contexto do `msxbarepi`, usá-la como base, adaptando-a conforme necessário para o ambiente baremetal e requisitos específicos do projeto.
- Documentar claramente no código e/ou documentação técnica quando uma implementação é inspirada ou baseada em um código de referência, incluindo qual código de referência foi usado e quais partes foram adaptadas ou modificadas.
- Evitar reinventar a roda: se um código de referência já implementa uma funcionalidade de forma eficaz, priorizar o uso dessa implementação em vez de criar uma nova do zero, a menos que haja uma justificativa técnica clara para isso (ex.: requisitos de desempenho, limitações do ambiente baremetal, etc.).
- Manter um alinhamento técnico consistente com os códigos de referência, especialmente em áreas críticas como emulação de hardware, gerenciamento de memória, e arquitetura de software, para garantir que o projeto se beneficie das melhores práticas e soluções já testadas em outros projetos de emulação MSX e emuladores baremetal.
- Para funcionalidades específicas de hardware (ex.: VDP V9958), priorizar a consulta cruzada entre múltiplos códigos de referência (ex.: `blueberrymsx`, `blueMSX`, `ocm-pld-dev`, `V9958-Super`, outros ) para garantir uma compreensão abrangente do comportamento esperado e evitar ajustes ad hoc baseados em um único código de referência.

## Diretriz estrategica do backend local

- Tratar o `blueMSX` como referencia semantica primaria para convergencia funcional do backend local, especialmente na trilha `MSX2+` / `V9958`.
- Nesta fase do projeto, a migracao completa do backend para `blueMSX` e considerada inviavel; o caminho oficial e aproximar incrementalmente o backend local derivado de `fMSX` do comportamento observado no `blueMSX`, preservando as adaptacoes necessarias ao ambiente baremetal.
- Essa regra vale para os subsistemas centrais do emulador, incluindo mas nao somente `Z80`, core `MSX`, `VDPs`, dispositivos, audio, cartuchos, mapeadores e portas de I/O.
- Quando houver divergencia entre o backend local e o `blueMSX`, priorizar primeiro a auditoria/diff direto contra o `blueMSX` antes de abrir heuristicas locais ou novos repros ad hoc.
- Usar referencias adicionais disponiveis em `third_party/` para desempate e validacao cruzada, especialmente `ocm-pld-dev`, `V9958-Super` e outros codigos/RTL relevantes para `MSX2+` e `V9958`.
- Ao ajustar o backend local com base nessas referencias, registrar na documentacao tecnica e/ou no handoff:
  - qual comportamento do `blueMSX` serviu de alvo principal
  - quais referencias secundarias foram usadas para confirmar ou disputar o comportamento
  - quais restricoes arquiteturais do backend local impediram um espelhamento literal da implementacao de referencia
