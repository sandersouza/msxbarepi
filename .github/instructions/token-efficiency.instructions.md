---
description: "Use em todas as tarefas para reduzir uso de tokens sem perder rastreabilidade, seguranca de fluxo ou qualidade de validacao."
name: "MSXBarePi Token Efficiency"
applyTo: "**"
---
# MSXBarePi Token Efficiency

## Objetivo

- Reduzir tokens gastos em exploracao, atualizacoes, docs e respostas, mantendo guardrails obrigatorios do projeto.

## Operacao padrao

- Preferir leitura pontual com `rg`, `git diff --name-only`, `git diff --stat` e trechos pequenos de arquivos.
- Evitar colar diffs grandes no chat; revisar localmente e resumir apenas o impacto.
- Agrupar leituras independentes em chamadas paralelas quando possivel.
- Fazer poucas atualizacoes intermediarias: inicio, antes de editar, antes de build longo e ao finalizar.
- Nao repetir contexto historico da issue quando o usuario ja esta acompanhando a thread.

## Documentacao e GitHub

- Atualizar `docs/handoff`, `docs/issues`, `CONTEXT.md` e issue remota em lote, preferencialmente no checkpoint estavel.
- Evitar atualizar issue remota a cada microajuste experimental.
- Em respostas finais, citar somente mudancas, validacao, build IDs e links/paths necessarios.

## Validacao em niveis

- Iteracao rapida: usar checks baratos e o build mais relevante.
- Checkpoint estavel: rodar a matriz completa exigida pela issue/fluxo antes de PR ou entrega para hardware.
- Nao repetir builds completos se a mudanca posterior afetou apenas docs ou texto de gestao.

## Respostas ao usuario

- Ser direto e concreto.
- Preferir listas curtas quando houver multiplos itens.
- Omitir logs completos de comandos; informar somente resultado, erro relevante ou identificadores finais.
- Manter detalhes extensos apenas quando o usuario pedir auditoria, review ou investigacao profunda.
