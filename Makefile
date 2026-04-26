PROJECT := msxbare
BUILD_DIR := build

.DEFAULT_GOAL := default

FB_WIDTH ?= 1024
FB_HEIGHT ?= 768
DEBUG := 1
BACKEND_FAMILY ?= msx
BACKEND_DEFAULT ?= msx.fmsx
EMULATOR_BACKEND ?=
MSXBARE_CARTA_ONLY ?= 0
MSXBARE_SIZE_OPT ?= 1
OWNER ?=
MSXBARE_PATREON_TAG ?=
MSXBARE_FEAT_SCC ?= 1
MSXBARE_FEAT_GFX9000 ?= 1
MSXBARE_FEAT_FMPAC ?= 1
MSXBARE_FEAT_DISK_ROM ?= 1
MSXBARE_FEAT_MEGARAM ?= 1
MSXBARE_FEAT_MSX2 ?= 1
MSXBARE_BOOT_SCREEN ?= 0
MSXBARE_KANJI_FONT ?= 0
MSXBARE_FEAT_MSX2P ?= 1
MSXBARE_FEAT_LOAD_ROM ?= 1
MSXBARE_FEAT_LOAD_DISK ?= 1
MSXBARE_ONE_ROM_MODE ?= 0
MSXBARE_ONE_ROM_PATH ?=
MSXBARE_V9990_UART_TRACE ?= 0
MSXBARE_BOOT_MODE_DEFAULT ?= NORM
MSXBARE_BOOT_STRATEGY ?=
MSXBARE_EMBED_INITRAMFS ?=
MSXBARE_USE_RAW_BOOT_CONFIG ?=
FIRMWARE_DIR ?= ./rpi-firmware
BUILD_BID ?= $(shell date +%Y%m%d%H%M)-$(shell git rev-parse --short HEAD 2>/dev/null || echo nogit)
CIRCLE_KERNEL_MAX_SIZE ?= 0x500000
CIRCLE_EXTRAINCLUDE ?= -DKERNEL_MAX_SIZE=$(CIRCLE_KERNEL_MAX_SIZE)
FATFS_COMPAT_INCLUDE := -I$(CURDIR)/src/fatfs_compat

-include .config.mk
-include $(BUILD_DIR)/config.mk

#
# Precedencia canonica do build:
#   1. flags passadas na linha de comando do `make`
#   2. valores persistidos em `.config.mk` / `build/config.mk`
#   3. defaults definidos neste arquivo
#
# Nao reaplicar `*_CONFIG` com `override`, pois isso faria a `.config`
# vencer a linha de comando. Com os includes acima, o comportamento volta
# ao padrao do GNU make: `make DEBUG=0 OWNER=...` vence a configuracao salva.
#

BOOT_STRATEGY_CANONICAL := $(strip $(MSXBARE_BOOT_STRATEGY))
ifeq ($(BOOT_STRATEGY_CANONICAL),)
ifeq ($(strip $(MSXBARE_EMBED_INITRAMFS)),0)
BOOT_STRATEGY_CANONICAL := multicore
else
BOOT_STRATEGY_CANONICAL := standalone
endif
endif

ifneq ($(BOOT_STRATEGY_CANONICAL),standalone)
ifneq ($(BOOT_STRATEGY_CANONICAL),multicore)
$(error MSXBARE_BOOT_STRATEGY invalido: $(BOOT_STRATEGY_CANONICAL). Use standalone ou multicore)
endif
endif

MSXBARE_BOOT_STRATEGY_MULTICORE := 0
MSXBARE_EMBED_INITRAMFS_EFFECTIVE := 1
MSXBARE_USE_RAW_BOOT_CONFIG_EFFECTIVE := 1
ifeq ($(BOOT_STRATEGY_CANONICAL),multicore)
MSXBARE_BOOT_STRATEGY_MULTICORE := 1
MSXBARE_EMBED_INITRAMFS_EFFECTIVE := 0
MSXBARE_USE_RAW_BOOT_CONFIG_EFFECTIVE := 0
endif

DEBUG_BOOL := 0
ifeq ($(strip $(DEBUG)),1)
DEBUG_BOOL := 1
endif

EFFECTIVE_OWNER := $(strip $(OWNER))
ifeq ($(EFFECTIVE_OWNER),)
EFFECTIVE_OWNER := $(strip $(MSXBARE_PATREON_TAG))
endif

