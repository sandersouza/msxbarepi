# Issue #138 - Bug: leitura/listagem de diretórios no SD inconsistente no navegador

- URL: https://github.com/sandersouza/msxbarepi/issues/138
- Milestone: FIX: Minor Issues / Other Issues (m17)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `bug`, `priority:P2`, `area:storage`

## Contexto
Após copiar ROMs/disks para o SD, alguns arquivos/diretórios existem no cartão, mas não aparecem no navegador. Não há padrão claro de nome/tamanho/extensão. Em alguns casos, renomear/apagar/regravar faz o item aparecer; depois disso tende a permanecer listado.

## Objetivo
Tornar a leitura/listagem de diretórios FAT32 determinística e confiável, com refresh consistente após alterações no SD.

## Checklist
- [ ] Reproduzir em cenário controlado
- [ ] Instrumentar scanner/browser e identificar etapa de perda
- [ ] Corrigir invalidação/refresh de catálogo
- [ ] Validar com ciclos repetidos de copiar/renomear/regravar
- [ ] Registrar causa raiz e solução no `CHALLENGES.md`
