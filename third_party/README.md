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

## Como popular esta pasta (clone local)

Execute a partir da raiz do projeto:

```bash
mkdir -p third_party

git clone --depth 1 https://github.com/fmsx/fMSX.git third_party/fmsx
git clone --depth 1 https://github.com/rsta2/circle.git third_party/circle
```

## Como atualizar as referências locais

```bash
git -C third_party/fmsx pull --ff-only
git -C third_party/circle pull --ff-only
```

## Como recriar do zero

```bash
rm -rf third_party/fmsx third_party/circle

git clone --depth 1 https://github.com/fmsx/fMSX.git third_party/fmsx
git clone --depth 1 https://github.com/rsta2/circle.git third_party/circle
```

## Observações

- Antes de incorporar código/ideias de terceiros, validar licença e registrar obrigações no projeto.
- Para uso como referência, documentar no código/docs qual arquivo/classe serviu de base conceitual.
- Se novas referências forem adicionadas em `third_party/`, este arquivo deve ser atualizado.