MSXBARE_BOOT_MODE_DEFAULT_ENUM := 0
MSXBARE_BOOT_MODE_LOCKED := 0
ifeq ($(MSXBARE_BOOT_MODE_DEFAULT),NONE)
MSXBARE_BOOT_MODE_DEFAULT_ENUM := 0
MSXBARE_BOOT_MODE_LOCKED := 0
else ifeq ($(MSXBARE_BOOT_MODE_DEFAULT),FAST)
MSXBARE_BOOT_MODE_DEFAULT_ENUM := 1
MSXBARE_BOOT_MODE_LOCKED := 1
else ifeq ($(MSXBARE_BOOT_MODE_DEFAULT),GAME)
MSXBARE_BOOT_MODE_DEFAULT_ENUM := 2
MSXBARE_BOOT_MODE_LOCKED := 1
else ifeq ($(MSXBARE_BOOT_MODE_DEFAULT),NORM)
MSXBARE_BOOT_MODE_DEFAULT_ENUM := 0
MSXBARE_BOOT_MODE_LOCKED := 1
else ifneq ($(MSXBARE_BOOT_MODE_DEFAULT),NORM)
$(error MSXBARE_BOOT_MODE_DEFAULT invalido: $(MSXBARE_BOOT_MODE_DEFAULT). Use NONE, NORM, FAST ou GAME)
endif

CROSS ?= $(shell \
	if command -v aarch64-none-elf-gcc >/dev/null 2>&1 && command -v aarch64-none-elf-g++ >/dev/null 2>&1; then \
		echo aarch64-none-elf-; \
	elif command -v aarch64-elf-gcc >/dev/null 2>&1 && command -v aarch64-elf-g++ >/dev/null 2>&1; then \
		echo aarch64-elf-; \
	elif command -v aarch64-linux-gnu-gcc >/dev/null 2>&1 && command -v aarch64-linux-gnu-g++ >/dev/null 2>&1; then \
		echo aarch64-linux-gnu-; \
	else \
		echo aarch64-none-elf-; \
	fi)
BOOTSTRAP_ARTIFACT := artifacts/kernel8-bootstrap.img
DEFAULT_ARTIFACT := artifacts/kernel8-default.img
INITRAMFS_IN ?= roms/initramfs
INITRAMFS_OUT ?= sdcard/msx.cpio
EMBEDDED_INITRAMFS_OUT ?= $(BUILD_DIR)/initramfs/msx-embedded.cpio
THIRD_PARTY_GUARD := ./scripts/check-third-party-pristine.sh
CIRCLE_REQUIRED_LIBS := \
	third_party/circle/lib/libcircle.a \
	third_party/circle/lib/sound/libsound.a \
	third_party/circle/lib/sched/libsched.a \
	third_party/circle/lib/usb/libusb.a \
	third_party/circle/lib/input/libinput.a \
	third_party/circle/lib/fs/libfs.a \
	third_party/circle/addon/SDCard/libsdcard.a \
	third_party/circle/addon/fatfs/libfatfs.a
CIRCLE_MAKE_FLAGS := PREFIX64=$(CROSS)
CIRCLE_CONFIG_STAMP := $(BUILD_DIR)/circle-build.stamp
CIRCLE_ASM_COMMAND := AS='$(CROSS)gcc $(CIRCLE_EXTRAINCLUDE)'

.PHONY: all default backend-module clean help guard-third-party circle-configure circle-configure-force circle-libs circle sdcard sdcard-update initramfs embedded-initramfs package menuconfig syncconfig config-header

all: default

