#!/usr/bin/env bash
set -euo pipefail

CONTEXT_FILE="docs/ai-handoff-context.md"
STAGE="${1:-unknown}"
STATUS="${2:-ok}"
ARTIFACT="${3:-n/a}"
NOTE="${4:-}" 

if [[ ! -f "$CONTEXT_FILE" ]]; then
  echo "Erro: arquivo de contexto não encontrado: $CONTEXT_FILE" >&2
  exit 1
fi

DATE_SHORT="$(date '+%d/%m/%Y %H:%M')"
DATE_LONG="$(date '+%Y-%m-%d %H:%M:%S')"

tmp_file="$(mktemp)"
awk -v d="$DATE_SHORT" 'BEGIN{done=0} {
  if (!done && $0 ~ /^Última atualização:/) {
    print "Última atualização: " d;
    done=1;
  } else {
    print $0;
  }
}' "$CONTEXT_FILE" > "$tmp_file"
mv "$tmp_file" "$CONTEXT_FILE"

if ! grep -q '^## Histórico de ciclos' "$CONTEXT_FILE"; then
  {
    echo
    echo '## Histórico de ciclos'
  } >> "$CONTEXT_FILE"
fi

entry="- ${DATE_LONG} | stage=${STAGE} | status=${STATUS} | artifact=${ARTIFACT}"
if [[ -n "$NOTE" ]]; then
  entry+=" | note=${NOTE}"
fi

echo "$entry" >> "$CONTEXT_FILE"

echo "Contexto atualizado: $CONTEXT_FILE"