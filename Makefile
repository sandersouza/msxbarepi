PROJECT := msxbare
BUILD_DIR := build

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
LDFLAGS := -T linker/linker.ld

SOURCES_C := src/kernel.c src/uart.c src/mailbox.c src/framebuffer.c src/console.c
SOURCES_S := boot/start.S
OBJECTS := $(patsubst %.c,$(BUILD_DIR)/%.o,$(SOURCES_C)) \
           $(patsubst %.S,$(BUILD_DIR)/%.o,$(SOURCES_S))

TARGET_ELF := $(BUILD_DIR)/kernel8.elf
TARGET_IMG := $(BUILD_DIR)/kernel8.img

.PHONY: all clean help

all: $(TARGET_IMG)
	@echo "Build concluído: $(TARGET_IMG)"

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)/boot $(BUILD_DIR)/src

$(BUILD_DIR)/%.o: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -Iinclude -c $< -o $@

$(BUILD_DIR)/%.o: %.S | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET_ELF): $(OBJECTS)
	$(LD) $(LDFLAGS) $^ -o $@
	$(SIZE) $@

$(TARGET_IMG): $(TARGET_ELF)
	$(OBJCOPY) $< -O binary $@

clean:
	rm -rf $(BUILD_DIR)

help:
	@echo "Targets: all, clean"
	@echo "Auto-detect CROSS: aarch64-none-elf- or aarch64-elf-"
	@echo "Override manual: make CROSS=aarch64-elf-"
