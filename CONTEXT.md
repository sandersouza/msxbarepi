# CONTEXT

Ponto de entrada rapido para contexto operacional do projeto.

- Contexto completo e historico de handoff da branch atual: [docs/handoff/187-reduzir-latencia-teclado.md](docs/handoff/187-reduzir-latencia-teclado.md)
- Rodada atual: a issue `#187` voltou ao foco. A primeira iteracao separou explicitamente o consumo de reports HID da UI/hotkeys do consumo do backend/emulador com a tool `src/tools/input/usb_hid_input_queue.*` e dois cursores independentes (`UI` e `Runtime`). A segunda iteracao removeu o colapso pre-frame: `PushKeyboardStateToRuntime()` agora empilha todos os reports pendentes do cursor `Runtime`, `fmsx_runtime_set_keyboard_raw()` passou a enfileirar reports raw numa fila fixa do runtime e o fMSX passou a drenar essa fila ao longo dos scanlines com `fmsx_runtime_keyboard_drain_step()`. Validacao local mais recente: `scripts/check-third-party-pristine.sh` OK e `make -j4 DEBUG=1 BUILD_BID=202603221405-3572e72` OK, gerando `artifacts/kernel8-issue187.img` com `BUILD_HASH:3572e72-13a3a053bcbb762f4b0941e6df0045720034cf46`.
- Atualize esse contexto ao final de cada ciclo relevante (build, milestone, bug, decisao tecnica).
