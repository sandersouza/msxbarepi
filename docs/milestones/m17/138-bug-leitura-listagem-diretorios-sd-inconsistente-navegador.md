# Issue #138 - Bug: leitura/listagem de diretórios no SD inconsistente no navegador

- URL: https://github.com/sandersouza/msxbarepi/issues/138
- Milestone: FIX: Minor Issues / Other Issues (m17)
- Estado remoto: CLOSED (2026-03-05)
- Prioridade: P2
- Labels: `bug`, `priority:P2`, `area:storage`

## Contexto
Após copiar ROMs/disks para o SD, alguns arquivos/diretórios existem no cartão, mas não aparecem no navegador. Não há padrão claro de nome/tamanho/extensão. Em alguns casos, renomear/apagar/regravar faz o item aparecer; depois disso tende a permanecer listado.

## Objetivo
Tornar a leitura/listagem de diretórios FAT32 determinística e confiável, com refresh consistente após alterações no SD.

## Checklist
- [x] Reproduzir em cenário controlado
- [x] Instrumentar scanner/browser e identificar etapa de perda
- [x] Corrigir invalidação/refresh de catálogo
- [x] Validar com ciclos repetidos de copiar/renomear/regravar
- [x] Registrar causa raiz e solução no `CHALLENGES.md`

## Resultado
- PR: https://github.com/sandersouza/msxbarepi/pull/151
- Solução aplicada:
  - Browser passou a ler diretório corrente diretamente via FatFS (sem depender de catálogo global limitado).
  - Navegação em subdiretórios com recarga sob demanda por `current_dir` (reduz consumo de memória e elimina inconsistência de listagem).
  - Ajustes no fluxo de `prepare-sd`/package para reduzir variáveis de escrita no SD durante testes repetidos.
