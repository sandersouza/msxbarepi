PROJECT := msxbare
BUILD_DIR := build

.DEFAULT_GOAL := stable

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
COMBO_FMSX_RAMMAPPER_KB ?= 256
COMBO_FMSX_MEGARAM_KB ?= 256
COMBO_FMSX_MEGARAM_ENABLED ?= 1
COMBO_FMSX_CART_GUESS ?= 1
COMBO_FMSX_CARTA_MAPPER ?= 255
COMBO_FMSX_CARTB_MAPPER ?= 255
COMBO_FMSX_BOOT_PROFILE ?= 1
COMBO_BOOT_QUIET ?= 0
COMBO_ENABLE_DEBUG_OVERLAY ?= 1
COMBO_TEST_TONE_DEFAULT ?= 0
COMBO_DEBUG_OVERLAY_DEFAULT ?= 1
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
CONTEXT_UPDATER := ./scripts/update-ai-context.sh
THIRD_PARTY_GUARD := ./scripts/check-third-party-pristine.sh

.PHONY: all stable clean help m0 m0-circle-input m0-circle-input-full m0-hdmi-audio m0-hdmi-audio-full m0-hdmi-audio-integrated m0-hdmi-audio-integrated-full m0-combo m0-combo-full m0-combo-integrated m2-fmsx-bootstrap guard-third-party circle-configure circle-usbkeyboard-debug circle-sounddevices-debug

all: stable

stable: circle-configure
	@mkdir -p artifacts
	$(MAKE) m2-fmsx-bootstrap \
		COMBO_ENABLE_DEBUG_OVERLAY=0 \
		COMBO_DEBUG_OVERLAY_DEFAULT=0 \
		COMBO_FMSX_BOOT_PROFILE=1 \
		COMBO_FMSX_RAMMAPPER_KB=64 \
		COMBO_FMSX_MEGARAM_ENABLED=0
	cp artifacts/kernel8-m2-fmsx-bootstrap.img artifacts/kernel8.img
	bash $(CONTEXT_UPDATER) stable default-ok artifacts/kernel8.img
	@echo "Artefato default estavel: artifacts/kernel8.img"

m0: $(TARGET_IMG)
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-m0.img
	bash $(CONTEXT_UPDATER) m0 ok artifacts/kernel8-m0.img
	@echo "Artefato M0 gerado: artifacts/kernel8-m0.img"

m0-circle-input: circle-configure
	@mkdir -p artifacts
	$(MAKE) -C third_party/circle/sample/08-usbkeyboard >/dev/null
	$(MAKE) clean
	$(MAKE) CIRCLE_INPUT=1 CIRCLE_INPUT_SAFE=1
	cp $(TARGET_IMG) artifacts/kernel8-m0-circle-input.img
	bash $(CONTEXT_UPDATER) m0.1-input-safe ok artifacts/kernel8-m0-circle-input.img
	@echo "Artefato M0.1 safe (boot sem travar): artifacts/kernel8-m0-circle-input.img"

m0-circle-input-full: circle-configure
	@mkdir -p artifacts
	$(MAKE) -C third_party/circle/sample/08-usbkeyboard >/dev/null
	$(MAKE) clean
	$(MAKE) CIRCLE_INPUT=1 CIRCLE_INPUT_SAFE=0
	cp $(TARGET_IMG) artifacts/kernel8-m0-circle-input-full.img
	bash $(CONTEXT_UPDATER) m0.1-input-full ok artifacts/kernel8-m0-circle-input-full.img
	@echo "Artefato M0.1 full (experimental): artifacts/kernel8-m0-circle-input-full.img"

m0-hdmi-audio: circle-configure
	@mkdir -p artifacts
	$(MAKE) -C third_party/circle/sample/34-sounddevices
	@img=$$(ls third_party/circle/sample/34-sounddevices/kernel8*.img 2>/dev/null | head -n1); \
	if [ -z "$$img" ]; then \
		echo "Erro: imagem do sample 34-sounddevices nao encontrada"; \
		exit 1; \
	fi; \
	cp "$$img" artifacts/kernel8-m0-hdmi-audio.img
	bash $(CONTEXT_UPDATER) m0.2-audio-safe-standalone ok artifacts/kernel8-m0-hdmi-audio.img
	@echo "Artefato M0.2 audio safe (standalone Circle): artifacts/kernel8-m0-hdmi-audio.img"

