# third_party
## Motivo desta pasta existir
Esta pasta existe para reunir **projetos de terceiros usados como**:

- referência técnica (hardware, drivers, áudio, vídeo, timing)
- base de integração (`fMSX`)
- comparação de implementação (evitar reinventar a roda)

No repositório principal, a pasta `third_party/` pode ser publicada **sem os fontes completos** desses projetos para evitar duplicação de código de terceiros e reduzir tamanho/ruído do repositório.

## Conteúdo esperado
Atualmente, as referências usadas pelo projeto são:

- `third_party/fmsx`
  - core de emulação MSX (base integrada no `msxbare`)
- `third_party/circle`
  - ambiente baremetal para Raspberry Pi usado como referência para drivers/periféricos (ex.: áudio PWM/HDMI, clocks, DMA)
- `third_party/blueberrymsx`
  - snapshot local do fork `BlueberryMSX-2.0plus` (port para Raspberry Pi/Linux)
  - referência para integração SDL2/DRM/KMS e comportamento de boot/timing em ambiente RPi
- `third_party/bluemsx`
  - referência upstream `blueMSX` usada para estudo do backend alvo da migração
  - snapshot local fixado no commit `4ca9ba6c50db18fa826653b3586b4cd76cb510dd` (`matheusjgsantos/blueMSX`)
  - metadados git preservados em `third_party/bluemsx/.gitbak` para auditoria/pristine guard
- `third_party/openMSX`
  - emulador MSX com foco em precisão, usado como referência para semântica de registradores V9938/V9958, timing e documentação de comportamento
- `third_party/ocm-pld-dev`
  - fontes VHDL do OneChipMSX, usados como referência de lógica de hardware (VDP, scroll, máscaras, pipeline)
- `third_party/V9958-Super`
  - implementação VHDL moderna do V9958, usada como referência para comportamento de registradores e fluxo interno de vídeo

## Repositórios de referência
- fMSX: `https://github.com/fmsx/fMSX`
- Circle: `https://github.com/rsta2/circle`
- BlueberryMSX-2.0plus: `https://github.com/matheusjgsantos/BlueberryMSX-2.0plus`
- blueMSX (fork usado no projeto): `https://github.com/matheusjgsantos/blueMSX`
- openMSX: `https://github.com/openMSX/openMSX`
- ocm-pld-dev: `https://github.com/pazos/ocm-pld-dev`
- V9958-Super: `https://github.com/suzukiplan/v9958-super`

## Como popular esta pasta (clone local)
Execute a partir da raiz do projeto:

```bash
git clone --depth 1 https://github.com/fmsx/fMSX.git third_party/fmsx
git clone --depth 1 https://github.com/rsta2/circle.git third_party/circle
git clone --depth 1 https://github.com/matheusjgsantos/BlueberryMSX-2.0plus.git third_party/blueberrymsx
git clone --depth 1 https://github.com/matheusjgsantos/blueMSX.git third_party/bluemsx
git clone --depth 1 https://github.com/openMSX/openMSX.git third_party/openMSX
git clone --depth 1 https://github.com/pazos/ocm-pld-dev.git third_party/ocm-pld-dev
git clone --depth 1 https://github.com/suzukiplan/v9958-super.git third_party/V9958-Super
```

Se quiser manter o mesmo padrão de metadata protegido usado no `bluemsx` (`.gitbak`), faça:

```bash
mv third_party/bluemsx/.git third_party/bluemsx/.gitbak
```

## Como atualizar as referências locais
```bash
git -C third_party/fmsx pull --ff-only
git -C third_party/circle pull --ff-only
git -C third_party/blueberrymsx pull --ff-only
git -C third_party/bluemsx pull --ff-only
git -C third_party/openMSX pull --ff-only
git -C third_party/ocm-pld-dev pull --ff-only
git -C third_party/V9958-Super pull --ff-only
```

Para ambientes onde `third_party/bluemsx/.gitbak` nao existe (clone tradicional), use:

```bash
git -C third_party/bluemsx pull --ff-only
```

## Observações
- Antes de incorporar código/ideias de terceiros, validar licença e registrar obrigações no projeto.
- Para uso como referência, documentar no código/docs qual arquivo/classe serviu de base conceitual.
- Se novas referências forem adicionadas em `third_party/`, este arquivo deve ser atualizado.
- Para trabalho de fidelidade MSX2+/V9958, priorizar consulta cruzada entre `blueberrymsx`, `bluemsx`, `openMSX`, `ocm-pld-dev` e `V9958-Super` antes de criar ajustes ad hoc.
- Nunca alterar o conteúdo de `third_party/` diretamente, exceto para atualizar a referência (pull) ou corrigir um erro de integração. Qualquer modificação deve ser na raiz do projeto, preferencialmente em `src/`, `include/` ou `docs/`, e referenciar o código de terceiros como base conceitual, não como código a ser modificado.
- Documentar claramente no código/docs quando uma implementação é inspirada ou baseada em um projeto de terceiros, para manter transparência e atribuição adequada.