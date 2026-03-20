# Milestone m23

## Mapeamento GitHub
- Milestone remota: #23
- Titulo: Game Master+
- Estado: open
- Due date: sem-data
- Open issues: 5
- Closed issues: 0
- URL: https://github.com/sandersouza/msxbarepi/milestone/23

## Descricao (GitHub)
Adicionar no menu principal uma entrada `Game Master+` para carregar cheats a partir de `SD:/gamemaster.cht`, listar jogos com catalogo disponivel no estilo file browser e permitir ativacao ON/OFF de cheats compostos por um ou mais POKEs no runtime.

Criterio de saida:
- o menu carrega `SD:/gamemaster.cht` ao abrir `Game Master+`;
- a UI lista titulos com cheats em navegacao estilo file browser;
- ao selecionar um jogo, a UI exibe cheats com toggle ON/OFF;
- cheats aceitam multiplos POKEs com `Address`/`Value`/`Size` (`8-bit`/`16-bit`);
- aplicacao/remocao e estavel no runtime e documentada com formato de catalogo e exemplos.

## Escopo atual
- Definicao de um formato canonico e parser baremetal para `gamemaster.cht`.
- Catalogo navegavel de jogos com cheat em UX estilo file browser.
- Entrada `Game Master+` no menu principal e tela `Active Cheats`.
- Integracao de sessao de cheats com multi-POKE e restore seguro no core fMSX.
- Documentacao do formato e validacao pratica do fluxo em hardware.
