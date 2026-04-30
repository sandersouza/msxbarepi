---
description: "Use em qualquer tarefa do msxbarepi como mapa geral das instrucoes especializadas."
name: "MSXBarePi Workflow"
applyTo: "**"
---
# MSXBarePi Workflow

## Como aplicar

- Tratar estas regras como preferencias fortes; flexibilizar apenas por bloqueio tecnico real e registrar o motivo.
- Usar este arquivo como mapa geral. Detalhes ficam nos arquivos especializados para evitar duplicacao.

## Responsabilidades por arquivo

- Plataforma/boot/config: `platform-architecture.instructions.md`.
- Build, SD, artefatos e rastreio: `build-release.instructions.md`.
- Issues, branches, PRs e board: `project-management.instructions.md`.
- Docs, handoff e contexto: `docs-sync.instructions.md`.
- UI/locales: `localization.instructions.md`.
- Overlay/menu/debug: `debug-layer.instructions.md`.
- File browser: `file-browser.instructions.md`.
- Referencias tecnicas: `code-reference.instructions.md`.
- Economia de tokens: `token-efficiency.instructions.md`.

## Regra geral

- Quando uma regra parecer duplicada, seguir o arquivo especializado do assunto.

## Respostas com comandos

- Quando precisar mostrar comandos ao usuario, usar bloco Markdown `bash`.
