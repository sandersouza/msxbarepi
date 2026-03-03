# Plano Operacional de Campanha - MSX BarePI

## Objetivo

Criar e operar uma campanha de financiamento recorrente (`Patreon + Pix`) com meta acumulada de `R$ 50.000` para liberar o repositório como público para a comunidade.

## Mensagem principal (usar sem variação)

1. Projeto: emulador MSX baremetal no Raspberry Pi.
2. Problema: desenvolvimento exige hardware, testes comparativos e tempo.
3. Solução: financiamento coletivo contínuo.
4. Compromisso: ao bater `R$ 50.000` acumulados, repo público.

CTA padrão:

1. Apoie via Patreon.
2. Apoie via Pix.
3. Compartilhe com 1 pessoa da comunidade retro.

## Stack de campanha

- Pagamento recorrente: `Patreon`
- Pagamento avulso: `Pix`
- Canais principais: `YouTube`, `Instagram`, `X`, comunidades MSX/retro, `GitHub`
- Idioma principal: `PT-BR` (com versão curta em EN)

## Recompensas e tiers

### Tiers recorrentes

1. `R$ 15/mês` - Apoiador
- agradecimento nominal (opt-in)
- update mensal

2. `R$ 35/mês` - Beta
- acesso antecipado a beta
- voto em prioridade de roadmap

3. `R$ 75/mês` - Sponsor
- benefícios anteriores
- changelog técnico detalhado

4. `R$ 150/mês` - Core Sponsor
- benefícios anteriores
- sessão trimestral de roadmap em grupo

### Doação única com brinde físico

Regra vigente:

- doação única `> R$ 1.000`
- brindes: camiseta, chaveiro, boné e cartão de agradecimento

## Calendário operacional (30 dias)

1. Segunda: vídeo curto de progresso.
2. Quarta: foto técnica + mini thread.
3. Sexta: post financeiro (meta acumulada + gastos da semana).
4. Domingo: chamada de apoio/beta-testers.
5. Live quinzenal curta (Q&A + status técnico).

## Guia passo a passo para lançamento

### Etapa A - Preparação (Dia 1-2)

1. Definir nome da campanha e slogan.
2. Criar página Patreon.
3. Criar chave Pix dedicada.
4. Publicar página "Como apoiar" com links únicos.

### Etapa B - Oferta (Dia 2-3)

1. Publicar tiers recorrentes (`R$15/R$35/R$75/R$150`).
2. Publicar regra de doação única `> R$1000`.
3. Publicar política de créditos (opt-in de nome).

### Etapa C - Prova e confiança (Dia 3-5)

1. Publicar vídeo de lançamento.
2. Publicar roadmap resumido do mês.
3. Publicar issue/milestone alvo do mês.
4. Publicar primeira prestação de contas.

### Etapa D - Operação contínua (semanal)

1. Atualizar barra de progresso `R$50k`.
2. Publicar relatório técnico.
3. Publicar relatório financeiro.
4. Responder comentários/DMs em lote.

### Etapa E - Escala (mensal)

1. Revisar conversão por canal.
2. Ajustar mensagens e thumbnails.
3. Reforçar CTA nos formatos com maior conversão.
4. Reavaliar tiers com base no churn.

## Roteiros de vídeo

### Vídeo 1 (60-90s) - Lançamento

Estrutura:

1. Hook (`0-10s`): "Quer ver esse projeto MSX baremetal virar open para todos?"
2. Prova (`10-30s`): boot em hardware real + overlay/debug.
3. Dor real (`30-45s`): hardware/testes/tempo.
4. Oferta (`45-70s`): Patreon + Pix + tiers.
5. Compromisso (`70-90s`): `R$50.000 acumulados = repo público`.

Texto base:

> Estou desenvolvendo um projeto de emulação MSX em baremetal no Raspberry Pi. Para acelerar os testes em hardware real, preciso estruturar bancada e validar em múltiplos cenários. Abri uma campanha com Patreon e Pix. Com R$ 50.000 acumulados, eu libero o repositório para a comunidade. Se fizer sentido para você, apoie e compartilhe.

### Vídeo 2 (45-60s) - Progresso semanal

Estrutura:

1. O que foi feito na semana.
2. Bloqueio atual.
3. Próximo passo.
4. Quanto falta para `R$50k`.

Texto base:

> Resumo da semana: [3 entregas]. Bloqueio atual: [1 ponto]. Próximo passo: [1 issue]. Meta acumulada: R$ [valor] de R$ 50.000. Apoio em Patreon/Pix na bio.

### Vídeo 3 (30-45s) - Chamada para beta-testers

Estrutura:

1. Convite objetivo.
2. Requisito mínimo: GitHub + issue com evidência.
3. Benefício: acesso beta e participação no roadmap.

Texto base:

> Preciso de beta-testers que saibam usar GitHub e abrir issues com evidência. Se você topa testar builds e reportar bugs de forma objetiva, entre no grupo beta.

## Roteiro de fotos e assets (12 peças mínimas)

1. Setup geral de bancada.
2. Raspberry em teste (close).
3. Tela HDMI com build rodando.
4. Tela CRT/composite em validação.
5. Debug probe e ligação.
6. Adaptador USB-TTL em uso.
7. Protoboard/jumpers/stepdown.
8. Quadro "roadmap da semana".
9. Print de issue fechada.
10. Print de milestone.
11. Gráfico de progresso financeiro.
12. Foto antes/depois de melhoria visível.

Padrão visual obrigatório:

1. Status da semana.
2. Percentual da meta `R$50k`.
3. CTA curto.

Formatos:

1. Feed `4:5`.
2. Stories `9:16`.
3. Thumbnail YouTube `16:9`.

## KPIs de sucesso

1. Conversão visitante -> apoio (`%`).
2. Retenção mensal de assinantes.
3. Ticket médio por apoiador.
4. Crescimento da meta acumulada (`R$/semana`).
5. Beta-testers ativos com issues úteis/mês.

## Conexão com backlog técnico

- `#127`: pipeline de build em lote por perfis.
- `#128`: assinatura estática opcional por build.
- `#129`: perfil freeware com limitações.
- `#120`: ABOUT + Credits + Patreon (validar espelho local em `docs/milestones/` antes da implementação).

## Referências operacionais

- Template de posts: `docs/templates/funding-social-posts-template.md`
- Template de relatório: `docs/templates/funding-weekly-report-template.md`
