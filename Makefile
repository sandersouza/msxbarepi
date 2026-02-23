PROJECT := msxbare
BUILD_DIR := build
DEBUG ?= 0
FMSX_FRONTEND_OPT ?= 0
FMSX_FRONTEND_EXTRA_CFLAGS ?=
FMSX_FRAME_SKIP ?= 0
FMSX_BOOT_FRAME_SKIP ?= 3
FMSX_BOOT_FRAME_COUNT ?= 900
FB_WIDTH ?= 1024
FB_HEIGHT ?= 768
ENABLE_MMU ?= 0
ENABLE_AUDIO ?= 0
AUDIO_BACKEND ?= p2
EXTRA_CFLAGS ?=

# Auto-detect common baremetal toolchain prefixes.
# Priority: aarch64-none-elf- (GNU Arm) then aarch64-elf- (Homebrew).
CROSS ?= $(shell \
	if command -v aarch64-none-elf-gcc >/dev/null 2>&1; then \
		echo aarch64-none-elf-; \
	elif command -v aarch64-elf-gcc >/dev/null 2>&1; then \
		echo aarch64-elf-; \
	else \
		echo aarch64-none-elf-; \
	fi)
CC := $(CROSS)gcc
LD := $(CROSS)ld
OBJCOPY := $(CROSS)objcopy
SIZE := $(CROSS)size

CFLAGS := -Wall -Wextra -O2 -ffreestanding -nostdlib -nostartfiles -mcpu=cortex-a53
CFLAGS += -include stdio.h -include stdlib.h -include string.h -include strings.h -include ctype.h -include time.h -include unistd.h
CFLAGS += -DFMSX_BAREMETAL_NO_START_RUN=1
CFLAGS += -DFMSX_BAREMETAL_SKIP_BIOS_PATCHES=1
ifeq ($(ENABLE_AUDIO),1)
CFLAGS += -DMSXBARE_ENABLE_AUDIO=1
CFLAGS += -DFMSX_BAREMETAL_PSG_AUDIO_ONLY=1
else
CFLAGS += -DFMSX_BAREMETAL_SKIP_AUDIO_RESET=1
CFLAGS += -DFMSX_BAREMETAL_SKIP_AUDIO_RUNTIME=1
endif
CFLAGS += -DFMSX_BAREMETAL_SKIP_FDC_RESET=1
CFLAGS += -DFMSX_BAREMETAL_SKIP_DISK_OPEN=1
CFLAGS += -DFMSX_BAREMETAL_SIMPLE_REFRESHBORDER=1
ifeq ($(DEBUG),1)
CFLAGS += -DMSXBARE_DEBUG_LOGS=1
endif
CFLAGS += -DMSXBARE_FRAME_SKIP=$(FMSX_FRAME_SKIP)
CFLAGS += -DMSXBARE_BOOT_FRAME_SKIP=$(FMSX_BOOT_FRAME_SKIP)
CFLAGS += -DMSXBARE_BOOT_FRAME_COUNT=$(FMSX_BOOT_FRAME_COUNT)
CFLAGS += -DMSXBARE_FB_WIDTH=$(FB_WIDTH)u -DMSXBARE_FB_HEIGHT=$(FB_HEIGHT)u
CFLAGS += $(EXTRA_CFLAGS)
CFLAGS += -Iinclude -Ithird_party/fmsx -Ithird_party/fmsx/fMSX -Ithird_party/fmsx/EMULib -Ithird_party/fmsx/Z80 -Ithird_party/fmsx/NukeYKT
ASFLAGS := -ffreestanding -nostdlib -nostartfiles -mcpu=cortex-a53 -Iinclude -Ithird_party/fmsx -Ithird_party/fmsx/fMSX -Ithird_party/fmsx/EMULib -Ithird_party/fmsx/Z80 -Ithird_party/fmsx/NukeYKT
ifeq ($(ENABLE_MMU),1)
CFLAGS += -DMSXBARE_ENABLE_MMU=1
endif

ifeq ($(AUDIO_BACKEND),p2)
CFLAGS += -DMSXBARE_AUDIO_BACKEND_P2=1
AUDIO_OUT_SRC := src/audio_out_pwm.c
else ifeq ($(AUDIO_BACKEND),hdmi)
CFLAGS += -DMSXBARE_AUDIO_BACKEND_HDMI=1
AUDIO_OUT_SRC := src/audio_out_hdmi.c
else
$(error Unsupported AUDIO_BACKEND='$(AUDIO_BACKEND)' (use p2|hdmi))
endif
LDFLAGS := -T linker/linker.ld

