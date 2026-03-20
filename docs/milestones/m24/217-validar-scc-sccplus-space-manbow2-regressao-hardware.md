# [P1] Validar SCC/SCC+ em hardware com `Space Manbow 2` e regressao controlada

Milestone remota: #24
Issue remota: #217

## Objetivo
Fechar a milestone com evidencia em hardware de que o `Space Manbow 2` continuou estavel, passou a reproduzir a voz `START!` e que `Konami SCC+`/`Dual SCC+` nao introduziram regressao funcional.

## Escopo tecnico
- Validacao em hardware com `Space Manbow 2` como teste canonico.
- Rodadas minimas:
  - cold boot repetido;
  - reset pelo menu;
  - gameplay prolongado;
  - `Dual SCC+` OFF;
  - `Dual SCC+` ON com slot B livre;
  - tentativa de `Dual SCC+` ON com slot B ocupado.
- Registro de `BUILD_HASH` e `TXTDBG BUILD` em cada rodada relevante.
- Atualizacao final da milestone, handoff e `CHALLENGES.md`.

## DoR
- [ ] #215 concluida com voz `START!` audivel.
- [ ] #216 concluida com menu/persistencia fechados.
- [ ] Cenario de hardware e SD prontos para a bateria final.

## DoD
- [ ] `SMANBOW2` segue estavel no baseline funcional.
- [ ] Voz `START!` confirmada no hardware.
- [ ] Sem regressao nova observavel em musica/SFX SCC.
- [ ] `Dual SCC+` respeita conflito com slot B ocupado.
- [ ] Docs/handoff/milestone sincronizados e issue final pronta para fechamento.
