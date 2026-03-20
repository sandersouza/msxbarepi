# Issue #195 - [P0] Implementar loader de ROM Master System e mapa básico de memória

- URL: https://github.com/sandersouza/msxbarepi/issues/195
- Milestone: Release: Suporte Master System (m22)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:storage`, `area:memory`, `area:emulation`

## Checklist
- [ ] Reconhecer extensões `.sms` e `.rom` no fluxo de carregamento
- [ ] Implementar mapa base de ROM/WRAM do SMS
- [ ] Garantir reboot/reset limpo ao trocar a mídia
- [ ] Registrar limitações para ROMs fora do recorte inicial

## Status da iteracao atual

- Issue criada para o bring-up minimo de carga de ROMs SMS no fluxo de midia atual.
- O foco aqui e permitir boot previsivel da imagem, sem ainda cobrir mapeadores especiais.
- Validacao de headers incompletos e comportamento de reset ficam dentro deste recorte.