SOURCES_C := \
	src/kernel.c \
	src/uart.c \
	src/mailbox.c \
	src/framebuffer.c \
	src/console.c \
	src/mmu.c \
	src/platform.c \
	src/usb_host.c \
	src/usb_hid.c \
	src/msx_input.c \
	src/audio_pcm.c \
	$(AUDIO_OUT_SRC) \
	src/dtb.c \
	src/rom_loader.c \
	src/initramfs.c \
	src/msx_core_fmsx_adapter.c \
	src/fmsx/fmsx_compat.c \
	src/fmsx/fmsx_frontend.c \
	third_party/fmsx/fMSX/MSX.c \
	third_party/fmsx/fMSX/V9938.c \
	third_party/fmsx/EMULib/Sound.c \
	third_party/fmsx/EMULib/SHA1.c \
	src/fmsx/floppy_stub.c \
	third_party/fmsx/EMULib/FDIDisk.c \
	third_party/fmsx/EMULib/MCF.c \
	third_party/fmsx/Z80/Z80.c \
	third_party/fmsx/EMULib/I8255.c \
	third_party/fmsx/EMULib/YM2413.c \
	third_party/fmsx/EMULib/AY8910.c \
	third_party/fmsx/EMULib/SCC.c \
	third_party/fmsx/EMULib/WD1793.c \
	third_party/fmsx/NukeYKT/opll.c \
	third_party/fmsx/NukeYKT/WrapNukeYKT.c
SOURCES_S := boot/start.S
OBJECTS := $(patsubst %.c,$(BUILD_DIR)/%.o,$(SOURCES_C)) \
           $(patsubst %.S,$(BUILD_DIR)/%.o,$(SOURCES_S))

TARGET_ELF := $(BUILD_DIR)/kernel8.elf
TARGET_IMG := $(BUILD_DIR)/kernel8.img

.PHONY: all clean help perf-kernels fastboot fastplay fastboot-fb960x720 fastboot-fb800x600 mmu-test audio-test audio-p2-smoketest audio-hdmi audio-hdmi-test audio-hdmi-debug usb-host-debug

all: $(TARGET_IMG)
	@echo "Build concluído: $(TARGET_IMG)"

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)/boot $(BUILD_DIR)/src $(BUILD_DIR)/src/fmsx $(BUILD_DIR)/third_party/fmsx/fMSX $(BUILD_DIR)/third_party/fmsx/EMULib $(BUILD_DIR)/third_party/fmsx/Z80 $(BUILD_DIR)/third_party/fmsx/NukeYKT

$(BUILD_DIR)/%.o: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/src/fmsx/fmsx_frontend.o: CFLAGS := $(filter-out -O2,$(CFLAGS)) -O$(FMSX_FRONTEND_OPT) $(FMSX_FRONTEND_EXTRA_CFLAGS) -Wno-unused-variable
$(BUILD_DIR)/third_party/fmsx/EMULib/Sound.o: CFLAGS += -fno-tree-vectorize -fno-tree-slp-vectorize
$(BUILD_DIR)/src/usb_host.o: CFLAGS += -fno-tree-vectorize -fno-tree-slp-vectorize
$(BUILD_DIR)/third_party/%.o: CFLAGS += -Wno-unused-parameter -Wno-sign-compare -Wno-pointer-sign -Wno-dangling-else -Wno-implicit-fallthrough -Wno-parentheses -Wno-unused-function -Wno-unused-variable -Wno-unused-but-set-variable

$(BUILD_DIR)/%.o: %.S | $(BUILD_DIR)
	$(CC) $(ASFLAGS) -c $< -o $@

$(TARGET_ELF): $(OBJECTS)
	$(LD) $(LDFLAGS) $^ -o $@
	$(SIZE) $@

$(TARGET_IMG): $(TARGET_ELF)
	$(OBJCOPY) $< -O binary $@

clean:
	rm -rf $(BUILD_DIR)

perf-kernels:
	@mkdir -p artifacts
	$(MAKE) clean
	$(MAKE) DEBUG=0 FMSX_FRONTEND_OPT=0
	cp $(TARGET_IMG) artifacts/kernel8-fastsafe-o0.img
	$(MAKE) clean
	$(MAKE) DEBUG=0 FMSX_FRONTEND_OPT=1
	cp $(TARGET_IMG) artifacts/kernel8-fasttest-o1.img
	$(MAKE) clean
	$(MAKE) DEBUG=0 FMSX_FRONTEND_OPT=2 FMSX_FRONTEND_EXTRA_CFLAGS="-fno-strict-aliasing"
	cp $(TARGET_IMG) artifacts/kernel8-fasttest-o2-noalias.img
	@ls -lh artifacts/kernel8-fast*.img