default: config-header circle-libs
	@mkdir -p artifacts
	@mkdir -p artifacts build/src
	@if [ "$(MSXBARE_EMBED_INITRAMFS_EFFECTIVE)" = "1" ]; then \
		$(MAKE) embedded-initramfs \
			INITRAMFS_IN="$(INITRAMFS_IN)" \
			EMBEDDED_INITRAMFS_OUT="$(EMBEDDED_INITRAMFS_OUT)" \
			MSXBARE_ONE_ROM_MODE="$(MSXBARE_ONE_ROM_MODE)" \
			MSXBARE_ONE_ROM_PATH="$(MSXBARE_ONE_ROM_PATH)" \
			MSXBARE_BOOT_SCREEN="$(MSXBARE_BOOT_SCREEN)" \
			MSXBARE_KANJI_FONT="$(MSXBARE_KANJI_FONT)"; \
	fi
	$(MAKE) -C src $(CIRCLE_MAKE_FLAGS) CHECK_DEPS=0 clean >/dev/null
	$(MAKE) -C src $(CIRCLE_MAKE_FLAGS) CHECK_DEPS=0 \
		EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' \
		DEBUG=$(DEBUG_BOOL) \
		BACKEND_FAMILY=$(BACKEND_FAMILY) \
		BACKEND_DEFAULT=$(BACKEND_DEFAULT) \
		EMULATOR_BACKEND=$(EMULATOR_BACKEND) \
		MSXBARE_KERNEL_MAX_SIZE=$(CIRCLE_KERNEL_MAX_SIZE) \
		MSXBARE_CARTA_ONLY=$(MSXBARE_CARTA_ONLY) \
		MSXBARE_SIZE_OPT=$(MSXBARE_SIZE_OPT) \
		MSXBARE_BUILD_BID="$(BUILD_BID)" \
		MSXBARE_BUILD_OWNER="$(EFFECTIVE_OWNER)" \
		MSXBARE_FEAT_SCC=$(MSXBARE_FEAT_SCC) \
		MSXBARE_FEAT_GFX9000=$(MSXBARE_FEAT_GFX9000) \
		MSXBARE_FEAT_FMPAC=$(MSXBARE_FEAT_FMPAC) \
		MSXBARE_FEAT_DISK_ROM=$(MSXBARE_FEAT_DISK_ROM) \
		MSXBARE_FEAT_MEGARAM=$(MSXBARE_FEAT_MEGARAM) \
		MSXBARE_FEAT_MSX2=$(MSXBARE_FEAT_MSX2) \
		MSXBARE_BOOT_SCREEN=$(MSXBARE_BOOT_SCREEN) \
		MSXBARE_FEAT_MSX2P=$(MSXBARE_FEAT_MSX2P) \
		MSXBARE_FEAT_LOAD_ROM=$(MSXBARE_FEAT_LOAD_ROM) \
		MSXBARE_FEAT_LOAD_DISK=$(MSXBARE_FEAT_LOAD_DISK) \
		MSXBARE_ONE_ROM_MODE=$(MSXBARE_ONE_ROM_MODE) \
		MSXBARE_ONE_ROM_PATH="$(MSXBARE_ONE_ROM_PATH)" \
		MSXBARE_V9990_UART_TRACE=$(MSXBARE_V9990_UART_TRACE) \
		MSXBARE_EMBED_INITRAMFS=$(MSXBARE_EMBED_INITRAMFS_EFFECTIVE) \
		MSXBARE_EMBED_INITRAMFS_PATH="$(abspath $(EMBEDDED_INITRAMFS_OUT))" \
		MSXBARE_PATREON_TAG="$(EFFECTIVE_OWNER)" \
		MSXBARE_BOOT_MODE_DEFAULT_ENUM=$(MSXBARE_BOOT_MODE_DEFAULT_ENUM) \
		MSXBARE_BOOT_MODE_LOCKED=$(MSXBARE_BOOT_MODE_LOCKED)
	@img=$$(ls src/kernel8*.img 2>/dev/null | head -n1); \
	if [ -z "$$img" ]; then \
		echo "Erro: imagem de bootstrap nao encontrada"; \
		exit 1; \
	fi; \
	cp "$$img" build/src/kernel8.img; \
	cp build/src/kernel8.img $(BOOTSTRAP_ARTIFACT)
	@kernel_bytes=$$(wc -c < "$(BOOTSTRAP_ARTIFACT)" | tr -d ' '); \
	max_bytes=$$(( $(CIRCLE_KERNEL_MAX_SIZE) )); \
	mem_end=$$(( 0x80000 + max_bytes )); \
	echo "Kernel size: $$kernel_bytes / $$max_bytes bytes"; \
	if [ "$$kernel_bytes" -gt "$$max_bytes" ]; then \
		echo "Erro: kernel8.img excede KERNEL_MAX_SIZE=$$max_bytes"; \
		exit 1; \
	fi; \
	if command -v "$(CROSS)nm" >/dev/null 2>&1 && [ -f src/kernel8.elf ]; then \
		end_hex=$$("$(CROSS)nm" -n src/kernel8.elf | awk '$$3 == "_end" { print $$1; exit }'); \
		if [ -n "$$end_hex" ]; then \
			end_addr=$$(( 0x$$end_hex )); \
			printf 'Kernel memory _end: 0x%X / 0x%X\n' "$$end_addr" "$$mem_end"; \
			if [ "$$end_addr" -gt "$$mem_end" ]; then \
				echo "Erro: footprint do kernel excede MEM_KERNEL_END; aumente CIRCLE_KERNEL_MAX_SIZE"; \
				exit 1; \
			fi; \
		fi; \
	fi; \
	if [ "$(MSXBARE_EMBED_INITRAMFS_EFFECTIVE)" = "1" ] && [ -f "$(EMBEDDED_INITRAMFS_OUT)" ]; then \
		cpio_bytes=$$(wc -c < "$(EMBEDDED_INITRAMFS_OUT)" | tr -d ' '); \
		echo "Initramfs embedded: $(EMBEDDED_INITRAMFS_OUT) ($$cpio_bytes bytes)"; \
	fi
	$(MAKE) -C src $(CIRCLE_MAKE_FLAGS) CHECK_DEPS=0 clean >/dev/null
	cp $(BOOTSTRAP_ARTIFACT) $(DEFAULT_ARTIFACT)
	@issue_branch=$$(git rev-parse --abbrev-ref HEAD 2>/dev/null || true); \
	issue_id=$$(printf "%s" "$$issue_branch" | sed -n 's/^\([0-9][0-9]*\)-.*/\1/p'); \
	if [ -n "$$issue_id" ]; then \
		issue_artifact="artifacts/kernel8-issue$${issue_id}.img"; \
		cp $(BOOTSTRAP_ARTIFACT) "$$issue_artifact"; \
		echo "Artefato issue estavel: $$issue_artifact"; \
	fi
	@echo "Artefato default estavel: $(DEFAULT_ARTIFACT)"

