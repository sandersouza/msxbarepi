# third_party

## Propósito

A pasta `third_party/` reúne upstreams usados como:

- referência técnica (drivers, áudio, vídeo, timers, USB)
- base de integração do core fMSX
- consulta para decisões de implementação sem reinventar componentes já validados

Diretriz obrigatória: **não alterar diretamente** projetos dentro de `third_party/`.

## Inventário atual

- `third_party/circle`
  - upstream: `https://github.com/rsta2/circle.git`
  - commit fixado (snapshot local): `5d819ab24f9a6c53ebab3525558051826b39d757`
  - licença: `LICENSE` (MIT)
- `third_party/fmsx`
  - upstream: `https://github.com/libretro/fmsx-libretro.git`
  - commit fixado (snapshot local): `fbe4dfc4c3e3f7eb27089def3d663a905b181845`
  - licença: `LICENSE` (não comercial conforme termos do projeto fMSX)

## Como repovoar localmente

A partir da raiz do projeto:

```bash
mkdir -p third_party

git clone https://github.com/rsta2/circle.git third_party/circle
git clone https://github.com/libretro/fmsx-libretro.git third_party/fmsx
```

Opcional: fixar nos commits atualmente documentados:

```bash
git -C third_party/circle checkout 5d819ab24f9a6c53ebab3525558051826b39d757
git -C third_party/fmsx checkout fbe4dfc4c3e3f7eb27089def3d663a905b181845
```

## Guardrail de integridade

Antes de builds dependentes de Circle/fMSX, execute:

```bash
make guard-third-party
```

Esse guardrail falha quando há alterações locais em `third_party/circle` ou `third_party/fmsx` (exceto com `ALLOW_DIRTY_THIRD_PARTY=1`).

## Política de contribuição

Se for necessário adaptar código upstream:

1. criar camada local fora de `third_party/` (ex.: `circle_combo/`)
2. documentar a referência conceitual usada
3. preservar licença e atribuição no fluxo do projeto
