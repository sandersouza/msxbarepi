# Milestone m22

## Mapeamento GitHub
- Milestone remota: #22
- Título: Release: Suporte Master System
- Estado: open
- Due date: sem-data
- Open issues: 7
- Closed issues: 0
- URL: https://github.com/sandersouza/msxbarepi/milestone/22

## Descrição (GitHub)
Adicionar suporte nativo a ROMs de Master System no MSXBarePI, reaproveitando a proximidade arquitetural com o ecossistema MSX quando fizer sentido, mas com perfil de máquina, memória, VDP, áudio e input próprios do SMS.

Critério de saída:
- carregar ROMs `.sms`/`.rom` do SD sem SO;
- inicializar e rodar jogos de referência no Raspberry Pi 3B;
- vídeo, input e áudio básicos funcionais;
- mapeadores prioritários validados;
- smoke suite e matriz de compatibilidade documentadas.

## Escopo atual
- Perfil de máquina dedicado para Master System no runtime baremetal.
- Loader de ROM `.sms`/`.rom` com mapa básico de memória.
- Mapeadores prioritários de cartucho (Sega e Codemasters).
- Pipeline de vídeo/VDP adaptado ao recorte inicial do SMS.
- Input e áudio básicos integrados ao host atual.
- Smoke suite e matriz de compatibilidade para o primeiro ciclo funcional.
