PROJECT := msxbare
BUILD_DIR := build

.DEFAULT_GOAL := default

FB_WIDTH ?= 1024
FB_HEIGHT ?= 768
DEBUG ?= 0
CIRCLE_INPUT ?= 0
CIRCLE_INPUT_SAFE ?= 0
CIRCLE_AUDIO ?= 0
CIRCLE_AUDIO_SAFE ?= 0
COMBO_INITRAMFS_MOUNT ?= 1
COMBO_REQUIRE_CPIO_BIOS ?= 0
COMBO_HARD_DISABLE_AUDIO ?= 0
COMBO_CARTA_ONLY ?= 0
COMBO_FMSX_AUDIO ?= 1
COMBO_EMBED_INITRAMFS ?= 0
COMBO_EMBEDDED_BIOS_PATH ?= ../roms/cbios/cbios_main_msx1_br.rom
COMBO_SUPPRESS_WARNINGS ?= 1
COMBO_FMSX_MSX1_TEXT80 ?= 1
COMBO_FMSX_RAMMAPPER_KB ?= 64
COMBO_FMSX_MEGARAM_KB ?= 256
COMBO_FMSX_MEGARAM_ENABLED ?= 0
COMBO_FMSX_CART_GUESS ?= 1
COMBO_FMSX_CARTA_MAPPER ?= 255
COMBO_FMSX_CARTB_MAPPER ?= 255
COMBO_FMSX_BOOT_PROFILE ?= 1
COMBO_BOOT_QUIET ?= 0
COMBO_DEFER_USB_INIT_FRAMES ?= 90
COMBO_DEFER_SETTINGS_LOAD_FRAMES ?= 0
COMBO_DEFER_INITRAMFS_FULL_MOUNT_FRAMES ?= 120
COMBO_SIZE_OPT ?= 1
COMBO_FMSX_BOOT_MINIMAL_STARTUP ?= 1
COMBO_ENABLE_DEBUG_OVERLAY ?= 0
COMBO_TEST_TONE_DEFAULT ?= 0
COMBO_DEBUG_OVERLAY_DEFAULT ?= 0
COMBO_DEBUG_OVERLAY_COMPACT ?= 1

CROSS ?= $(shell \
	if command -v aarch64-none-elf-gcc >/dev/null 2>&1; then \
		echo aarch64-none-elf-; \
	elif command -v aarch64-elf-gcc >/dev/null 2>&1; then \
		echo aarch64-elf-; \
	else \
		echo aarch64-none-elf-; \
	fi)

CC := $(CROSS)gcc
CXX := $(CROSS)g++
LD := $(CROSS)ld
OBJCOPY := $(CROSS)objcopy
SIZE := $(CROSS)size

CFLAGS := -Wall -Wextra -O2 -ffreestanding -nostdlib -nostartfiles -mcpu=cortex-a53
CFLAGS += -Iinclude -DMSXBARE_FB_WIDTH=$(FB_WIDTH)u -DMSXBARE_FB_HEIGHT=$(FB_HEIGHT)u
ifeq ($(DEBUG),1)
CFLAGS += -DMSXBARE_DEBUG=1
endif

ASFLAGS := -ffreestanding -nostdlib -nostartfiles -mcpu=cortex-a53 -Iinclude
LDFLAGS := -T linker/linker.ld

SOURCES_CPP :=
LINK_EXTRA_FLAGS :=
EXTRA_LIBS :=

USE_CIRCLE_RUNTIME := 0
ifneq ($(filter 1,$(CIRCLE_INPUT) $(CIRCLE_AUDIO)),)
USE_CIRCLE_RUNTIME := 1
endif

ifeq ($(USE_CIRCLE_RUNTIME),1)
CXXFLAGS := -Wall -Wextra -O2 -ffreestanding -nostdlib -nostartfiles -mcpu=cortex-a53 -fno-exceptions -fno-rtti
CXXFLAGS += -Iinclude -Ithird_party/circle/include -Ithird_party/circle/addon -Ithird_party/circle/app/lib
CXXFLAGS += -Ithird_party/circle/addon/vc4 -Ithird_party/circle/addon/vc4/interface/khronos/include
CXXFLAGS += -DRASPPI=3 -DAARCH=64 -DSTDLIB_SUPPORT=1 -D__circle__=500100 -D__VCCOREVER__=0x04000000 -U__unix__ -U__linux__
EXTRA_LIBS += third_party/circle/lib/libcircle.a
LINK_EXTRA_FLAGS += --allow-multiple-definition
endif

