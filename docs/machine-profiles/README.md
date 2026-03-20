# Perfis de Maquina (MSX1/MSX2/MSX2+)

Este diretório define o workflow de boot e o baseline de hardware por modelo, de forma desacoplada.

## Objetivo

- Permitir evoluir um modelo sem impacto colateral nos demais.
- Manter uma fonte única para labels/defaults no código e uma descrição operacional clara na documentação.

## Fonte de verdade no código

- Catálogo central: `src/machine_profile_catalog.c`
- Contrato público: `src/machine_profile_catalog.h`
- Entradas desacopladas por modelo:
  - `src/machine_profiles/msx1_profile.inc`
  - `src/machine_profiles/msx2_profile.inc`
  - `src/machine_profiles/msx2p_profile.inc`

## Fluxo de boot por perfil

- [MSX1](./msx1.md)
- [MSX2](./msx2.md)
- [MSX2+](./msx2p.md)

## Regra de manutenção

- Alterações de defaults de um modelo devem ser feitas no `.inc` correspondente.
- Se houver mudança de ROMs/componentes/workflow, atualizar também o `.md` do modelo no mesmo commit.
