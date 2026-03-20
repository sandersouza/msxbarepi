# Handoff - Branch 183-organizar-imports-tools-src-tools

Data: 2026-03-13

## Objetivo do ciclo

- Validar operacao do GitHub MCP no Codex.
- Documentar setup do MCP GitHub.
- Iniciar organizacao de modulos locais para `src/tools` (issue #183).

## O que foi feito

1. MCP GitHub validado em execucao real:
   - chamada `issue_read` na issue `#183` funcionou.

2. Nova documentacao criada:
   - `docs/github-mcp-setup.md`
   - cobre criacao de PAT, permissoes minimas (fine-grained/classic), configuracao do MCP, testes e troubleshooting.

3. Documento de gestao atualizado:
   - `docs/github-project-management.md` agora referencia o guia MCP.

4. Reorganizacao de modulos para `src/tools/*`:
   - `locale/`: `combo_locale.*`, `combo_locale_{pt,en,es}.cpp`
   - `debug/`: `combo_debug_overlay.*`
   - `menu/`: `combo_menu.*`, `combo_menu_items.*`
   - `file_browser/`: `combo_file_browser.*`
   - `render/`: `gfx_textbox.*`, `viewport_screenshot.*`
   - `input/`: `keyboard_input.*` (alem de `usb_hid_keyboard.*` ja existente)
   - `media/`: `media_catalog.*`

5. Build system ajustado:
   - `src/Makefile` atualizado para novos objetos em subdirs `tools/*`.
   - `CPPFLAGS` com includes explicitos dos modulos e `-I.` para compatibilidade de headers no `src/` raiz.
   - `EXTRACLEAN` atualizado para limpar objetos/deps em `tools/*/*`.

6. Documentacao local de modulo atualizada:
   - `src/tools/README.md` com inventario de modulos atuais.

## Validacao

Build local executado com sucesso:

```bash
make -j4
```

Artefatos gerados:
- `artifacts/kernel8-default.img`
- `artifacts/kernel8-issue183.img`

Identificadores desta iteracao:
- `BUILD_HASH:c5ecc9e-7d01935f6f1ac0f94f9f2716b1f50500a00241d2`
- `INT_BUILD:A9AF`

## Estado atual

- Reorganizacao estrutural concluida e compilando.
- Nao houve mudanca funcional intencional em runtime.
- Aguardando proxima etapa da issue #183 (revisao/ajustes finos e fluxo de PR).

## Riscos/pendencias

- Revisar includes externos que dependam de paths antigos (fora do build principal), se houver scripts/ferramentas auxiliares que referenciem arquivos antigos.
- Validar em hardware se necessario (menu/overlay/file browser continuam operando igual).

## Proximos passos sugeridos

1. Rodar smoke test em hardware nos fluxos:
   - abrir menu de pausa (F12)
   - navegar file browser
   - save/load state
   - overlay/debug e locale
2. Se OK, seguir fluxo de projeto da issue #183 (In review -> PR -> merge na #176).
