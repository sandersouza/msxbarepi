# Issue #194 - [P0] Introduzir perfil de máquina Master System no runtime baremetal

- URL: https://github.com/sandersouza/msxbarepi/issues/194
- Milestone: Release: Suporte Master System (m22)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:boot`, `area:emulation`, `area:settings`

## Checklist
- [ ] Definir perfil/enum/capabilities de Master System no runtime
- [ ] Criar boot/reset path dedicado para SMS
- [ ] Garantir build baremetal com seleção explícita do perfil SMS
- [ ] Documentar premissas e limites iniciais do perfil

## Status da iteracao atual

- Issue criada para estabelecer a fundacao do console SMS no runtime.
- Escopo inicial foca em profile/capabilities, fluxo de boot/reset e isolamento da maquina.
- Integracoes de VDP, audio, input e cartucho seguem em issues especificas desta milestone.
