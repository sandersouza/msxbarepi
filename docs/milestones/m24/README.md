# Milestone m24

## Mapeamento GitHub
- Milestone remota: #24
- Titulo: Melhorias audio cart SCC/SCC+
- Estado: open
- Due date: sem-data
- Open issues: 4
- Closed issues: 0
- URL: https://github.com/sandersouza/msxbarepi/milestone/24

## Descricao (GitHub)
Evoluir o suporte de audio/cartucho SCC do runtime atual para um modelo consistente de SCC/SCC+, alinhado com referencias `openMSX` e `blueMSX`, preservando a estabilidade atual do `Space Manbow 2` e recuperando a voz sintetizada `START!`.

Criterio de saida:
- `Space Manbow 2` permanece estavel no baseline atual.
- A voz sintetizada `START!` toca no inicio do jogo.
- O core local diferencia corretamente SCC e SCC+.
- O menu expõe `Konami SCC+` e `Dual SCC+ ON/OFF`.
- `Dual SCC+` respeita conflito com cartucho ja ocupado no slot B.

## Escopo atual
- Gap analysis do core SCC/SCC+ local vs `openMSX` e `blueMSX`.
- Instrumentacao UART cirurgica para fechar o caminho do sample `START!`.
- Atualizacao do core local de SCC/SCC+ sem tocar `third_party`.
- Evolucao do runtime/menu para `Konami SCC+` e `Dual SCC+`.
- Validacao funcional e de regressao em hardware com `Space Manbow 2`.
