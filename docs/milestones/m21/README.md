# Milestone m21

## Mapeamento GitHub
- Milestone remota: #21
- Título: Release: Build Menuconfig e Feature Gates
- Estado: open
- Due date: sem-data
- Open issues: 7
- Closed issues: 0
- URL: https://github.com/sandersouza/msxbarepi/milestone/21

## Descrição (GitHub)
Milestone dedicada a implantar um fluxo de configuracao estilo menuconfig para o build, com feature gates estaticos por perfil.

Baseline de integracao: branch #176 (`176-fix-msx2p-boot-screen-slow`).
Fluxo: cada issue desta milestone abre branch propria, valida, e merge de volta na baseline #176 antes do merge final para `main`.

## Escopo atual
- Infra de `make menuconfig` com geracao de config de build.
- Feature gates por modulo (expansoes, perfis de maquina, media, boot e debug).
- Profile dedicado `One ROM Mode`.
- Integracao de owner/patreon tag ao fluxo de configuracao.
- Refatoracao estrutural para matriz central de features estaticas.
- Organizacao de imports/tools em `src/tools`.