backend-module: config-header
	@mkdir -p artifacts
	@if [ "$(MSXBARE_EMBED_INITRAMFS_EFFECTIVE)" = "1" ]; then \
		$(MAKE) embedded-initramfs \
			INITRAMFS_IN="$(INITRAMFS_IN)" \
			EMBEDDED_INITRAMFS_OUT="$(EMBEDDED_INITRAMFS_OUT)" \
			MSXBARE_ONE_ROM_MODE="$(MSXBARE_ONE_ROM_MODE)" \
			MSXBARE_ONE_ROM_PATH="$(MSXBARE_ONE_ROM_PATH)" \
			MSXBARE_BOOT_SCREEN="$(MSXBARE_BOOT_SCREEN)" \
			MSXBARE_KANJI_FONT="$(MSXBARE_KANJI_FONT)"; \
	fi
	$(MAKE) -C src $(CIRCLE_MAKE_FLAGS) CHECK_DEPS=0 \
		EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' \
		DEBUG=$(DEBUG_BOOL) \
		BACKEND_FAMILY=$(BACKEND_FAMILY) \
		BACKEND_DEFAULT=$(BACKEND_DEFAULT) \
		EMULATOR_BACKEND=$(EMULATOR_BACKEND) \
		MSXBARE_KERNEL_MAX_SIZE=$(CIRCLE_KERNEL_MAX_SIZE) \
		MSXBARE_CARTA_ONLY=$(MSXBARE_CARTA_ONLY) \
		MSXBARE_SIZE_OPT=$(MSXBARE_SIZE_OPT) \
		MSXBARE_BUILD_BID="$(BUILD_BID)" \
		MSXBARE_BUILD_OWNER="$(EFFECTIVE_OWNER)" \
		MSXBARE_FEAT_SCC=$(MSXBARE_FEAT_SCC) \
		MSXBARE_FEAT_GFX9000=$(MSXBARE_FEAT_GFX9000) \
		MSXBARE_FEAT_FMPAC=$(MSXBARE_FEAT_FMPAC) \
		MSXBARE_FEAT_DISK_ROM=$(MSXBARE_FEAT_DISK_ROM) \
		MSXBARE_FEAT_MEGARAM=$(MSXBARE_FEAT_MEGARAM) \
		MSXBARE_FEAT_MSX2=$(MSXBARE_FEAT_MSX2) \
		MSXBARE_BOOT_SCREEN=$(MSXBARE_BOOT_SCREEN) \
		MSXBARE_FEAT_MSX2P=$(MSXBARE_FEAT_MSX2P) \
		MSXBARE_FEAT_LOAD_ROM=$(MSXBARE_FEAT_LOAD_ROM) \
		MSXBARE_FEAT_LOAD_DISK=$(MSXBARE_FEAT_LOAD_DISK) \
		MSXBARE_ONE_ROM_MODE=$(MSXBARE_ONE_ROM_MODE) \
		MSXBARE_ONE_ROM_PATH="$(MSXBARE_ONE_ROM_PATH)" \
		MSXBARE_V9990_UART_TRACE=$(MSXBARE_V9990_UART_TRACE) \
		MSXBARE_EMBED_INITRAMFS=$(MSXBARE_EMBED_INITRAMFS_EFFECTIVE) \
		MSXBARE_EMBED_INITRAMFS_PATH="$(abspath $(EMBEDDED_INITRAMFS_OUT))" \
		MSXBARE_PATREON_TAG="$(EFFECTIVE_OWNER)" \
		MSXBARE_BOOT_MODE_DEFAULT_ENUM=$(MSXBARE_BOOT_MODE_DEFAULT_ENUM) \
		MSXBARE_BOOT_MODE_LOCKED=$(MSXBARE_BOOT_MODE_LOCKED) \
		backend-module

