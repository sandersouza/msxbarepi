# Issue #173 - Bug: teclado USB-HID com perda de press/release e latência aleatória

- URL: https://github.com/sandersouza/msxbarepi/issues/173
- Milestone: FIX: Minor Issues / Other Issues (m17)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `bug`

## Contexto
No hardware, o teclado USB-HID apresenta comportamento intermitente:
- eventos `PRESS` sem `RELEASE` (ou o inverso),
- atrasos aleatórios na resposta de teclas.

Isso afeta tanto gameplay quanto navegação de menu.

## Objetivo
Restaurar leitura determinística de teclado:
- sequência press/release consistente,
- sem jitter perceptível no tempo de resposta,
- sem regressão de atalhos/menu.

## Hipótese inicial
Condição de corrida entre:
- callback RAW do dispositivo USB (contexto assíncrono),
- processamento completo de input no loop principal.

## Checklist
- [x] Abrir issue e vincular à milestone m17
- [x] Criar branch da issue
- [x] Isolar callback RAW para captura leve de snapshot
- [x] Processar input somente no loop principal
- [x] Build local com `DEBUG=1`
- [ ] Validar em hardware (MSX1/MSX2/MSX2+)
- [ ] Abrir PR para `fix-acurating-timing-vdp9958`
- [ ] Merge e fechamento da issue

## Resultado parcial desta iteração
- Implementado `snapshot` lockless (seqlock-style) para relatório RAW do teclado.
- Callback RAW deixou de executar lógica pesada; agora só grava snapshot pendente.
- Loop principal consome snapshot pendente e mantém auto-repeat de navegação.
