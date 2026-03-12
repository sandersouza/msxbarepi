# src/tools

Modulos auxiliares reaproveitaveis do core.

Objetivo:
- reduzir tamanho e acoplamento de `kernel.cpp`;
- concentrar blocos mutaveis (USB-HID, mapeadores de input, helpers de runtime)
  em componentes menores, com interface clara.

Regra pratica:
- `kernel.cpp` fica como orquestrador;
- comportamento especifico de subsistemas vai para `src/tools/*.h` + `*.cpp`.

Modulo atual:
- `usb_hid_keyboard.*`: ciclo de teclado USB HID (attach/detach, callback raw,
  snapshot lockless e consumo no loop principal).