guard-third-party:
	bash $(THIRD_PARTY_GUARD)

circle-configure: guard-third-party
	@if [ -f third_party/circle/Config.mk ]; then \
		echo "Circle already configured (third_party/circle/Config.mk encontrado)"; \
	else \
		cd third_party/circle && ./configure -r 3 -p $(CROSS) -f; \
	fi

circle-configure-force: guard-third-party
	cd third_party/circle && ./configure -r 3 -p $(CROSS) -f

circle-libs: circle-configure
	@mkdir -p $(BUILD_DIR); \
	config_state='CROSS=$(CROSS)\nEXTRAINCLUDE=$(CIRCLE_EXTRAINCLUDE)\nAS=$(CROSS)gcc $(CIRCLE_EXTRAINCLUDE)\nFATFS=$(FATFS_COMPAT_INCLUDE)'; \
	rebuild=0; \
	if [ ! -f "$(CIRCLE_CONFIG_STAMP)" ]; then \
		rebuild=1; \
	elif ! printf '%b\n' "$$config_state" | cmp -s - "$(CIRCLE_CONFIG_STAMP)"; then \
		rebuild=1; \
	fi; \
	missing=0; \
	for lib in $(CIRCLE_REQUIRED_LIBS); do \
		if [ ! -f "$$lib" ]; then \
		echo "Circle faltando: $$lib"; \
			missing=1; \
		fi; \
	done; \
	if [ "$$missing" -eq 0 ] && [ "$$rebuild" -eq 0 ]; then \
		echo "Circle OK: libs presentes (use 'make circle' para rebuild forcado)"; \
	else \
		if [ "$$rebuild" -eq 1 ]; then \
			echo "Circle mudou de configuracao; rebuild forcado..."; \
			$(MAKE) -C third_party/circle/lib $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null; \
			$(MAKE) -C third_party/circle/lib/sound $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null; \
			$(MAKE) -C third_party/circle/lib/sched $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null; \
			$(MAKE) -C third_party/circle/lib/usb $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null; \
			$(MAKE) -C third_party/circle/lib/input $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null; \
			$(MAKE) -C third_party/circle/lib/fs $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null; \
			$(MAKE) -C third_party/circle/addon/SDCard $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null; \
			$(MAKE) -C third_party/circle/addon/fatfs $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null; \
		else \
			echo "Gerando Circle (libs ausentes)..."; \
		fi; \
		$(MAKE) -C third_party/circle/lib $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null; \
		$(MAKE) -C third_party/circle/lib/sound $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null; \
		$(MAKE) -C third_party/circle/lib/sched $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null; \
		$(MAKE) -C third_party/circle/lib/usb $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null; \
		$(MAKE) -C third_party/circle/lib/input $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null; \
		$(MAKE) -C third_party/circle/lib/fs $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null; \
		$(MAKE) -C third_party/circle/addon/SDCard $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null; \
		$(MAKE) -C third_party/circle/addon/fatfs $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE) $(FATFS_COMPAT_INCLUDE)' >/dev/null; \
		printf '%b\n' "$$config_state" > "$(CIRCLE_CONFIG_STAMP)"; \
	fi

