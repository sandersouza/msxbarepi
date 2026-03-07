PROJECT := msxbare
BUILD_DIR := build

.DEFAULT_GOAL := default

FB_WIDTH ?= 1024
FB_HEIGHT ?= 768
DEBUG ?= 0
DEBUG_EFFECTIVE := $(DEBUG)
ifneq ($(origin DEBUG_BUILD), undefined)
DEBUG_EFFECTIVE := $(DEBUG_BUILD)
endif
DEBUG_BOOL := 0
ifeq ($(strip $(DEBUG_EFFECTIVE)),1)
DEBUG_BOOL := 1
endif
MSXBARE_INITRAMFS_MOUNT ?= 1
MSXBARE_REQUIRE_CPIO_BIOS ?= 0
MSXBARE_HARD_DISABLE_AUDIO ?= 0
MSXBARE_CARTA_ONLY ?= 0
MSXBARE_FMSX_AUDIO ?= 1
MSXBARE_EMBED_INITRAMFS ?= 0
MSXBARE_EMBEDDED_BIOS_PATH ?= ../roms/cbios/cbios_main_msx1_br.rom
MSXBARE_SUPPRESS_WARNINGS ?= 1
MSXBARE_FMSX_MSX1_TEXT80 ?= 1
MSXBARE_FMSX_RAMMAPPER_KB ?= 64
MSXBARE_FMSX_MEGARAM_KB ?= 256
MSXBARE_FMSX_MEGARAM_ENABLED ?= 0
MSXBARE_FMSX_CART_GUESS ?= 1
MSXBARE_FMSX_CARTA_MAPPER ?= 255
MSXBARE_FMSX_CARTB_MAPPER ?= 255
MSXBARE_FMSX_BOOT_PROFILE ?= 1
MSXBARE_BOOT_QUIET ?= 0
MSXBARE_DEFER_USB_INIT_FRAMES ?= 90
MSXBARE_DEFER_SETTINGS_LOAD_FRAMES ?= 0
MSXBARE_DEFER_INITRAMFS_FULL_MOUNT_FRAMES ?= 120
MSXBARE_SIZE_OPT ?= 1
MSXBARE_FMSX_BOOT_MINIMAL_STARTUP ?= 1
MSXBARE_ENABLE_DEBUG_OVERLAY ?= $(DEBUG_BOOL)
MSXBARE_DEBUG_OVERLAY_STAGE ?= 1
MSXBARE_TEST_TONE_DEFAULT ?= 0
MSXBARE_DEBUG_OVERLAY_DEFAULT ?= 0
MSXBARE_DEBUG_OVERLAY_COMPACT ?= 1
OWNER ?=
BUILD_BID ?= $(shell date +%Y%m%d%H%M)-$(shell git rev-parse --short HEAD 2>/dev/null || echo nogit)
CIRCLE_KERNEL_MAX_SIZE ?= 0x400000
CIRCLE_EXTRAINCLUDE ?= -DKERNEL_MAX_SIZE=$(CIRCLE_KERNEL_MAX_SIZE)
PACKAGE_DEBUG_BUILD ?= $(DEBUG_BOOL)
PACKAGE_COPY_GAMES_TO_ROOT ?= 1
PACKAGE_FIRMWARE_DIR ?= ./rpi-firmware
PACKAGE_OFFLINE_DRY_PACKAGE ?= 1

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
	$(MAKE) -C src CHECK_DEPS=0 MSXBARE_ENABLE_FMSX=1 \
		EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' \
		MSXBARE_INITRAMFS_MOUNT=$(MSXBARE_INITRAMFS_MOUNT) \
		MSXBARE_REQUIRE_CPIO_BIOS=$(MSXBARE_REQUIRE_CPIO_BIOS) \
		MSXBARE_EMBED_INITRAMFS=$(MSXBARE_EMBED_INITRAMFS) \
		MSXBARE_EMBEDDED_BIOS_PATH="$(MSXBARE_EMBEDDED_BIOS_PATH)" \
		MSXBARE_SUPPRESS_WARNINGS=$(MSXBARE_SUPPRESS_WARNINGS) \
		MSXBARE_HARD_DISABLE_AUDIO=$(MSXBARE_HARD_DISABLE_AUDIO) \
		MSXBARE_CARTA_ONLY=$(MSXBARE_CARTA_ONLY) \
		MSXBARE_FMSX_AUDIO=$(MSXBARE_FMSX_AUDIO) \
		MSXBARE_FMSX_MSX1_TEXT80=$(MSXBARE_FMSX_MSX1_TEXT80) \
		MSXBARE_FMSX_RAMMAPPER_KB=$(MSXBARE_FMSX_RAMMAPPER_KB) \
		MSXBARE_FMSX_MEGARAM_KB=$(MSXBARE_FMSX_MEGARAM_KB) \
		MSXBARE_FMSX_MEGARAM_ENABLED=$(MSXBARE_FMSX_MEGARAM_ENABLED) \
		MSXBARE_FMSX_CART_GUESS=$(MSXBARE_FMSX_CART_GUESS) \
		MSXBARE_FMSX_CARTA_MAPPER=$(MSXBARE_FMSX_CARTA_MAPPER) \
		MSXBARE_FMSX_CARTB_MAPPER=$(MSXBARE_FMSX_CARTB_MAPPER) \
		MSXBARE_FMSX_BOOT_PROFILE=$(MSXBARE_FMSX_BOOT_PROFILE) \
		MSXBARE_BOOT_QUIET=$(MSXBARE_BOOT_QUIET) \
		MSXBARE_DEFER_USB_INIT_FRAMES=$(MSXBARE_DEFER_USB_INIT_FRAMES) \
		MSXBARE_DEFER_SETTINGS_LOAD_FRAMES=$(MSXBARE_DEFER_SETTINGS_LOAD_FRAMES) \
		MSXBARE_DEFER_INITRAMFS_FULL_MOUNT_FRAMES=$(MSXBARE_DEFER_INITRAMFS_FULL_MOUNT_FRAMES) \
		MSXBARE_SIZE_OPT=$(MSXBARE_SIZE_OPT) \
		MSXBARE_FMSX_BOOT_MINIMAL_STARTUP=$(MSXBARE_FMSX_BOOT_MINIMAL_STARTUP) \
		MSXBARE_ENABLE_DEBUG_OVERLAY=$(MSXBARE_ENABLE_DEBUG_OVERLAY) \
		MSXBARE_DEBUG_OVERLAY_STAGE=$(MSXBARE_DEBUG_OVERLAY_STAGE) \
		MSXBARE_TEST_TONE_DEFAULT=$(MSXBARE_TEST_TONE_DEFAULT) \
		MSXBARE_DEBUG_OVERLAY_DEFAULT=$(MSXBARE_DEBUG_OVERLAY_DEFAULT) \
		MSXBARE_DEBUG_OVERLAY_COMPACT=$(MSXBARE_DEBUG_OVERLAY_COMPACT) \
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
	COPY_GAMES_TO_ROOT=$(PACKAGE_COPY_GAMES_TO_ROOT) \
	DEBUG_BUILD=$(PACKAGE_DEBUG_BUILD) \
	OFFLINE_DRY_PACKAGE=$(PACKAGE_OFFLINE_DRY_PACKAGE) \
	KERNEL_IMG="$$kernel_img" \
	PACKAGE_ZIP="$$package_zip" \
	FIRMWARE_DIR="$(PACKAGE_FIRMWARE_DIR)" \
	./scripts/prepare-sd.sh

help:
	@echo "Targets: all (default), clean, sdcard, sdcard-update, initramfs, package, help"
	@echo "Default (make): perfil estavel -> artifacts/kernel8-default.img + artifacts/kernel8-issue<id>.img (quando em branch de issue)"
	@echo "SD card prep: make sdcard"
	@echo "SD incremental update (sem formatar): make sdcard-update"
	@echo "Initramfs: make initramfs INITRAMFS_IN=roms/initramfs INITRAMFS_OUT=sdcard/msx.cpio"
	@echo "SD package zip (via prepare-sd dry-run offline): make package -> artifacts/sdcard-package-YYYYMMDDHHMM.zip"
	@echo "Flags uteis: make package DEBUG=0|1 OWNER=<nome>"
	@echo "Cross prefix auto: aarch64-none-elf- | aarch64-elf-"
	@echo "Override: make CROSS=aarch64-elf-"
	@echo "Use flags MSXBARE_*/DEBUG/FB_* conforme necessario"
	@echo "Boot mode selecionavel em runtime: Settings -> Boot Mode [NORM/FAST/GAME]"
	@echo "Bypass temporario (nao recomendado): ALLOW_DIRTY_THIRD_PARTY=1 make"
