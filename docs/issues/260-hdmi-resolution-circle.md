# Melhorar deteccao HDMI, escala e troca de resolucao on-the-fly via Circle

Issue remota: #260
URL: https://github.com/sandersouza/msxbarepi/issues/260

## Contexto

O pipeline atual de video precisa evoluir para detectar melhor a resolucao HDMI disponivel, ajustar escala de forma previsivel e permitir mudanca de resolucao em runtime usando os recursos do Circle quando tecnicamente viavel.

Essa trilha deve preservar o alvo baremetal no Raspberry Pi 3B, sem modificar diretamente `third_party/circle`, e deve consultar as APIs/classes de video do Circle antes de introduzir logica propria.

## Objetivo

- Auditar como o projeto inicializa framebuffer/HDMI hoje e onde a resolucao e a escala sao decididas.
- Consultar `third_party/circle` para identificar APIs ou padroes existentes de deteccao de modo HDMI, configuracao de framebuffer e troca de modo.
- Melhorar a selecao inicial de resolucao HDMI com fallback deterministico.
- Ajustar a escala para manter proporcao e area util coerente nos modos suportados.
- Investigar e implementar, se viavel, mudanca de resolucao on-the-fly sem reinicializar o sistema.
- Documentar limites tecnicos quando alguma troca on-the-fly depender de reinit parcial, flush especifico ou nao for segura no estado atual.

## Escopo tecnico inicial

- Area principal: video/framebuffer/HDMI.
- Integracao esperada com configuracoes de runtime e menu, se a troca de resolucao for exposta ao usuario.
- Debug: usar UART e/ou overlay HDMI quando necessario para registrar modo detectado, modo aplicado, escala efetiva e fallback usado.
- Referencia obrigatoria: `third_party/circle` para APIs e comportamento de video.

## Fora de escopo inicial

- Reescrever o backend de renderizacao do emulador.
- Modificar diretamente `third_party/circle`.
- Garantir suporte universal a todo modo HDMI/TV antes de validar os modos prioritarios no Raspberry Pi 3B.

## Definition of Ready

- Mapear os pontos atuais de inicializacao de video/framebuffer no codigo do projeto.
- Identificar as classes/APIs relevantes do Circle para deteccao/configuracao de modos HDMI.
- Definir uma lista curta de modos prioritarios para validacao inicial, incluindo fallback seguro.
- Confirmar como a escala atual e aplicada no blit/render final.

## Definition of Done

- Resolucao HDMI inicial e escolhida com fallback claro e rastreavel.
- Escala efetiva preserva proporcao e evita corte/truncamento inesperado nos modos validados.
- Mudanca de resolucao on-the-fly implementada quando viavel, ou documentada com restricoes tecnicas e alternativa segura quando nao viavel.
- Telemetria minima registra modo detectado, modo aplicado, escala e fallback.
- Documentacao tecnica atualizada com comportamento, comandos/flags afetados e referencias do Circle consultadas.
- Build local passa e artefatos esperados da branch de issue sao gerados.

## Checklist

- [x] Auditar inicializacao atual de HDMI/framebuffer.
- [x] Auditar referencias relevantes em `third_party/circle`.
- [x] Definir modelo de modos suportados e fallback.
- [x] Ajustar calculo/aplicacao de escala.
- [x] Validar estrategia de troca on-the-fly.
- [x] Implementar telemetria de modo/escala.
- [x] Atualizar docs e handoff da branch.
- [x] Rodar build local.

## Atualizacao 2026-04-29

- `Resolution [720/768]` foi substituido por `Proportion [16:9/4:3]`.
- `16:9` aplica framebuffer `960x540`; `4:3` aplica framebuffer `640x480`.
- O resize e feito via Circle (`CComboScreenDevice::Resize()`) no boot, antes do start do emulador, e tambem ao alternar pelo menu.
- `proportion=16:9|4:3` passa a ser salvo em `msx.cfg`/RAW; `config.txt` nao e alterado por essa opcao.
- Leitura defensiva aceita `resolution=720/768` como migracao.
- `Save to Disk` foi removido do `Settings`; ao sair de `Settings` com `ESC` ou fechar o menu com `F12` dentro de `Settings`, as alteracoes sao salvas automaticamente em `msx.cfg`/RAW.
- O header `SETTINGS` foi removido da view `Settings`, mantendo margens superior/inferior simetricas para reduzir a altura do menu sem reduzir a fonte.
- O fullscreen do viewport agora escolhe o maior fator que cabe em largura e altura em passos de `1/16x`, preservando proporcao e mantendo o presenter em escala cacheavel.
- Validacao local passou em `DEBUG=1`, `DEBUG=0` e `make -n sdcard`.
- Build final para teste: `BUILD_BID: 202604291401-c386661`, `TXTDBG BUILD:3260`, `BUILD_HASH:c386661`.
