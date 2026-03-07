# HDMI Debug Overlay Template (Runtime)

Objetivo: painel de debug legível no framebuffer HDMI com MMU/cache ativo, sem depender de UART.

## Layout recomendado (validado)
- Overlay compacto de 4 linhas no canto superior esquerdo.
- Emulador pode continuar rodando ao fundo.
- No preset debug, limitar escala do blit do emulador (ex.: `2x`) para evitar sobreposição visual.

## Regras que evitaram problemas (validado em hardware)
- Nao misturar `console_puts()` com o painel de debug durante runtime.
- Silenciar console HDMI apos o boot do core (`console_set_enabled(0)`).
- Desenhar o overlay **apos** o blit do emulador.
- Usar caixa opaca (`framebuffer_fill_rect`) antes do texto.
- Texto em branco (`framebuffer_set_text_colors(0x00FFFFFF, 0x00000000)`).
- Fazer flush de cache do framebuffer para a area do painel (`framebuffer_flush_rect`) com throttle.
- Evitar flush global do framebuffer no hot path.
- Evitar getters de debug que copiam structs grandes / tocam backends complexos; preferir getters escalares.

## Diretriz visual para overlay e menu do emulador
- Evitar fundo preto em linha inteira quando o objetivo for apenas destacar um rotulo.
- Preferir fundo preto localizado (caixa curta) somente no texto de status/badge (ex.: `PAUSE ||`).
- Em telas de menu, aplicar o mesmo principio: destacar apenas item selecionado/titulo com caixa opaca local, preservando o restante da imagem do emulador.
- Reservar faixa inteira opaca apenas para paineis de diagnostico quando a legibilidade exigir.

## Esqueleto de menu (estado atual no combo)
- Durante `PAUSE`, o combo desenha uma caixa flutuante preta centralizada sobre o box do emulador.
- Titulo do menu: `PAUSE II`.
- Itens iniciais renderizados (texto 2x):
	- `Cartridge A`
	- `Cartridge B`
	- `Disk Drive A`
	- `Disk Drive B`
	- `Settings`
- Selecao visual atual:
	- faixa por inversao de cores (fundo claro + texto escuro)
	- largura da faixa = largura da caixa menos 1 caractere de margem em cada lado
	- itens centralizados horizontalmente dentro da caixa
- Navegacao atual:
	- cursor move com `Up/Down` (edge-trigger, sem repeticao por hold)
	- selecao limitada aos 4 itens selecionaveis iniciais
- Anti-flicker aplicado:
	- menu so e redesenhado quando houver mudanca de estado (mostrar/ocultar, selecao ou reposicionamento)
	- evita repaint continuo do fundo da caixa em todos os ticks do loop
- O desenho ocorre sem faixa opaca global; ao sair do `PAUSE`, o texto do menu deixa de ser redesenhado e o proximo frame do emulador recompõe a area.
- Implementacao de referencia: `src/kernel.cpp` em `DrawMenuSkeleton()`.

## Formato compacto sugerido (cabendo em poucas linhas)
- `TXTDBG OS:xx`
- `CI R:? F:? K:? S:?? G:? B:??? P:???? LP:??/???`
- `EV Q:###### E:###### K0:## M:##`
- `JY BJ:#### MJ:####`

## Campos (referencia)
- `OS`: subestagio do proprio overlay (diagnosticar freeze no painel)
- `R/F/K/S/P`: estado do provider de input (Circle)
- `G/B`: gate e polls do backend de input
- `LP`: estagio/contador do loop principal
- `EV`: sequencias e ultimo evento HID resumido
- `JY`: joystick bits bridge/aplicados

## Referencias usadas
- `src/fmsx/fmsx_frontend.c` (overlay principal)
- `src/framebuffer.c` (`framebuffer_fill_rect`, `framebuffer_flush_rect`)
- `src/msx_input.c`, `src/msx_input_backend_circle_stub.c` (getters escalares)