circle: circle-configure-force
	@echo "Rebuild forcado do Circle..."
	@mkdir -p $(BUILD_DIR)
	$(MAKE) -C third_party/circle/lib $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null
	$(MAKE) -C third_party/circle/lib/sound $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null
	$(MAKE) -C third_party/circle/lib/sched $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null
	$(MAKE) -C third_party/circle/lib/usb $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null
	$(MAKE) -C third_party/circle/lib/input $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null
	$(MAKE) -C third_party/circle/lib/fs $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null
	$(MAKE) -C third_party/circle/addon/SDCard $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null
	$(MAKE) -C third_party/circle/addon/fatfs $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) clean >/dev/null
	$(MAKE) -C third_party/circle/lib $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null
	$(MAKE) -C third_party/circle/lib/sound $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null
	$(MAKE) -C third_party/circle/lib/sched $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null
	$(MAKE) -C third_party/circle/lib/usb $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null
	$(MAKE) -C third_party/circle/lib/input $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null
	$(MAKE) -C third_party/circle/lib/fs $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null
	$(MAKE) -C third_party/circle/addon/SDCard $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE)' >/dev/null
	$(MAKE) -C third_party/circle/addon/fatfs $(CIRCLE_MAKE_FLAGS) $(CIRCLE_ASM_COMMAND) CHECK_DEPS=0 EXTRAINCLUDE='$(CIRCLE_EXTRAINCLUDE) $(FATFS_COMPAT_INCLUDE)' >/dev/null
	@printf '%b\n' 'CROSS=$(CROSS)\nEXTRAINCLUDE=$(CIRCLE_EXTRAINCLUDE)\nAS=$(CROSS)gcc $(CIRCLE_EXTRAINCLUDE)\nFATFS=$(FATFS_COMPAT_INCLUDE)' > "$(CIRCLE_CONFIG_STAMP)"
	@echo "Circle rebuild concluido."

menuconfig:
	./scripts/menuconfig.sh

syncconfig:
	./scripts/menuconfig.sh --sync-only

config-header:
	@mkdir -p $(BUILD_DIR)
	MSXBARE_FEAT_SCC="$(MSXBARE_FEAT_SCC)" \
	MSXBARE_FEAT_GFX9000="$(MSXBARE_FEAT_GFX9000)" \
	MSXBARE_FEAT_FMPAC="$(MSXBARE_FEAT_FMPAC)" \
	MSXBARE_FEAT_DISK_ROM="$(MSXBARE_FEAT_DISK_ROM)" \
	MSXBARE_FEAT_MEGARAM="$(MSXBARE_FEAT_MEGARAM)" \
	MSXBARE_FEAT_MSX2="$(MSXBARE_FEAT_MSX2)" \
	MSXBARE_BOOT_SCREEN="$(MSXBARE_BOOT_SCREEN)" \
	MSXBARE_FEAT_MSX2P="$(MSXBARE_FEAT_MSX2P)" \
	MSXBARE_FEAT_LOAD_ROM="$(MSXBARE_FEAT_LOAD_ROM)" \
	MSXBARE_FEAT_LOAD_DISK="$(MSXBARE_FEAT_LOAD_DISK)" \
	MSXBARE_ONE_ROM_MODE="$(MSXBARE_ONE_ROM_MODE)" \
	MSXBARE_ONE_ROM_PATH="$(MSXBARE_ONE_ROM_PATH)" \
	MSXBARE_BOOT_MODE_DEFAULT="$(MSXBARE_BOOT_MODE_DEFAULT)" \
	MSXBARE_BOOT_MODE_DEFAULT_ENUM="$(MSXBARE_BOOT_MODE_DEFAULT_ENUM)" \
	MSXBARE_BOOT_MODE_LOCKED="$(MSXBARE_BOOT_MODE_LOCKED)" \
	MSXBARE_BOOT_STRATEGY="$(BOOT_STRATEGY_CANONICAL)" \
	MSXBARE_USE_RAW_BOOT_CONFIG="$(MSXBARE_USE_RAW_BOOT_CONFIG_EFFECTIVE)" \
	MSXBARE_PATREON_TAG="$(EFFECTIVE_OWNER)" \
	MSXBARE_EMBED_INITRAMFS="$(MSXBARE_EMBED_INITRAMFS_EFFECTIVE)" \
	./scripts/gen-build-header.sh $(BUILD_DIR)/config_build.h

