# CONTEXT

Ponto de entrada rapido para contexto operacional do projeto.

- Contexto completo e historico de handoff da branch atual: [docs/handoff/187-reduzir-latencia-teclado.md](docs/handoff/187-reduzir-latencia-teclado.md)
- Rodada atual: a issue `#187` voltou ao foco. O corte implementado separa explicitamente o consumo de reports HID da UI/hotkeys do consumo do backend/emulador. Foi criada a tool `src/tools/input/usb_hid_input_queue.*` com ring buffer fixo e dois cursores independentes (`UI` e `Runtime`), `CUsbHidKeyboard` migrou para essa tool e `PushKeyboardStateToRuntime()` passou a consumir do cursor `Runtime`, deixando de depender do ultimo snapshot drenado pela UI. Validacao local mais recente: `scripts/check-third-party-pristine.sh` OK e `make -j4 DEBUG=1 BUILD_BID=202603221330-a969d52` OK, gerando `artifacts/kernel8-issue187.img` com `BUILD_HASH:a969d52-383d0995fd90075e3ebe4d186f145dad9c09885f`.
- Atualize esse contexto ao final de cada ciclo relevante (build, milestone, bug, decisao tecnica).
