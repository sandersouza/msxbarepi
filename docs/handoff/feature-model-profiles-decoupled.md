# Handoff Persistente da Branch feature-model-profiles-decoupled

Ultima atualizacao: 11/03/2026 (ciclo 22:19 BRT)

## Objetivo da branch

Desacoplar o comportamento por modelo (`MSX1`, `MSX2`, `MSX2+`) para permitir evolucao isolada de defaults e workflow sem impacto lateral.

## Implementacao realizada

- Criado catálogo central de perfis:
  - `src/machine_profile_catalog.h`
  - `src/machine_profile_catalog.c`
- Entradas por modelo separadas em includes dedicados:
  - `src/machine_profiles/msx1_profile.inc`
  - `src/machine_profiles/msx2_profile.inc`
  - `src/machine_profiles/msx2p_profile.inc`
- Integração no build:
  - `src/Makefile` agora compila `machine_profile_catalog.o`.
- Integração no kernel/menu:
  - `src/kernel.cpp` passou a usar o catálogo para label, detecção de família (`MSX2 family`), clamp e ciclo de perfis.
  - `src/combo_menu_items.cpp` removeu hardcode de label e passa a usar `machine_profile_label()` e `machine_profile_clamp()`.

## Documentacao adicionada

- `docs/machine-profiles/README.md`
- `docs/machine-profiles/msx1.md`
- `docs/machine-profiles/msx2.md`
- `docs/machine-profiles/msx2p.md`
- `README.md` atualizado com ponteiro para a nova documentação de perfis.

## Build desta iteracao

- Comando: `make -j4 DEBUG=1`
- Resultado: `OK`
- Artefato: `artifacts/kernel8-default.img`
- BUILD_HASH: `0e72854-2e3158962744948e70db9e78023d0bff981707e9`

## Observacoes importantes

- A branch foi criada como `feature-model-profiles-decoupled` (sem `/`) por restricao local de refs.
- Worktree continua com alteracoes anteriores da issue de timing/boot; esta branch foca no desacoplamento de perfis e documentação correspondente.

## Estado desta iteracao (11/03/2026 22:24 BRT)

- `docs/debug-layer.md` atualizado com regra operacional de reporte de build:
  - em toda build entregue para teste, informar sempre `BUILD_HASH` e `INT_BUILD`.
  - `INT_BUILD` definido como o hash de 16 bits mostrado no overlay (`TXTDBG BUILD:%04X`), derivado de `MSXBARE_BUILD_BID`.
