# Issue #176 - Engenharia reversa SMANBOW2 (tela boot/selecao load)

## Objetivo
Investigar, via disassembly, os problemas visuais/temporais da tela de boot/selecao de load do SMANBOW2 no MSX2+.

## ROM alvo
- Arquivo: `roms/games/roms/SMANBOW2.ROM`
- Tamanho: `524288` bytes (`0x80000`, 32 bancos de 16KB)
- SHA1: `00a81872d548a7278b8901608bf12e8f79009bee`

## Artefatos gerados
- Bancos disassemblados: `docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank00.asm` ... `bank31.asm`
- Scan de I/O VDP: `docs/reverse-engineering/issues/issue-176/smanbow2/scan_vdp_io.txt`
- Scan de padroes de registradores: `docs/reverse-engineering/issues/issue-176/smanbow2/scan_reg_patterns.txt`
- Scan de strings: `docs/reverse-engineering/issues/issue-176/smanbow2/scan_strings.txt`
- Matriz de correlacao ROM/BIOS/VDP: `docs/reverse-engineering/issues/issue-176/correlation-matrix.md`

## Comandos usados
```bash
mkdir -p docs/reverse-engineering/issues/issue-176/smanbow2
wc -c roms/games/roms/SMANBOW2.ROM
shasum roms/games/roms/SMANBOW2.ROM

python3 - <<'PY'
import os, subprocess
rom_path='roms/games/roms/SMANBOW2.ROM'
out_dir='docs/reverse-engineering/issues/issue-176/smanbow2/banks'
os.makedirs(out_dir, exist_ok=True)
rom=open(rom_path,'rb').read()
bank_size=0x4000
banks=len(rom)//bank_size
for i in range(banks):
    chunk=rom[i*bank_size:(i+1)*bank_size]
    tmp=f'/tmp/smanbow2_bank_{i:02d}.bin'
    open(tmp,'wb').write(chunk)
    out=f'{out_dir}/bank{i:02d}.asm'
    subprocess.run(['z80dasm','-a','-g','0x4000','-l','-o',out,tmp], check=True)
print(f'banks={banks}')
PY

rg -n "out \(099h\)|out \(09bh\)|in a,\(099h\)|in a,\(098h\)" \
  docs/reverse-engineering/issues/issue-176/smanbow2/banks/*.asm \
  > docs/reverse-engineering/issues/issue-176/smanbow2/scan_vdp_io.txt

rg -n "089h|099h|09bh|01ah|01bh|019h|018h|025h|026h|027h" \
  docs/reverse-engineering/issues/issue-176/smanbow2/banks/*.asm \
  > docs/reverse-engineering/issues/issue-176/smanbow2/scan_reg_patterns.txt

strings -a roms/games/roms/SMANBOW2.ROM | rg -n "START|CONTINUE|LOAD|MANBOW|SPACE" \
  > docs/reverse-engineering/issues/issue-176/smanbow2/scan_strings.txt || true
```

## Achados iniciais (bank27)

### 1) Escrita de R#9 (PAL/NTSC) por espelho em RAM
Trecho em `bank27` com escrita explicita em `0x99` usando indice `0x89` (R#9):
- Enderecos: `0x51DC..0x51EE`
- Sequencia relevante:
  - le `0xFFE8`
  - ajusta bits (`or 0x02`, `and 0x7F`)
  - grava de volta em `0xFFE8`
  - `out (0x99),A`
  - `A=0x89`
  - `out (0x99),A`

Interpretacao: a rotina tenta controlar R#9 via mirror em RAM de sistema (padrao MSX BIOS), alinhada com os problemas historicos de 50/60Hz e com o comportamento observado em telas sensiveis.

### 2) Sequencia de setup/ISR de VDP sensivel a status register
Trechos relevantes:
- `0x5372..0x5392`: configuracao de registradores VDP (incluindo R#19 e R#15) e manipulacao de `0xF3DF`.
- `0x53DD..0x5403`: rotina que alterna R#15 para ler status (`in a,(0x99)`) e decide fluxo por carry.

Interpretacao: o menu depende de semantica fina de leitura de status (S#0/S#1/S#2) e de temporizacao de IRQ/HINT. Qualquer desvio no core local tende a aparecer como artefato exatamente em overlays/telas de selecao.

### 3) Bloco de dados da tela de menu
Regiao candidata de dados da tela em `bank27`:
- `0x5408..0x5487`
- hexdump mostra padrao de bytes com espacos/aspas/codigos de tile, indicando tabela de layout da UI (nao codigo linear).

Interpretacao: essa regiao provavelmente descreve composicao de texto/ornamentos da tela de selecao (incluindo area proxima de START/CONTINUE), o que ajuda a ancorar o bug visual.

## Correlacao com sintoma reportado
Comparando capturas do ambiente atual vs esperado:
- atual: artefatos em barras superiores e padrao pontilhado/fragmentado na parte inferior da tela de selecao;
- esperado: composicao limpa/estavel sem os artefatos.

A telemetria enviada sugere modo VDP em tela bitmap com uso de registradores de scroll/page e leitura de status em runtime, consistente com os trechos acima.

## Proximos passos tecnicos (iteracao seguinte)
1. Correlacionar o trace circular do core com as janelas `0x51DC..0x51EE`, `0x53DD..0x5403`, `0x582E..0x5897` e `0x5E6F..0x5EC5` do `bank27`.
2. Validar no hardware se `S#2 bit5/bit6`, `IE1` e a pagina efetiva de display convergiram para o comportamento esperado da matriz de correlacao.
3. Se o freeze persistir apos os ajustes de `odd/even`, `R#15` e `S#2`, revisar a progressao temporal do command engine usando BlueMSX/openMSX como baseline.