m0-hdmi-audio-full: circle-configure
	$(MAKE) m0-hdmi-audio-integrated-full

m0-hdmi-audio-integrated: circle-configure
	@mkdir -p artifacts
	$(MAKE) -C third_party/circle/sample/34-sounddevices >/dev/null
	$(MAKE) clean
	$(MAKE) CIRCLE_AUDIO=1 CIRCLE_AUDIO_SAFE=1
	cp $(TARGET_IMG) artifacts/kernel8-m0-hdmi-audio-integrated.img
	bash $(CONTEXT_UPDATER) m0.2-audio-integrated-safe ok artifacts/kernel8-m0-hdmi-audio-integrated.img
	@echo "Artefato M0.2 audio integrado safe (experimental): artifacts/kernel8-m0-hdmi-audio-integrated.img"

m0-hdmi-audio-integrated-full: circle-configure
	@mkdir -p artifacts
	$(MAKE) -C third_party/circle/sample/34-sounddevices >/dev/null
	$(MAKE) clean
	$(MAKE) CIRCLE_AUDIO=1 CIRCLE_AUDIO_SAFE=0
	cp $(TARGET_IMG) artifacts/kernel8-m0-hdmi-audio-full.img
	bash $(CONTEXT_UPDATER) m0.2-audio-full ok artifacts/kernel8-m0-hdmi-audio-full.img
	@echo "Artefato M0.2 audio full (experimental): artifacts/kernel8-m0-hdmi-audio-full.img"

m0-combo: circle-configure
	@mkdir -p artifacts
	$(MAKE) -C circle_combo clean >/dev/null
	$(MAKE) -C circle_combo
	@img=$$(ls circle_combo/kernel8*.img 2>/dev/null | head -n1); \
	if [ -z "$$img" ]; then \
		echo "Erro: imagem do combo standalone nao encontrada"; \
		exit 1; \
	fi; \
	cp "$$img" artifacts/kernel8-m0-combo.img
	bash $(CONTEXT_UPDATER) m0.3-combo-standalone ok artifacts/kernel8-m0-combo.img
	@echo "Artefato M0.3 combo standalone (audio HDMI + USB teclado): artifacts/kernel8-m0-combo.img"

m2-fmsx-bootstrap: circle-configure
	@mkdir -p artifacts
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
		COMBO_ENABLE_DEBUG_OVERLAY=$(COMBO_ENABLE_DEBUG_OVERLAY) \
		COMBO_TEST_TONE_DEFAULT=$(COMBO_TEST_TONE_DEFAULT) \
		COMBO_DEBUG_OVERLAY_DEFAULT=$(COMBO_DEBUG_OVERLAY_DEFAULT) \
		COMBO_DEBUG_OVERLAY_COMPACT=$(COMBO_DEBUG_OVERLAY_COMPACT)
	@img=$$(ls circle_combo/kernel8*.img 2>/dev/null | head -n1); \
	if [ -z "$$img" ]; then \
		echo "Erro: imagem do bootstrap M2 fMSX nao encontrada"; \
		exit 1; \
	fi; \
	cp "$$img" artifacts/kernel8-m2-fmsx-bootstrap.img
	bash $(CONTEXT_UPDATER) m2-bootstrap build-ok artifacts/kernel8-m2-fmsx-bootstrap.img
	@echo "Artefato M2 bootstrap (fMSX core + combo loop): artifacts/kernel8-m2-fmsx-bootstrap.img"

m0-combo-integrated: circle-configure
	@mkdir -p artifacts
	$(MAKE) -C third_party/circle/sample/08-usbkeyboard >/dev/null
	$(MAKE) -C third_party/circle/sample/34-sounddevices >/dev/null
	$(MAKE) clean
	$(MAKE) CIRCLE_INPUT=1 CIRCLE_INPUT_SAFE=1 CIRCLE_AUDIO=1 CIRCLE_AUDIO_SAFE=0
	cp $(TARGET_IMG) artifacts/kernel8-m0-combo-integrated.img
	bash $(CONTEXT_UPDATER) m0.3-combo-integrated ok artifacts/kernel8-m0-combo-integrated.img
	@echo "Artefato M0.3 combo integrado (experimental): artifacts/kernel8-m0-combo-integrated.img"

