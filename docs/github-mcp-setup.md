# GitHub MCP no Codex

Este documento descreve como habilitar e validar o servidor MCP do GitHub para uso no fluxo deste projeto.

## 1) Pré-requisitos

- `codex` CLI instalado
- `gh` CLI autenticado (`gh auth login`)
- PAT do GitHub com permissões mínimas para ações de projeto

## 2) Criar o GitHub PAT

Caminho no GitHub:

1. Avatar -> `Settings`
2. `Developer settings`
3. `Personal access tokens`
4. Escolher um tipo:
   - `Fine-grained tokens` (recomendado pela segurança)
   - `Tokens (classic)` (mais simples para compatibilidade ampla)

### 2.1) Permissões mínimas (recomendadas) para este projeto

#### Opção A: Fine-grained PAT (preferencial)

Escopo de repositório:

- `Only select repositories` -> selecione `sandersouza/msxbarepi`

Permissões de repositório:

- `Issues`: `Read and write`
- `Pull requests`: `Read and write`
- `Metadata`: `Read-only`

Permissões de organização (somente se seu board for de organização):

- `Projects`: `Read and write`

Observação:

- Se você usa **Project (v2) de organização**, a permissão de organização `Projects` é necessária para mover cards e editar campos.

#### Opção B: PAT classic (fallback simples)

Scopes mínimos:

- `repo`
- `project`

Scope adicional quando necessário:

- `read:org` (quando operações de projeto/consulta envolvem organização)

## 3) Configuração do MCP

Arquivo: `~/.codex/config.toml`

```toml
[mcp_servers.github]
transport = "streamable_http"
url = "https://api.githubcopilot.com/mcp/"
bearer_token_env_var = "GH_PAT_CODEX"
```

Importante:

- `bearer_token_env_var` deve conter o **nome da variável de ambiente**, nunca o token literal.

## 4) Exportar token no shell

No `~/.zprofile` (para shells de login e uso do Codex):

```bash
echo 'export GH_PAT_CODEX="<SEU_TOKEN_AQUI>"' >> ~/.zprofile
source ~/.zprofile
```

Teste da variável:

```bash
zsh -lc 'printenv GH_PAT_CODEX | wc -c'
```

Esperado: valor maior que `0`.

## 5) Teste rápido do servidor MCP

```bash
codex mcp get github
```

Resultado esperado:

- `enabled: true`
- `bearer_token_env_var: GH_PAT_CODEX`

## 6) Teste funcional (MCP real)

```bash
zsh -lc 'codex exec --json "Use GitHub MCP tool to read issue #183 from sandersouza/msxbarepi and print only title."'
```

Se estiver OK, o retorno inclui uma chamada MCP `server:"github"` e o título da issue.

## 7) Troubleshooting

### Erro: `Environment variable ... is not set`

A variável indicada em `bearer_token_env_var` não está exportada no shell usado pelo Codex.

```bash
printenv GH_PAT_CODEX | wc -c
zsh -lc 'printenv GH_PAT_CODEX | wc -c'
```

Se retornar `0`, exporte novamente no `~/.zprofile`.

### Token vazou em chat/config

- Revogue o token antigo no GitHub
- Gere um novo PAT
- Atualize `GH_PAT_CODEX`
- Evite gravar token literal em arquivos versionados ou mensagens

## 8) Fluxo recomendado no projeto

- Usar MCP para gestão de issue/PR/board quando disponível
- Manter `gh` CLI como fallback operacional
- Registrar no handoff quando um passo foi executado via MCP

## 9) Referências oficiais

- GitHub Docs: Managing your personal access tokens  
  https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens
- GitHub Docs: Permissions required for fine-grained personal access tokens  
  https://docs.github.com/en/rest/authentication/permissions-required-for-fine-grained-personal-access-tokens
