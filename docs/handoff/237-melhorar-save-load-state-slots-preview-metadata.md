# Handoff - Issue 237 Save/Load State Slots

Ultima atualizacao: 05/05/2026

## Escopo ativo

- Issue: `#237 [P2] Melhorar Save/Load State com slots 0-9, preview e metadata`.
- Branch local: `codex/237-melhorar-save-load-state-slots-preview-metadata`.
- Objetivo: substituir o save/load opaco em `slot-last.sav` por selecao explicita de slots `0-9` com metadata e preview.

## Implementacao atual

- `Save State` e `Load State` no menu F12 agora abrem uma view de slots fixos `0-9`.
- `Save State` permite sobrescrever qualquer slot.
- Ao confirmar um slot em `Save State`, o menu permanece aberto e atualiza o painel `INFO`; `Load State` continua fechando o menu para restaurar o runtime.
- `Load State` so enfileira load para slots ocupados e validos; slots vazios/invalidos ficam visiveis e nao executam acao.
- Antes de aplicar o estado, `Load State` tenta restaurar cartuchos, discos e cassete pelos caminhos completos gravados na metadata; se a midia salva nao existir, o slot/drive/cassete fica vazio.
- Arquivos por slot:
  - estado serializado: `SD:/states/slot-<n>.sav`;
  - metadata textual: `SD:/states/slot-<n>.meta`;
  - preview bruto: `SD:/states/slot-<n>.raw`.
- O preview usa thumbnail `256x192` em `TScreenColor`, capturado a partir do snapshot do viewport do menu de pausa.
- O painel lateral `INFO` mostra cartucho A, disco A, cassete e preview quando disponivel.
- A lista de slots mostra somente `SLOT 0..9`, sem coluna de status/timestamp; status, midias e preview ficam concentrados no painel lateral.
- Abrir `Save State` ou `Load State` sempre inicia a selecao no `SLOT 0`.
- O preview e desenhado em tamanho fixo `256x192`, sem labels redundantes; o quadro lateral ocupa a antiga linha `INFO` e termina sem linha de espaco ate a borda inferior da janela.
- A coluna de slots usa highlight compacto e centralizado.

## Decisoes tecnicas

- O formato do estado do fMSX nao foi alterado; slots e metadata ficam em sidecars.
- A UI nao exibe data/hora porque o Raspberry Pi 3B nao tem relogio com bateria nesse fluxo.
- A metadata ainda grava `uptime_ms` apenas como rastreio tecnico, sem aparecer no menu; os caminhos de ROM/DSK/CAS sao usados para restaurar midias no load.
- O renderer ganhou `DrawBitmapNearest()` para desenhar o preview sem expor `PutPixel()`.
- A alteracao do preview de `96x72` para `256x192` invalida sidecars `.raw` antigos apenas para exibicao de preview; o save state e a metadata continuam separados.

## Validacao local

- `scripts/check-third-party-pristine.sh`: OK.
- `git diff --check`: OK.
- `make -j4 DEBUG=1`: OK, `kernel8.img` 788008 bytes.
- `make -j4 DEBUG=0`: OK, `kernel8.img` 754312 bytes.
- Build final `DEBUG=0`: `BUILD_BID=202605051208-2bf4d90`, `TXTDBG BUILD:8C72`, SHA1 `485207e9b075ae151e74a73f77c1cd90afd794cf`, artefato `artifacts/kernel8-issue237.img`.

## Riscos e reteste em hardware

- Retestar no Raspberry Pi 3B:
  - salvar em slots diferentes e confirmar criacao de `.sav/.meta/.raw`;
  - carregar slot valido e confirmar estado correto, incluindo restauracao de ROM/DSK/CAS quando os arquivos existem;
  - remover uma midia salva do SD e confirmar que `Load State` deixa o slot/drive/cassete vazio sem travar;
  - navegar por slots vazios/invalidos sem travar;
  - confirmar legibilidade do painel lateral em HDMI/AV.
- Confirmar no hardware se o preview `256x192` cabe bem em HDMI/AV, se a coluna de slots fica centralizada e se a selecao sempre inicia no `SLOT 0`.