m0-combo-full: circle-configure
	@mkdir -p artifacts
	$(MAKE) -C third_party/circle/sample/08-usbkeyboard >/dev/null
	$(MAKE) -C third_party/circle/sample/34-sounddevices >/dev/null
	$(MAKE) clean
	$(MAKE) CIRCLE_INPUT=1 CIRCLE_INPUT_SAFE=0 CIRCLE_AUDIO=1 CIRCLE_AUDIO_SAFE=0
	cp $(TARGET_IMG) artifacts/kernel8-m0-combo-full.img
	bash $(CONTEXT_UPDATER) m0.3-combo-full ok artifacts/kernel8-m0-combo-full.img
	@echo "Artefato M0.3 combo full (input+audio ativos): artifacts/kernel8-m0-combo-full.img"

guard-third-party:
	bash $(THIRD_PARTY_GUARD)

circle-configure: guard-third-party
	cd third_party/circle && ./configure -r 3 -p $(CROSS) -f

circle-usbkeyboard-debug: circle-configure
	@mkdir -p artifacts
	$(MAKE) -C third_party/circle/sample/08-usbkeyboard
	@img=$$(ls third_party/circle/sample/08-usbkeyboard/kernel8*.img 2>/dev/null | head -n1); \
	if [ -z "$$img" ]; then \
		echo "Erro: imagem do sample 08-usbkeyboard nao encontrada"; \
		exit 1; \
	fi; \
	cp "$$img" artifacts/kernel8-circle-usbkeyboard-debug.img
	bash $(CONTEXT_UPDATER) circle-usbkeyboard-debug ok artifacts/kernel8-circle-usbkeyboard-debug.img
	@echo "Artefato Circle USB keyboard: artifacts/kernel8-circle-usbkeyboard-debug.img"

circle-sounddevices-debug: circle-configure
	@mkdir -p artifacts
	$(MAKE) -C third_party/circle/sample/34-sounddevices
	@img=$$(ls third_party/circle/sample/34-sounddevices/kernel8*.img 2>/dev/null | head -n1); \
	if [ -z "$$img" ]; then \
		echo "Erro: imagem do sample 34-sounddevices nao encontrada"; \
		exit 1; \
	fi; \
	cp "$$img" artifacts/kernel8-circle-sounddevices-debug.img
	bash $(CONTEXT_UPDATER) circle-sounddevices-debug ok artifacts/kernel8-circle-sounddevices-debug.img
	@echo "Artefato Circle sounddevices: artifacts/kernel8-circle-sounddevices-debug.img"

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

help:
	@echo "Targets: all, m0, m0-circle-input, m0-circle-input-full, m0-hdmi-audio, m0-hdmi-audio-full, m0-combo, m0-combo-integrated, m0-combo-full, clean, circle-usbkeyboard-debug, circle-sounddevices-debug"
	@echo "Default (make): perfil estavel M2 -> artifacts/kernel8.img"
	@echo "Cross prefix auto: aarch64-none-elf- | aarch64-elf-"
	@echo "Override: make CROSS=aarch64-elf-"
	@echo "Framebuffer: make FB_WIDTH=1024 FB_HEIGHT=768"
	@echo "Debug logs: make DEBUG=1"
	@echo "Circle input safe (nao trava boot): make m0-circle-input"
	@echo "Circle input full (experimental): make m0-circle-input-full"
	@echo "Circle HDMI audio safe (standalone): make m0-hdmi-audio"
	@echo "Circle HDMI audio integrado safe (experimental): make m0-hdmi-audio-integrated"
	@echo "Circle HDMI audio integrado full (experimental): make m0-hdmi-audio-full"
	@echo "M0.3 combo standalone (audio HDMI + USB teclado): make m0-combo"
	@echo "M0.3 combo integrado (experimental): make m0-combo-integrated"
	@echo "M0.3 combo full (input+audio ativos): make m0-combo-full"
	@echo "M2 bootstrap fMSX (experimental): make m2-fmsx-bootstrap"
	@echo "Guardrail third_party: make guard-third-party"
	@echo "Bypass temporario (nao recomendado): ALLOW_DIRTY_THIRD_PARTY=1 make <target>"
