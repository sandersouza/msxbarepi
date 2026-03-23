# CONTEXT

Ponto de entrada rapido para contexto operacional do projeto.

- Contexto completo e historico de handoff da branch atual: [docs/handoff/187-reduzir-latencia-teclado.md](docs/handoff/187-reduzir-latencia-teclado.md)
- Rodada atual: a issue `#187` segue em foco. A rodada de boot optimization agressiva foi revertida por falha em hardware, mantendo apenas a reducao de memoria estatica do dimming LCD/CRT em `kernel.cpp`; o estado seguro atual voltou para `KERNEL_MAX_SIZE=0x400000` e initramfs/USB no caminho original. No teclado, as ultimas iteracoes passaram a mirar especificamente falhas de `key release`: `src/fmsx_host_stubs.c` agora canonicaliza os `raw_keys[6]` e deduplica snapshots identicos ainda pendentes na fila interna do runtime do fMSX, reduzindo backlog redundante por reordenacao do report HID. A variante que tambem deduplicava contra o "ultimo report aplicado" foi descartada porque quebrava a confirmacao do caso `press-only`. Validacao local mais recente: `scripts/check-third-party-pristine.sh` OK e `make -j4 DEBUG=1 BUILD_BID=202603221530-issue187-ab38eb9` OK. Artefatos atuais: `artifacts/kernel8-issue187.img` e `artifacts/kernel8-default.img`, ambos com `659544` bytes.
- Atualize esse contexto ao final de cada ciclo relevante (build, milestone, bug, decisao tecnica).
