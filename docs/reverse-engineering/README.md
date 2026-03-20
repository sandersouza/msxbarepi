# Reverse Engineering e Disassembly (Diretorio Canonico)

Diretorio oficial para **todo** material de engenharia reversa e disassembly de ROMs:

- `docs/reverse-engineering/`

Nao criar novos diretorios paralelos (`docs/reverse`, `docs/rom-disassembly`, etc).

## Estrutura padrao

- `docs/reverse-engineering/msxdiag/`
  - analises e disassembly do `MSXDIAG.ROM`
- `docs/reverse-engineering/msx2plus/`
  - disassembly de BIOS/SUBROM de MSX2+
- `docs/reverse-engineering/issues/issue-<numero>/`
  - artefatos de investigacao por issue (ROMs, bancos, notas, comandos)

## Regra para proximos disassembly

1. Salvar os artefatos sempre dentro de `docs/reverse-engineering/`.
2. Incluir/atualizar um `README.md` no subdiretorio com:
   - ROM de origem;
   - comandos usados para gerar os artefatos;
   - objetivo da investigacao.
3. Referenciar nos handoffs/docs sempre o caminho canonico.
4. Analise, e comente os códigos disassemblados, para facilitar futuras consultas e investigações.
