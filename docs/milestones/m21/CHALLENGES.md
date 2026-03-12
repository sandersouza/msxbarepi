# Desafios da Milestone

Registro de desafios enfrentados por issue, decisao adotada e status da solucao.

## Status
- `Resolvido` = solucao aplicada e validada
- `Parcial` = mitigado, requer iteracao
- `Futuro` = movido para issue/milestone futura

## Itens por issue

### #177 — MAKE MENUCONFIG (estilo Linux/Kconfig)
- Desafio: Introduzir fluxo de configuracao sem quebrar o `make` atual nem gerar divergencia entre defaults e runtime.
- Solucao adotada: Em andamento; iniciar por infraestrutura de configuracao e consumo no build.
- Status: Parcial
- Referencia: [177-implementar-make-menuconfig-kconfig-selecao-features-build.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m21/177-implementar-make-menuconfig-kconfig-selecao-features-build.md)

### #178 — feature gates de expansao (SCC/FM-PAC/DISK ROM/MegaRAM)
- Desafio: Acoplar gates sem regressao de compatibilidade quando perfil full estiver ativo.
- Solucao adotada: Planejado por matriz de capacidades central.
- Status: Futuro
- Referencia: [178-integrar-feature-gates-expansao-scc-fmpac-diskrom-megaram.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m21/178-integrar-feature-gates-expansao-scc-fmpac-diskrom-megaram.md)

### #179 — feature gates de perfil/midia/boot/debug
- Desafio: Travar opcoes em build e refletir corretamente no menu/boot sem caminhos invalidos.
- Solucao adotada: Planejado por policy unificada de features estaticas.
- Status: Futuro
- Referencia: [179-integrar-feature-gates-perfil-midia-boot-debug.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m21/179-integrar-feature-gates-perfil-midia-boot-debug.md)

### #180 — profile One ROM Mode
- Desafio: Preset fixo de runtime (MSX2+, GAME, sem KANJI, sem load dinamico) com fluxo claro de selecao da ROM alvo.
- Solucao adotada: Planejado como profile dedicado dentro do menuconfig.
- Status: Futuro
- Referencia: [180-implementar-profile-onerom-opcoes-fixas-selecao-rom-alvo.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m21/180-implementar-profile-onerom-opcoes-fixas-selecao-rom-alvo.md)

### #181 — opcao Patreon/Owner tag no config
- Desafio: Unificar configuracao de owner com fluxo atual de build/package sem duplicar fonte de verdade.
- Solucao adotada: Planejado com compatibilidade retroativa ao `OWNER=`.
- Status: Futuro
- Referencia: [181-integrar-opcao-patreon-owner-tag-fluxo-config-build.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m21/181-integrar-opcao-patreon-owner-tag-fluxo-config-build.md)

### #182 — matriz central de features estaticas
- Desafio: Reduzir acoplamento e condicional espalhada em menu/boot/core.
- Solucao adotada: Planejado com camada unica de consulta de capacidade.
- Status: Futuro
- Referencia: [182-refatorar-kernel-matriz-central-features-estaticas-profile.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m21/182-refatorar-kernel-matriz-central-features-estaticas-profile.md)

### #183 — organizacao imports/tools em src/tools
- Desafio: Reorganizar sem quebrar includes e pipeline de build.
- Solucao adotada: Planejado por migracao incremental com validacao de compilacao.
- Status: Futuro
- Referencia: [183-organizar-imports-tools-auxiliares-src-tools.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m21/183-organizar-imports-tools-auxiliares-src-tools.md)
