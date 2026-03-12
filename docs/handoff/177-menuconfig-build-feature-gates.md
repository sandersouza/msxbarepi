# Handoff - Branch 177-menuconfig-build-feature-gates

Data: 2026-03-12

## Contexto da iteracao
- Milestone dedicada criada para menuconfig/feature gates: **#21 - Release: Build Menuconfig e Feature Gates**.
- Baseline definida conforme solicitado: branch/issue **#176**.
- Nova branch de trabalho inicial aberta para o primeiro assunto: **`177-menuconfig-build-feature-gates`**.

## Acoes executadas
1. Criada milestone remota `#21` com escopo de integracao incremental na baseline #176.
2. Criadas issues remotas da milestone:
   - #177 `MAKE MENUCONFIG` (infra)
   - #178 feature gates de expansao (SCC/FM-PAC/DISK ROM/MegaRAM)
   - #179 feature gates de perfil/midia/boot/debug
   - #180 profile One ROM Mode
   - #181 Patreon/Owner tag no fluxo de config
   - #182 matriz central de features estaticas
   - #183 organizacao de imports/tools em `src/tools`
3. Todas as issues foram adicionadas ao projeto `MSX BarePI`.
4. Status no projeto atualizado:
   - #177 -> `In progress`
   - #178..#183 -> `Ready`
5. Espelho local sincronizado em `docs/milestones/m21/`.

## Estado atual
- Branch atual: `177-menuconfig-build-feature-gates`
- Milestone ativa para o tema: `#21`
- Issue #177 com infraestrutura de `menuconfig` implementada e build validado.
- Artefatos de configuracao gerados por iteracao:
  - `.config`
  - `.config.mk`
  - `build/config.mk`
  - `build/config_build.h`

## Riscos/observacoes
- Existem alteracoes locais anteriores da branch #176 em arquivos de diagnostico/documentacao do boot MSX2+ ainda nao commitadas nesta branch.
- Durante a implementacao da issue #177, isolar commits para nao misturar alteracoes de analise da issue #176 com o novo escopo.

## Iteracao tecnica (menuconfig)

### Mudancas implementadas
- `Makefile`
  - novos targets: `menuconfig`, `syncconfig`, `config-header`;
  - include automatico de `.config.mk` e `build/config.mk`;
  - geracao de `build/config_build.h` antes do build;
  - propagacao de novas flags de feature para `src/Makefile`;
  - fallback de owner para `MSXBARE_PATREON_TAG` quando `OWNER` estiver vazio.
- `src/Makefile`
  - macros de feature estaticas adicionadas em `CPPFLAGS`;
  - include forcado de `../build/config_build.h`.
- `scripts/menuconfig.sh` (novo wrapper)
  - chama `scripts/menuconfig_tui.py`.
- `scripts/menuconfig_tui.py` (novo)
  - TUI em `curses` com estilo Linux menuconfig;
  - submenus, `[ ]/[∗]`, toggles com `Y/N`/`Space`, `S` salvar, `L` carregar, `?` ajuda, `Esc` voltar;
  - modo `--sync-only`/`--non-interactive`;
  - gera `.config`, `.config.mk`, `build/config.mk`.
- `scripts/gen-build-header.sh` (novo)
  - gera `build/config_build.h` a partir das variaveis efetivas.
- Documentacao atualizada:
  - `README.md`
  - `scripts/README.md`
  - `docs/milestones/m21/177-...md`

### Validacao executada
- `make menuconfig NON_INTERACTIVE=1`
- `make clean && make`

Resultado: build concluido com sucesso e artefato de issue gerado.
