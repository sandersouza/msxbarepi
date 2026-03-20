# [P1] Modelar cartucho `Konami SCC+` e `Dual SCC+` no runtime/menu

Milestone remota: #24
Issue remota: #216

## Objetivo
Substituir a semantica atual de `Konami SCC` por um modelo real de cartucho/configuracao SCC+ no runtime e no menu, incluindo um segundo cartucho opcional `Dual SCC+`.

## Escopo tecnico
- Renomear a UX para `Konami SCC+`.
- Adicionar `Dual SCC+ ON/OFF` abaixo no menu.
- Politica fechada:
  - primeiro `Konami SCC+` = expansao interna;
  - `Dual SCC+` = segundo cartucho reservado no slot B;
  - se slot B estiver ocupado, nao ativar.
- Separar presenca de cartucho SCC+ de mute/mix de audio.
- Evoluir persistencia/settings para novo modelo, lendo `scc_cart` legado como compatibilidade de entrada.
- Atualizar locales `PT/EN/ES` e docs afetadas.

## DoR
- [ ] Comportamento tecnico do core SCC/SCC+ fechado pela #215.
- [ ] Politica de slot validada: primario interno, secundario no slot B.
- [ ] Mapeamento de persistencia/config definido.

## DoD
- [ ] Menu exibe `Konami SCC+`.
- [ ] Menu exibe `Dual SCC+ ON/OFF`.
- [ ] Persistencia nova funcionando e compatibilidade com `scc_cart` legado preservada.
- [ ] Conflito com slot B ocupado tratado explicitamente.
- [ ] Locales/documentacao atualizados no mesmo ciclo.