clean:
	@if [ -f third_party/circle/Config.mk ]; then \
		$(MAKE) -C src $(CIRCLE_MAKE_FLAGS) CHECK_DEPS=0 clean >/dev/null || true; \
		$(MAKE) -C third_party/circle/lib $(CIRCLE_MAKE_FLAGS) clean >/dev/null || true; \
		$(MAKE) -C third_party/circle/lib/sound $(CIRCLE_MAKE_FLAGS) clean >/dev/null || true; \
		$(MAKE) -C third_party/circle/lib/sched $(CIRCLE_MAKE_FLAGS) clean >/dev/null || true; \
		$(MAKE) -C third_party/circle/lib/usb $(CIRCLE_MAKE_FLAGS) clean >/dev/null || true; \
		$(MAKE) -C third_party/circle/lib/input $(CIRCLE_MAKE_FLAGS) clean >/dev/null || true; \
		$(MAKE) -C third_party/circle/lib/fs $(CIRCLE_MAKE_FLAGS) clean >/dev/null || true; \
		$(MAKE) -C third_party/circle/addon/SDCard $(CIRCLE_MAKE_FLAGS) clean >/dev/null || true; \
		$(MAKE) -C third_party/circle/addon/fatfs $(CIRCLE_MAKE_FLAGS) clean >/dev/null || true; \
	fi
	rm -rf $(BUILD_DIR)
	rm -f artifacts/kernel8-bootstrap.img artifacts/kernel8-default.img artifacts/kernel8-issue*.img
	rm -f src/kernel8*.img src/kernel8.elf src/kernel8.lst

sdcard:
	@issue_branch=$$(git rev-parse --abbrev-ref HEAD 2>/dev/null || true); \
	issue_id=$$(printf "%s" "$$issue_branch" | sed -n 's/^\([0-9][0-9]*\)-.*/\1/p'); \
	kernel_img="$(KERNEL_IMG)"; \
	if [ -z "$$kernel_img" ]; then \
		kernel_img="$${KERNEL_IMG:-}"; \
	fi; \
	if [ -z "$$kernel_img" ] && [ -n "$$issue_id" ] && [ -f "artifacts/kernel8-issue$${issue_id}.img" ]; then \
		kernel_img="artifacts/kernel8-issue$${issue_id}.img"; \
	fi; \
	if [ -z "$$kernel_img" ]; then \
		kernel_img="$(DEFAULT_ARTIFACT)"; \
	fi; \
	echo "SD usando kernel existente: $$kernel_img -> msx.img"; \
	MSXBARE_BOOT_STRATEGY="$(BOOT_STRATEGY_CANONICAL)" \
	MSXBARE_BOOT_SCREEN="$(MSXBARE_BOOT_SCREEN)" \
	MSXBARE_KANJI_FONT="$(MSXBARE_KANJI_FONT)" \
	MSXBARE_EMBED_INITRAMFS="$(MSXBARE_EMBED_INITRAMFS_EFFECTIVE)" \
	KERNEL_IMG="$$kernel_img" ./scripts/prepare-sd.sh

logserial:
	./scripts/logserial.sh

sdcard-update:
	MSXBARE_BOOT_STRATEGY="$(BOOT_STRATEGY_CANONICAL)" \
	MSXBARE_BOOT_SCREEN="$(MSXBARE_BOOT_SCREEN)" \
	MSXBARE_KANJI_FONT="$(MSXBARE_KANJI_FONT)" \
	MSXBARE_EMBED_INITRAMFS="$(MSXBARE_EMBED_INITRAMFS_EFFECTIVE)" \
	./scripts/update-sd-incremental.sh

initramfs:
	MSXBARE_BOOT_SCREEN="$(MSXBARE_BOOT_SCREEN)" \
	MSXBARE_KANJI_FONT="$(MSXBARE_KANJI_FONT)" \
	./scripts/make-initramfs.sh $(INITRAMFS_IN) $(INITRAMFS_OUT)

embedded-initramfs:
	@mkdir -p "$(dir $(EMBEDDED_INITRAMFS_OUT))"
	MSXBARE_BOOT_SCREEN="$(MSXBARE_BOOT_SCREEN)" \
	MSXBARE_KANJI_FONT="$(MSXBARE_KANJI_FONT)" \
	./scripts/make-initramfs.sh "$(INITRAMFS_IN)" "$(EMBEDDED_INITRAMFS_OUT)"

