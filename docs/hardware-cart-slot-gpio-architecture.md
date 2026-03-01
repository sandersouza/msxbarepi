# Arquitetura de Slots de Cartucho MSX via GPIO (RPi)

## Escopo
Definir uma arquitetura segura para suporte a cartuchos físicos MSX no projeto MSX BarePI, minimizando risco elétrico ao Raspberry Pi e mantendo caminho de evolução para protótipo funcional.

## Restrições de base
- Raspberry Pi 3B GPIO opera em 3.3V e **não é tolerante a 5V**.
- Barramento de cartucho MSX clássico é 5V TTL e expõe grande número de sinais (endereços, dados e controle).
- Leitura/escrita direta pelo GPIO do RPi em tempo real, sem hardware intermediário, não é segura nem prática para a versão inicial.

## Riscos principais (abordagem direta GPIO)
- Sobretensão (5V -> 3.3V) com risco de dano permanente ao SoC.
- Corrente de inrush/back-power ao inserir/remover cartucho energizado.
- Contenção de barramento por direção incorreta em linhas de dados.
- Limitação de pinos e timing para capturar barramento completo com estabilidade.

## Alternativas avaliadas

### A) RPi GPIO direto com level-shifters discretos
- Prós: menor BOM em teoria.
- Contras: alto risco de timing/contenção, complexidade elétrica, difícil manutenção.
- Veredito: **não recomendado** para MVP.

### B) RPi + lógica de buffer/latch (74LVC/74AHCT) sem MCU intermediário
- Prós: melhora proteção elétrica e organização de sinais.
- Contras: ainda exige controle de timing crítico no RPi e muitos GPIOs.
- Veredito: viável para laboratório, **não recomendado** como arquitetura principal.

### C) RPi + MCU bridge dedicado (recomendado)
- Prós: isola timing do cartucho no bridge, reduz carga de tempo real no RPi, melhora segurança elétrica.
- Contras: firmware adicional e maior esforço inicial.
- Veredito: **arquitetura recomendada**.

## Arquitetura recomendada

### 1) Bridge de barramento
- MCU intermediário dedicado ao slot (ex.: RP2040) para capturar sinais do cartucho e expor interface de alto nível ao RPi.
- RPi conversa com bridge via SPI (preferencial) ou interface paralela simplificada.

### 2) Proteção e adaptação de nível
- Entradas 5V do cartucho para domínio 3.3V via transceptores/buffers apropriados.
- Linhas bidirecionais (dados) com transceptor de direção controlada e enable explícito.
- Resistores série em sinais críticos para limitar corrente/transientes.

### 3) Alimentação e segurança
- Rail 5V do slot com proteção (fusível resetável + TVS).
- Chaveamento de alimentação controlado (load switch) para permitir power-cycle seguro do cartucho.
- Sequência de inicialização com barramento em alta impedância até bridge pronto.

### 4) Hot-plug policy
- **Sem hot-plug no MVP**: inserção/remoção apenas com slot desenergizado.
- Detect de presença opcional para fases posteriores.

### 5) Modelo de software
- Driver no kernel BarePI fala com bridge e abstrai cartucho como dispositivo de bloco/banco.
- Operações mínimas de MVP:
  - identificar presença
  - ler blocos/bancos ROM
  - reset de sessão após troca de cartucho

## Limites de viabilidade por tipo de cartucho (MVP)
- Priorizar cartuchos ROM simples e mapeadores mais comuns em modo leitura.
- Não incluir inicialmente cartuchos com requisitos especiais de escrita/tempo fino.
- Expansões futuras devem ser adicionadas por perfil/capability no bridge.

## Decisão técnica
A solução oficial para o projeto é:
- **MVP**: bridge dedicado (RP2040) + proteção elétrica + sem hot-plug.
- **Fase seguinte**: ampliar suporte de mapeadores e recursos especiais por firmware do bridge.

## Plano de implementação incremental
1. Prova elétrica: fonte/proteções/níveis e validação de tensão/corrente.
2. Bridge firmware mínimo: leitura de sinais e snapshot estável.
3. Protocolo RPi<->bridge (SPI) com comandos simples de leitura.
4. Integração no kernel com API de cartucho.
5. Testes com conjunto de cartuchos ROM simples.

## Critérios de aceite desta etapa (#67)
- Documento técnico com solução recomendada concluído.
- Riscos e mitigações registrados.
- Estratégia de evolução para protótipo funcional definida.