fastboot:
	$(MAKE) clean
	$(MAKE) DEBUG=0 ENABLE_MMU=1 FMSX_FRONTEND_OPT=1 FMSX_FRAME_SKIP=0 FMSX_BOOT_FRAME_SKIP=7 FMSX_BOOT_FRAME_COUNT=1200 FB_WIDTH=1024 FB_HEIGHT=768
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-fastboot.img
	@echo "Fastboot preset gerado: artifacts/kernel8-fastboot.img"

fastplay:
	$(MAKE) clean
	$(MAKE) DEBUG=0 ENABLE_MMU=1 FMSX_FRONTEND_OPT=1 FMSX_FRAME_SKIP=1 FMSX_BOOT_FRAME_SKIP=7 FMSX_BOOT_FRAME_COUNT=1200 FB_WIDTH=1024 FB_HEIGHT=768
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-fastplay.img
	@echo "Fastplay preset gerado: artifacts/kernel8-fastplay.img"

fastboot-fb960x720:
	$(MAKE) clean
	$(MAKE) DEBUG=0 ENABLE_MMU=1 FMSX_FRONTEND_OPT=1 FMSX_FRAME_SKIP=0 FMSX_BOOT_FRAME_SKIP=7 FMSX_BOOT_FRAME_COUNT=1200 FB_WIDTH=960 FB_HEIGHT=720
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-fastboot-fb960x720.img
	@echo "Fastboot preset (FB 960x720) gerado: artifacts/kernel8-fastboot-fb960x720.img"

fastboot-fb800x600:
	$(MAKE) clean
	$(MAKE) DEBUG=0 ENABLE_MMU=1 FMSX_FRONTEND_OPT=1 FMSX_FRAME_SKIP=0 FMSX_BOOT_FRAME_SKIP=7 FMSX_BOOT_FRAME_COUNT=1200 FB_WIDTH=800 FB_HEIGHT=600
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-fastboot-fb800x600.img
	@echo "Fastboot preset (FB 800x600) gerado: artifacts/kernel8-fastboot-fb800x600.img"

mmu-test:
	$(MAKE) clean
	$(MAKE) DEBUG=0 ENABLE_MMU=1 FMSX_FRONTEND_OPT=1 FMSX_FRAME_SKIP=0 FMSX_BOOT_FRAME_SKIP=7 FMSX_BOOT_FRAME_COUNT=1200 FB_WIDTH=1024 FB_HEIGHT=768
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-mmu-test.img
	@echo "Preset experimental MMU/cache gerado: artifacts/kernel8-mmu-test.img"

audio-test:
	$(MAKE) clean
	$(MAKE) DEBUG=0 ENABLE_MMU=1 ENABLE_AUDIO=1 AUDIO_BACKEND=p2 FMSX_FRONTEND_OPT=1 FMSX_FRAME_SKIP=0 FMSX_BOOT_FRAME_SKIP=7 FMSX_BOOT_FRAME_COUNT=1200 FB_WIDTH=1024 FB_HEIGHT=768 FMSX_FRONTEND_EXTRA_CFLAGS="-DMSXBARE_AUDIO_SELFTEST_MS=250"
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-audio-test.img
	@echo "Preset audio PSG via P2/PWM gerado: artifacts/kernel8-audio-test.img"

audio-p2-smoketest:
	$(MAKE) clean
	$(MAKE) DEBUG=0 ENABLE_MMU=1 ENABLE_AUDIO=1 AUDIO_BACKEND=p2 FMSX_FRONTEND_OPT=1 FMSX_FRAME_SKIP=0 FMSX_BOOT_FRAME_SKIP=7 FMSX_BOOT_FRAME_COUNT=1200 FB_WIDTH=1024 FB_HEIGHT=768 EXTRA_CFLAGS="-DMSXBARE_AUDIO_P2_SMOKETEST_MS=1000"
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-audio-p2-smoketest.img
	@echo "Preset smoke test P2 gerado: artifacts/kernel8-audio-p2-smoketest.img"

audio-hdmi:
	$(MAKE) clean
	$(MAKE) DEBUG=0 ENABLE_MMU=1 ENABLE_AUDIO=1 AUDIO_BACKEND=hdmi FMSX_FRONTEND_OPT=0 FMSX_FRAME_SKIP=0 FMSX_BOOT_FRAME_SKIP=0 FMSX_BOOT_FRAME_COUNT=0 FB_WIDTH=1024 FB_HEIGHT=768 EXTRA_CFLAGS="-DFMSX_BAREMETAL_SKIP_AUDIO_RESET=1"
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-audio-hdmi.img
	@echo "Preset audio HDMI (estavel) gerado: artifacts/kernel8-audio-hdmi.img"