package: default
	@issue_branch=$$(git rev-parse --abbrev-ref HEAD 2>/dev/null || true); \
	issue_id=$$(printf "%s" "$$issue_branch" | sed -n 's/^\([0-9][0-9]*\)-.*/\1/p'); \
	owner_slug=$$(printf "%s" "$(EFFECTIVE_OWNER)" | tr '[:space:]' '_' | tr -cd '[:alnum:]_.-'); \
	package_zip="$(PACKAGE_ZIP)"; \
	if [ -z "$$package_zip" ] && [ -n "$$owner_slug" ]; then \
		package_zip="artifacts/sdcard-package-$${owner_slug}.zip"; \
	fi; \
	kernel_img="$(KERNEL_IMG)"; \
	if [ -z "$$kernel_img" ]; then \
		kernel_img="$${KERNEL_IMG:-}"; \
	fi; \
	if [ -z "$$kernel_img" ] && [ -n "$$issue_id" ] && [ -f "artifacts/kernel8-issue$${issue_id}.img" ]; then \
		kernel_img="artifacts/kernel8-issue$${issue_id}.img"; \
	fi; \
	if [ -z "$$kernel_img" ]; then \
		kernel_img="$(DEFAULT_ARTIFACT)"; \
	fi; \
	echo "Package usando fluxo SD offline com kernel: $$kernel_img"; \
	if [ -n "$$package_zip" ]; then \
		echo "Pacote (OWNER) em: $$package_zip"; \
	fi; \
	DRY_RUN=1 \
		NON_INTERACTIVE="$(if $(NON_INTERACTIVE),$(NON_INTERACTIVE),1)" \
		AUTO_CONFIRM=1 \
		COPY_GAMES_TO_ROOT="$(COPY_GAMES_TO_ROOT)" \
		DEBUG=$(DEBUG_BOOL) \
		MSXBARE_BOOT_STRATEGY="$(BOOT_STRATEGY_CANONICAL)" \
		MSXBARE_EMBED_INITRAMFS=$(MSXBARE_EMBED_INITRAMFS_EFFECTIVE) \
		MSXBARE_BOOT_SCREEN="$(MSXBARE_BOOT_SCREEN)" \
		MSXBARE_KANJI_FONT="$(MSXBARE_KANJI_FONT)" \
		OFFLINE_DRY_PACKAGE=1 \
		KERNEL_IMG="$$kernel_img" \
		PACKAGE_ZIP="$$package_zip" \
		FIRMWARE_DIR="$(FIRMWARE_DIR)" \
		./scripts/prepare-sd.sh

help:
	@echo "Targets: all (default), backend-module, clean, sdcard, sdcard-update, initramfs, package, help, logserial"
	@echo "Circle: default so gera se faltar algo; rebuild forcado apenas com 'make circle'"
	@echo "clean: limpa build local, artifacts de kernel e objetos/libs em subdirs do Circle"
	@echo "Configuracao: make menuconfig (gera .config + build/config.mk)"
	@echo "Aplicar .config sem UI: make syncconfig"
	@echo "Default (make): perfil estavel -> artifacts/kernel8-default.img + artifacts/kernel8-issue<id>.img (quando em branch de issue)"
	@echo "SD card prep: make sdcard"
	@echo "SD incremental update (sem formatar): make sdcard-update"
	@echo "Initramfs: make initramfs INITRAMFS_IN=roms/initramfs INITRAMFS_OUT=sdcard/msx.cpio"
	@echo "Boot strategy default: MSXBARE_BOOT_STRATEGY=standalone (multicore => msx.cpio externo + msx.cfg em FAT)"
	@echo "Kanji font opcional: MSXBARE_KANJI_FONT=1 preserva KANJI.ROM junto do Boot Screen"
	@echo "SD package zip (via prepare-sd dry-run offline): make package -> artifacts/sdcard-package-YYYYMMDDHHMM.zip"
	@echo "Flags uteis: make package DEBUG=0|1 OWNER=<nome> FIRMWARE_DIR=./rpi-firmware MSXBARE_BOOT_STRATEGY=standalone|multicore"
	@echo "Precedencia: flags da linha de comando vencem .config; .config vence os defaults"
	@echo "Cross prefix auto: aarch64-none-elf- | aarch64-elf- | aarch64-linux-gnu-"
	@echo "Override: make CROSS=aarch64-elf-"
	@echo "Use flags principais: DEBUG=0|1 OWNER=<nome> FIRMWARE_DIR=<dir>"
	@echo "Owner/tag efetivo: OWNER vence; se vazio, usa MSXBARE_PATREON_TAG (menuconfig)"
	@echo "Backend por familia: BACKEND_FAMILY=msx BACKEND_DEFAULT=msx.fmsx|msx.bluemsx"
	@echo "Alias legado: EMULATOR_BACKEND=fmsx|bluemsx"
	@echo "Modulo loadable: make backend-module -> artifacts/backend/msx/msx.fmsx.mod.elf"
	@echo "Boot mode selecionavel em runtime: Settings -> Boot Mode [NORM/FAST/GAME]"
	@echo "Bypass temporario (nao recomendado): ALLOW_DIRTY_THIRD_PARTY=1 make"