ifeq ($(CIRCLE_INPUT),1)
CFLAGS += -DMSXBARE_CIRCLE_INPUT_RUNTIME=1
ifeq ($(CIRCLE_INPUT_SAFE),1)
CFLAGS += -DMSXBARE_CIRCLE_INPUT_SKIP_IRQ_INIT=1 -DMSXBARE_CIRCLE_INPUT_SKIP_USB_INIT=1
endif
SOURCES_CPP += src/circle_input_runtime.cpp
EXTRA_LIBS += third_party/circle/lib/usb/libusb.a third_party/circle/lib/input/libinput.a third_party/circle/lib/fs/libfs.a
endif

ifeq ($(CIRCLE_AUDIO),1)
CFLAGS += -DMSXBARE_CIRCLE_AUDIO_RUNTIME=1
ifeq ($(CIRCLE_AUDIO_SAFE),1)
CFLAGS += -DMSXBARE_CIRCLE_AUDIO_SKIP_IRQ_INIT=1 -DMSXBARE_CIRCLE_AUDIO_SKIP_AUDIO_START=1
endif
SOURCES_CPP += src/circle_audio_runtime.cpp
EXTRA_LIBS += third_party/circle/lib/sound/libsound.a third_party/circle/lib/sched/libsched.a
endif

ifeq ($(USE_CIRCLE_RUNTIME),1)
CXXFLAGS += $(filter -D%,$(CFLAGS))
endif

SOURCES_C := \
	src/kernel.c \
	src/uart.c \
	src/mailbox.c \
	src/framebuffer.c \
	src/platform.c \
	src/audio_stub.c \
	src/input_stub.c \
	src/string.c

ifeq ($(USE_CIRCLE_RUNTIME),1)
SOURCES_C += src/circle_main_stub.c
endif

SOURCES_S := boot/start.S

OBJECTS := $(patsubst %.c,$(BUILD_DIR)/%.o,$(SOURCES_C)) \
	$(patsubst %.cpp,$(BUILD_DIR)/%.o,$(SOURCES_CPP)) \
	$(patsubst %.S,$(BUILD_DIR)/%.o,$(SOURCES_S))

TARGET_ELF := $(BUILD_DIR)/kernel8.elf
TARGET_IMG := $(BUILD_DIR)/kernel8.img
FMSX_BOOTSTRAP_ARTIFACT := artifacts/kernel8-fmsx-bootstrap.img
DEFAULT_ARTIFACT := artifacts/kernel8-default.img
INITRAMFS_IN ?= roms/msx1
INITRAMFS_OUT ?= sdcard/msx.cpio
CONTEXT_UPDATER := ./scripts/update-ai-context.sh
THIRD_PARTY_GUARD := ./scripts/check-third-party-pristine.sh

.PHONY: all default clean help guard-third-party circle-configure sdcard initramfs package

all: default