audio-hdmi-test:
	$(MAKE) clean
	$(MAKE) DEBUG=0 ENABLE_MMU=1 ENABLE_AUDIO=1 AUDIO_BACKEND=hdmi FMSX_FRONTEND_OPT=0 FMSX_FRAME_SKIP=0 FMSX_BOOT_FRAME_SKIP=0 FMSX_BOOT_FRAME_COUNT=0 FB_WIDTH=1024 FB_HEIGHT=768 EXTRA_CFLAGS="-DMSXBARE_AUDIO_HDMI_BOOT_DEBUG=1 -DMSXBARE_AUDIO_HDMI_OVERLAY_ONLY=1 -DFMSX_BAREMETAL_SKIP_AUDIO_RESET=1"
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-audio-hdmi-test.img
	@echo "Preset audio HDMI (debug overlay) gerado: artifacts/kernel8-audio-hdmi-test.img"

audio-hdmi-debug:
	$(MAKE) clean
	$(MAKE) DEBUG=1 ENABLE_MMU=0 ENABLE_AUDIO=1 AUDIO_BACKEND=hdmi FMSX_FRONTEND_OPT=1 FMSX_FRAME_SKIP=0 FMSX_BOOT_FRAME_SKIP=7 FMSX_BOOT_FRAME_COUNT=1200 FB_WIDTH=1024 FB_HEIGHT=768 EXTRA_CFLAGS="-DMSXBARE_DEBUG_HOLD_MS=5000 -DMSXBARE_AUDIO_HDMI_DEBUG_STANDALONE=1 -DMSXBARE_AUDIO_HDMI_DMA_STANDALONE=1"
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-audio-hdmi-debug.img
	@echo "Preset audio HDMI debug gerado: artifacts/kernel8-audio-hdmi-debug.img"


usb-host-debug:
	$(MAKE) clean
	$(MAKE) DEBUG=0 ENABLE_MMU=0 ENABLE_AUDIO=0 FMSX_FRONTEND_OPT=1 FMSX_FRAME_SKIP=0 FMSX_BOOT_FRAME_SKIP=0 FMSX_BOOT_FRAME_COUNT=0 FB_WIDTH=1024 FB_HEIGHT=768 EXTRA_CFLAGS="-DMSXBARE_USB_HOST_DEBUG_STANDALONE=1 -DMSXBARE_USB_HOST_SILENT_LOGS=1"
	@mkdir -p artifacts
	cp $(TARGET_IMG) artifacts/kernel8-usb-host-debug.img
	@echo "Preset USB host debug gerado: artifacts/kernel8-usb-host-debug.img"

help:
	@echo "Targets: all, clean"
	@echo "Auto-detect CROSS: aarch64-none-elf- or aarch64-elf-"
	@echo "Override manual: make CROSS=aarch64-elf-"
	@echo "Debug logs: make DEBUG=1"
	@echo "Frontend opt level (stability/perf): make FMSX_FRONTEND_OPT=0|1|2"
	@echo "Frontend extra flags: make FMSX_FRONTEND_EXTRA_CFLAGS='-fno-strict-aliasing'"
	@echo "Frame skip (present 1 of N+1 frames): make FMSX_FRAME_SKIP=0|1|2..."
	@echo "Fast boot render: make FMSX_BOOT_FRAME_SKIP=3 FMSX_BOOT_FRAME_COUNT=900"
	@echo "Framebuffer requisitado ao firmware: make FB_WIDTH=1024 FB_HEIGHT=768"
	@echo "Recommended preset (MMU+cache+pacing): make fastboot"
	@echo "Gameplay test preset (frame skip apos boot): make fastplay"
	@echo "Lower-FB presets to test CPU cost: make fastboot-fb960x720 | make fastboot-fb800x600"
	@echo "MMU/cache preset mantido para A/B: make mmu-test"
	@echo "PSG audio via P2/PWM: make audio-test"
	@echo "Smoke test P2 (tom PWM direto): make audio-p2-smoketest"
	@echo "Audio HDMI (estavel): make audio-hdmi"
	@echo "Audio HDMI (debug overlay): make audio-hdmi-test"
	@echo "Audio HDMI debug (logs na HDMI/UART): make audio-hdmi-debug"
	@echo "USB host debug (standalone): make usb-host-debug"
	@echo "Audio backend: make ENABLE_AUDIO=1 AUDIO_BACKEND=p2|hdmi ..."
	@echo "Generate A/B perf kernels: make perf-kernels"
