# Firmware RP2040 + TinyUSB para Teclado MSX (USB-HID)

## Escopo
Definir a arquitetura de firmware para usar teclado físico de MSX como dispositivo USB-HID conectado ao Raspberry Pi, com foco em baixa latência, estabilidade elétrica e integração simples com o kernel do MSX BarePI.

## Objetivo do MVP
- Converter a matriz do teclado MSX para eventos USB-HID (boot keyboard).
- Entregar compatibilidade imediata com o stack já usado no projeto (`CUSBKeyboardDevice`).
- Permitir evolução para recursos extras (joystick via teclado, macros e telemetria).

## Restrições e premissas
- MCU alvo: RP2040.
- Stack USB device: TinyUSB (classe HID teclado).
- Latência alvo ponta-a-ponta (tecla -> evento HID no host): <= 10ms no cenário nominal.
- Sem hot-plug agressivo do conector de teclado no MVP (inserção com sistema desligado/reinicialização recomendada).

## Arquitetura proposta

### Bloco 1: Scanner da matriz MSX
- Ciclo periódico para varrer linhas/colunas da matriz.
- Debounce por integrador simples por tecla (contador por estado).
- Geração de bitmap estável de teclas pressionadas.

### Bloco 2: Tradutor de keymap
- Conversão `matriz MSX -> HID usage code`.
- Tratamento explícito de modificadores (SHIFT/CTRL/GRAPH/CODE).
- Política de rollover para MVP: 6KRO + modificadores (formato padrão do relatório boot keyboard).

### Bloco 3: Endpoint USB HID
- Relatório HID padrão de teclado (8 bytes) via TinyUSB.
- Envio sob mudança de estado e keepalive periódico opcional.
- Reconexão automática após reset/reenumeração do host.

### Bloco 4: Diagnóstico local
- Contadores internos: scans, transições válidas, debounce descartado, overruns.
- Modo debug serial opcional no RP2040 (não obrigatório no caminho normal).

## Protocolo HID adotado (MVP)
- Classe: USB HID Keyboard (Boot Protocol).
- Poll interval: 1ms (ajustável).
- Relatório: modifiers + reservado + 6 keycodes.
- Prioridade de compatibilidade sobre recursos proprietários neste estágio.

## Mapeamento funcional inicial
- Teclas alfanuméricas e símbolos principais do MSX.
- Teclas de controle (ENTER, ESC, TAB, BS, SPACE).
- Cursores.
- F1..F5.
- CODE/GRAPH mapeadas para combinações HID equivalentes conforme tabela de compatibilidade.

## Segurança elétrica recomendada
- Nível lógico do teclado validado para 3.3V no domínio RP2040.
- Resistores série em linhas de scan para reduzir transientes.
- Sequência de init com GPIO em alta impedância antes da configuração ativa.

## Integração com o MSX BarePI (lado RPi)
- O kernel continua consumindo teclado como HID USB padrão (sem driver custom no MVP).
- Compatível com rotina atual de leitura/conversão em:
  - `src/keyboard_input.cpp`
  - `src/kernel.cpp`
- A integração dedicada por bridge/telemetria fica para a issue #69.

## Referências de consulta
- Leitura HID no projeto atual:
  - `src/kernel.cpp`
  - `src/keyboard_input.cpp`
- Mapeamentos e códigos de teclado no upstream fMSX (base conceitual):
  - `third_party/fmsx/fMSX/MSX.h`
  - `third_party/fmsx/libretro.c`

## Plano incremental
1. Prova de conceito RP2040: scanner de matriz + log local.
2. TinyUSB HID keyboard básico com mapa mínimo.
3. Tabela completa de mapeamento MSX e validação de teclas especiais.
4. Teste de soak (digitação prolongada + reconexão USB).
5. Entrega para integração kernel (issue #69).

## Critérios de aceite da #68
- Arquitetura de firmware definida e documentada.
- Caminho de integração com kernel atual descrito.
- Fontes de referência técnicas registradas.
- Plano incremental com etapas testáveis publicado.
