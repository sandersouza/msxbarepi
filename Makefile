PROJECT := msxbare
BUILD_DIR := build

.DEFAULT_GOAL := default

FB_WIDTH ?= 1024
FB_HEIGHT ?= 768
DEBUG ?= 0
EMULATOR_BACKEND ?= fmsx
DEBUG_BOOL := 0
ifeq ($(strip $(DEBUG)),1)
DEBUG_BOOL := 1
endif
MSXBARE_CARTA_ONLY ?= 0
MSXBARE_SIZE_OPT ?= 1
OWNER ?=
FIRMWARE_DIR ?= ./rpi-firmware
BUILD_BID ?= $(shell date +%Y%m%d%H%M)-$(shell git rev-parse --short HEAD 2>/dev/null || echo nogit)
CIRCLE_KERNEL_MAX_SIZE ?= 0x400000
CIRCLE_EXTRAINCLUDE ?= -DKERNEL_MAX_SIZE=$(CIRCLE_KERNEL_MAX_SIZE)

CROSS ?= $(shell \
	if command -v aarch64-none-elf-gcc >/dev/null 2>&1; then \
		echo aarch64-none-elf-; \
	elif command -v aarch64-elf-gcc >/dev/null 2>&1; then \
		echo aarch64-elf-; \
	else \
		echo aarch64-none-elf-; \
	fi)
BOOTSTRAP_ARTIFACT := artifacts/kernel8-bootstrap.img
DEFAULT_ARTIFACT := artifacts/kernel8-default.img
INITRAMFS_IN ?= roms/initramfs
INITRAMFS_OUT ?= sdcard/msx.cpio
CONTEXT_UPDATER := ./scripts/update-ai-context.sh
THIRD_PARTY_GUARD := ./scripts/check-third-party-pristine.sh

.PHONY: all default clean help guard-third-party circle-configure sdcard sdcard-update initramfs package

all: default

default: circle-configure
	@mkdir -p artifacts
	@mkdir -p artifacts build/src
	$(MAKE) -C third_party/circle/lib clean >/dev/null
	$(MAKE) -C third_party/circle/lib EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null
	$(MAKE) -C src clean >/dev/null
	$(MAKE) -C src CHECK_DEPS=0 \
		EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' \
		DEBUG=$(DEBUG_BOOL) \
		EMULATOR_BACKEND=$(EMULATOR_BACKEND) \
		MSXBARE_CARTA_ONLY=$(MSXBARE_CARTA_ONLY) \
		MSXBARE_SIZE_OPT=$(MSXBARE_SIZE_OPT) \
		MSXBARE_BUILD_BID="$(BUILD_BID)" \
		MSXBARE_BUILD_OWNER="$(OWNER)"
	@img=$$(ls src/kernel8*.img 2>/dev/null | head -n1); \
	if [ -z "$$img" ]; then \
		echo "Erro: imagem de bootstrap nao encontrada"; \
		exit 1; \
	fi; \
	cp "$$img" build/src/kernel8.img; \
	cp build/src/kernel8.img $(BOOTSTRAP_ARTIFACT)
	$(MAKE) -C src clean >/dev/null
	bash $(CONTEXT_UPDATER) default build-ok $(BOOTSTRAP_ARTIFACT)
	cp $(BOOTSTRAP_ARTIFACT) $(DEFAULT_ARTIFACT)
	bash $(CONTEXT_UPDATER) default default-ok $(DEFAULT_ARTIFACT)
	@issue_branch=$$(git rev-parse --abbrev-ref HEAD 2>/dev/null || true); \
	issue_id=$$(printf "%s" "$$issue_branch" | sed -n 's/^\([0-9][0-9]*\)-.*/\1/p'); \
	if [ -n "$$issue_id" ]; then \
		issue_artifact="artifacts/kernel8-issue$${issue_id}.img"; \
		cp $(BOOTSTRAP_ARTIFACT) "$$issue_artifact"; \
		bash $(CONTEXT_UPDATER) default issue-ok "$$issue_artifact"; \
		echo "Artefato issue estavel: $$issue_artifact"; \
	fi
	@echo "Artefato default estavel: $(DEFAULT_ARTIFACT)"

guard-third-party:
	bash $(THIRD_PARTY_GUARD)

circle-configure: guard-third-party
	cd third_party/circle && ./configure -r 3 -p $(CROSS) -f

clean:
	rm -rf $(BUILD_DIR)

sdcard:
	./scripts/prepare-sd.sh

sdcard-update:
	./scripts/update-sd-incremental.sh

initramfs:
	./scripts/make-initramfs.sh $(INITRAMFS_IN) $(INITRAMFS_OUT)

package: default initramfs
	@issue_branch=$$(git rev-parse --abbrev-ref HEAD 2>/dev/null || true); \
	issue_id=$$(printf "%s" "$$issue_branch" | sed -n 's/^\([0-9][0-9]*\)-.*/\1/p'); \
	owner_slug=$$(printf "%s" "$(OWNER)" | tr '[:space:]' '_' | tr -cd '[:alnum:]_.-'); \
	package_zip=""; \
	if [ -n "$$owner_slug" ]; then \
		package_zip="artifacts/sdcard-package-$${owner_slug}.zip"; \
	fi; \
	if [ -n "$$issue_id" ] && [ -f "artifacts/kernel8-issue$${issue_id}.img" ]; then \
		kernel_img="artifacts/kernel8-issue$${issue_id}.img"; \
	else \
		kernel_img="$(DEFAULT_ARTIFACT)"; \
	fi; \
	echo "Pacote (DRY_RUN) usando kernel: $$kernel_img"; \
	if [ -n "$$package_zip" ]; then \
		echo "Pacote (OWNER) em: $$package_zip"; \
	fi; \
	DRY_RUN=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 \
	COPY_GAMES_TO_ROOT=1 \
	DEBUG=$(DEBUG_BOOL) \
	OFFLINE_DRY_PACKAGE=1 \
	KERNEL_IMG="$$kernel_img" \
	PACKAGE_ZIP="$$package_zip" \
	FIRMWARE_DIR="$(FIRMWARE_DIR)" \
	./scripts/prepare-sd.sh

help:
	@echo "Targets: all (default), clean, sdcard, sdcard-update, initramfs, package, help"
	@echo "Default (make): perfil estavel -> artifacts/kernel8-default.img + artifacts/kernel8-issue<id>.img (quando em branch de issue)"
	@echo "SD card prep: make sdcard"
	@echo "SD incremental update (sem formatar): make sdcard-update"
	@echo "Initramfs: make initramfs INITRAMFS_IN=roms/initramfs INITRAMFS_OUT=sdcard/msx.cpio"
	@echo "SD package zip (via prepare-sd dry-run offline): make package -> artifacts/sdcard-package-YYYYMMDDHHMM.zip"
	@echo "Flags uteis: make package DEBUG=0|1 OWNER=<nome> FIRMWARE_DIR=./rpi-firmware"
	@echo "Cross prefix auto: aarch64-none-elf- | aarch64-elf-"
	@echo "Override: make CROSS=aarch64-elf-"
	@echo "Use flags principais: DEBUG=0|1 OWNER=<nome> FIRMWARE_DIR=<dir>"
	@echo "Backend do emulador: EMULATOR_BACKEND=fmsx|bluemsx (default: fmsx)"
	@echo "Boot mode selecionavel em runtime: Settings -> Boot Mode [NORM/FAST/GAME]"
	@echo "Bypass temporario (nao recomendado): ALLOW_DIRTY_THIRD_PARTY=1 make"