default: circle-configure
	@mkdir -p artifacts
	@mkdir -p artifacts build/circle_combo
	$(MAKE) -C circle_combo clean >/dev/null
	$(MAKE) -C circle_combo CHECK_DEPS=0 COMBO_ENABLE_FMSX=1 \
		COMBO_INITRAMFS_MOUNT=$(COMBO_INITRAMFS_MOUNT) \
		COMBO_REQUIRE_CPIO_BIOS=$(COMBO_REQUIRE_CPIO_BIOS) \
		COMBO_EMBED_INITRAMFS=$(COMBO_EMBED_INITRAMFS) \
		COMBO_EMBEDDED_BIOS_PATH="$(COMBO_EMBEDDED_BIOS_PATH)" \
		COMBO_SUPPRESS_WARNINGS=$(COMBO_SUPPRESS_WARNINGS) \
		COMBO_HARD_DISABLE_AUDIO=$(COMBO_HARD_DISABLE_AUDIO) \
		COMBO_CARTA_ONLY=$(COMBO_CARTA_ONLY) \
		COMBO_FMSX_AUDIO=$(COMBO_FMSX_AUDIO) \
		COMBO_FMSX_MSX1_TEXT80=$(COMBO_FMSX_MSX1_TEXT80) \
		COMBO_FMSX_RAMMAPPER_KB=$(COMBO_FMSX_RAMMAPPER_KB) \
		COMBO_FMSX_MEGARAM_KB=$(COMBO_FMSX_MEGARAM_KB) \
		COMBO_FMSX_MEGARAM_ENABLED=$(COMBO_FMSX_MEGARAM_ENABLED) \
		COMBO_FMSX_CART_GUESS=$(COMBO_FMSX_CART_GUESS) \
		COMBO_FMSX_CARTA_MAPPER=$(COMBO_FMSX_CARTA_MAPPER) \
		COMBO_FMSX_CARTB_MAPPER=$(COMBO_FMSX_CARTB_MAPPER) \
		COMBO_FMSX_BOOT_PROFILE=$(COMBO_FMSX_BOOT_PROFILE) \
		COMBO_BOOT_QUIET=$(COMBO_BOOT_QUIET) \
		COMBO_DEFER_USB_INIT_FRAMES=$(COMBO_DEFER_USB_INIT_FRAMES) \
		COMBO_DEFER_SETTINGS_LOAD_FRAMES=$(COMBO_DEFER_SETTINGS_LOAD_FRAMES) \
		COMBO_DEFER_INITRAMFS_FULL_MOUNT_FRAMES=$(COMBO_DEFER_INITRAMFS_FULL_MOUNT_FRAMES) \
		COMBO_SIZE_OPT=$(COMBO_SIZE_OPT) \
		COMBO_FMSX_BOOT_MINIMAL_STARTUP=$(COMBO_FMSX_BOOT_MINIMAL_STARTUP) \
		COMBO_ENABLE_DEBUG_OVERLAY=$(COMBO_ENABLE_DEBUG_OVERLAY) \
		COMBO_TEST_TONE_DEFAULT=$(COMBO_TEST_TONE_DEFAULT) \
		COMBO_DEBUG_OVERLAY_DEFAULT=$(COMBO_DEBUG_OVERLAY_DEFAULT) \
		COMBO_DEBUG_OVERLAY_COMPACT=$(COMBO_DEBUG_OVERLAY_COMPACT)
	@img=$$(ls circle_combo/kernel8*.img 2>/dev/null | head -n1); \
	if [ -z "$$img" ]; then \
		echo "Erro: imagem do bootstrap fMSX nao encontrada"; \
		exit 1; \
	fi; \
	cp "$$img" build/circle_combo/kernel8.img; \
	cp build/circle_combo/kernel8.img $(FMSX_BOOTSTRAP_ARTIFACT)
	$(MAKE) -C circle_combo clean >/dev/null
	bash $(CONTEXT_UPDATER) default build-ok $(FMSX_BOOTSTRAP_ARTIFACT)
	cp $(FMSX_BOOTSTRAP_ARTIFACT) $(DEFAULT_ARTIFACT)
	bash $(CONTEXT_UPDATER) default default-ok $(DEFAULT_ARTIFACT)
	@issue_branch=$$(git rev-parse --abbrev-ref HEAD 2>/dev/null || true); \
	issue_id=$$(printf "%s" "$$issue_branch" | sed -n 's/^\([0-9][0-9]*\)-.*/\1/p'); \
	if [ -n "$$issue_id" ]; then \
		issue_artifact="artifacts/kernel8-issue$${issue_id}.img"; \
		cp $(FMSX_BOOTSTRAP_ARTIFACT) "$$issue_artifact"; \
		bash $(CONTEXT_UPDATER) default issue-ok "$$issue_artifact"; \
		echo "Artefato issue estavel: $$issue_artifact"; \
	fi
	@echo "Artefato default estavel: $(DEFAULT_ARTIFACT)"

guard-third-party:
	bash $(THIRD_PARTY_GUARD)

circle-configure: guard-third-party
	cd third_party/circle && ./configure -r 3 -p $(CROSS) -f

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)/boot $(BUILD_DIR)/src

$(BUILD_DIR)/%.o: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: %.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: %.S | $(BUILD_DIR)
	$(CC) $(ASFLAGS) -c $< -o $@

$(TARGET_ELF): $(OBJECTS)
	$(LD) $(LDFLAGS) $(LINK_EXTRA_FLAGS) $^ $(if $(EXTRA_LIBS),--start-group $(EXTRA_LIBS) --end-group,) -o $@
	$(SIZE) $@

$(TARGET_IMG): $(TARGET_ELF)
	$(OBJCOPY) $< -O binary $@

clean:
	rm -rf $(BUILD_DIR)

sdcard:
	./scripts/prepare-sd.sh

initramfs:
	./scripts/make-initramfs.sh $(INITRAMFS_IN) $(INITRAMFS_OUT)

package: default initramfs
	./scripts/make-sdcard-package.sh

help:
	@echo "Targets: all (default), clean, sdcard, initramfs, package, help"
	@echo "Default (make): perfil estavel -> artifacts/kernel8-default.img + artifacts/kernel8-issue<id>.img (quando em branch de issue)"
	@echo "SD card prep: make sdcard"
	@echo "Initramfs: make initramfs INITRAMFS_IN=roms/msx1 INITRAMFS_OUT=sdcard/msx.cpio"
	@echo "SD package zip: make package -> artifacts/sdcard-package-YYYYMMDDHHMM.zip"
	@echo "Cross prefix auto: aarch64-none-elf- | aarch64-elf-"
	@echo "Override: make CROSS=aarch64-elf-"
	@echo "Use flags COMBO_*/DEBUG/FB_* conforme necessario"
	@echo "Boot mode selecionavel em runtime: Settings -> Boot Mode [NORM/FAST/GAME]"
	@echo "Bypass temporario (nao recomendado): ALLOW_DIRTY_THIRD_PARTY=1 make"
