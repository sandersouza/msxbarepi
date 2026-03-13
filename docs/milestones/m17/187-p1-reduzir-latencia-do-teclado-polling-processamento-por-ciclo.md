# [P1] Reduzir latência do teclado (polling/processamento por ciclo)

Issue remota: #187
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/187

## Descrição

## Problema
A latência do teclado ainda está acima do esperado em cenários de jogo/menu.

## Objetivo
- Reduzir a latência percebida do teclado, potencialmente aumentando a frequência efetiva de leitura/processamento por ciclo sem introduzir regressões.

## Escopo técnico
- Profiling do caminho de input no loop principal.
- Ajuste de polling/processamento por frame/ciclo (quando seguro).
- Revisão de debounce/estabilização para evitar perda de `press`/`release`.

## Critérios de aceite
- [ ] Redução mensurável de latência em teste comparativo.
- [ ] Sem regressão de teclas "presas" ou perda de eventos.
- [ ] Documentação de teste e resultado em `docs/handoff`/issue.

## Referências obrigatórias
- Consultar referências de input/USB em `third_party/circle`.
- Validar integração com nossa camada atual de input em `src/tools/input`.
