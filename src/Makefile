CIRCLEHOME = ../third_party/circle
STDLIB_SUPPORT = 1

DEBUG ?= 0
MSXBARE_CARTA_ONLY ?= 0
MSXBARE_SIZE_OPT ?= 1
MSXBARE_BUILD_BID ?=
MSXBARE_BUILD_OWNER ?=
MSXBARE_KERNEL_MAX_SIZE ?= 0x500000
MSXBARE_FEAT_SCC ?= 1
MSXBARE_FEAT_GFX9000 ?= 1
MSXBARE_FEAT_FMPAC ?= 1
MSXBARE_FEAT_DISK_ROM ?= 1
MSXBARE_FEAT_MEGARAM ?= 1
MSXBARE_FEAT_MSX2 ?= 1
MSXBARE_FEAT_MSX2P ?= 1
MSXBARE_FEAT_LOAD_ROM ?= 1
MSXBARE_FEAT_LOAD_DISK ?= 1
MSXBARE_ONE_ROM_MODE ?= 0
MSXBARE_ONE_ROM_PATH ?=
MSXBARE_V9990_UART_TRACE ?= 0
MSXBARE_PATREON_TAG ?=
MSXBARE_BOOT_MODE_DEFAULT_ENUM ?= 0
MSXBARE_BOOT_MODE_LOCKED ?= 0
MSXBARE_EMBED_INITRAMFS ?= 1
MSXBARE_EMBED_INITRAMFS_PATH ?= ../build/initramfs/msx-embedded.cpio

CPPFLAGS += -DMSXBARE_ENABLE_FMSX=1
CPPFLAGS += -DMSXBARE_ENABLE_DEBUG_OVERLAY=$(DEBUG)
CPPFLAGS += -DMSXBARE_REQUIRE_CPIO_BIOS=0
CPPFLAGS += -DMSXBARE_CARTA_ONLY=$(MSXBARE_CARTA_ONLY)
CPPFLAGS += -DMSXBARE_SIZE_OPT=$(MSXBARE_SIZE_OPT)
CPPFLAGS += '-DMSXBARE_BUILD_BID="$(MSXBARE_BUILD_BID)"'
CPPFLAGS += '-DMSXBARE_BUILD_OWNER="$(MSXBARE_BUILD_OWNER)"'
CPPFLAGS += -DKERNEL_MAX_SIZE=$(MSXBARE_KERNEL_MAX_SIZE)
CPPFLAGS += -DMSXBARE_FEAT_SCC=$(MSXBARE_FEAT_SCC)
CPPFLAGS += -DMSXBARE_FEAT_GFX9000=$(MSXBARE_FEAT_GFX9000)
CPPFLAGS += -DMSXBARE_FEAT_FMPAC=$(MSXBARE_FEAT_FMPAC)
CPPFLAGS += -DMSXBARE_FEAT_DISK_ROM=$(MSXBARE_FEAT_DISK_ROM)
CPPFLAGS += -DMSXBARE_FEAT_MEGARAM=$(MSXBARE_FEAT_MEGARAM)
CPPFLAGS += -DMSXBARE_FEAT_MSX2=$(MSXBARE_FEAT_MSX2)
CPPFLAGS += -DMSXBARE_FEAT_MSX2P=$(MSXBARE_FEAT_MSX2P)
CPPFLAGS += -DMSXBARE_FEAT_LOAD_ROM=$(MSXBARE_FEAT_LOAD_ROM)
CPPFLAGS += -DMSXBARE_FEAT_LOAD_DISK=$(MSXBARE_FEAT_LOAD_DISK)
CPPFLAGS += -DMSXBARE_ONE_ROM_MODE=$(MSXBARE_ONE_ROM_MODE)
CPPFLAGS += '-DMSXBARE_ONE_ROM_PATH="$(MSXBARE_ONE_ROM_PATH)"'
CPPFLAGS += -DMSXBARE_V9990_UART_TRACE=$(MSXBARE_V9990_UART_TRACE)
CPPFLAGS += '-DMSXBARE_PATREON_TAG="$(MSXBARE_PATREON_TAG)"'
CPPFLAGS += -DMSXBARE_BOOT_MODE_DEFAULT_ENUM=$(MSXBARE_BOOT_MODE_DEFAULT_ENUM)
CPPFLAGS += -DMSXBARE_BOOT_MODE_LOCKED=$(MSXBARE_BOOT_MODE_LOCKED)
CPPFLAGS += -DMSXBARE_EMBED_INITRAMFS=$(MSXBARE_EMBED_INITRAMFS)
CPPFLAGS += '-DMSXBARE_EMBED_INITRAMFS_PATH="$(MSXBARE_EMBED_INITRAMFS_PATH)"'
CPPFLAGS += -include ../build/config_build.h
DEFINE += -DMSXBARE_EMBED_INITRAMFS=$(MSXBARE_EMBED_INITRAMFS)
DEFINE += '-DMSXBARE_EMBED_INITRAMFS_PATH="$(MSXBARE_EMBED_INITRAMFS_PATH)"'

CFLAGS += -w
CXXFLAGS += -w
CFLAGS += -DMSXBARE_ENABLE_DEBUG_OVERLAY=$(DEBUG)
CFLAGS += -DMSXBARE_V9990_UART_TRACE=$(MSXBARE_V9990_UART_TRACE)

CFLAGS += -DFMSX_BAREMETAL_NO_START_RUN
CFLAGS += -DFMSX_BAREMETAL_SKIP_DISK_OPEN
CFLAGS += -DPATCH_Z80
ifeq ($(MSXBARE_CARTA_ONLY),1)
CFLAGS += -DFMSX_BAREMETAL_CARTA_ONLY
endif
CFLAGS += -DSKIP_STDIO_REDEFINES
BLUEMSX_INCLUDE_DIRS := -I../third_party/bluemsx/blueMSX/Src/Common -I../third_party/bluemsx/blueMSX/Src/Utils -I../third_party/bluemsx/blueMSX/Src/SoundChips
MSX_BACKEND_DIR := backend/msx
FMSX_MODULE_DIR := $(MSX_BACKEND_DIR)/modules/fmsx
FMSX_INCLUDE_DIRS := -I./$(MSX_BACKEND_DIR) -I./$(FMSX_MODULE_DIR) -I./$(FMSX_MODULE_DIR)/fmsx_compat -I../third_party/fmsx -I../third_party/fmsx/fMSX -I../third_party/fmsx/EMULib -I../third_party/fmsx/Z80 -I../third_party/fmsx/NukeYKT -I../third_party/fmsx/libretro-common/compat -I../third_party/fmsx/libretro-common/encodings -I../third_party/fmsx/libretro-common/streams -I../third_party/fmsx/libretro-common/string
LOCAL_INCLUDE_DIRS := -I. -I./tools/locale -I./tools/debug -I./tools/menu -I./tools/file_browser -I./tools/render -I./tools/input -I./tools/media -I./tools
CPPFLAGS += $(FMSX_INCLUDE_DIRS)
CPPFLAGS += $(BLUEMSX_INCLUDE_DIRS)
CPPFLAGS += $(LOCAL_INCLUDE_DIRS)
CFLAGS += $(FMSX_INCLUDE_DIRS)
CFLAGS += $(LOCAL_INCLUDE_DIRS)
CFLAGS += $(BLUEMSX_INCLUDE_DIRS)
CXXFLAGS += $(BLUEMSX_INCLUDE_DIRS)
CXXFLAGS += $(FMSX_INCLUDE_DIRS)
CXXFLAGS += $(LOCAL_INCLUDE_DIRS)

ifeq ($(MSXBARE_SIZE_OPT),1)
CFLAGS += -Os -ffunction-sections -fdata-sections
CXXFLAGS += -Os -ffunction-sections -fdata-sections
LDFLAGS += --gc-sections
endif

OBJS = main.o kernel.o combo_screen_device.o tools/input/keyboard_input.o tools/input/usb_hid_input_queue.o tools/usb_hid_gamepad.o tools/usb_hid_keyboard.o tools/render/gfx_textbox.o tools/render/viewport_screenshot.o tools/menu/combo_menu.o tools/menu/combo_menu_items.o tools/media/media_catalog.o tools/file_browser/combo_file_browser.o
ifeq ($(DEBUG),1)
OBJS += tools/debug/combo_debug_overlay.o
endif
OBJS += tools/locale/combo_locale.o tools/locale/combo_locale_pt.o tools/locale/combo_locale_en.o tools/locale/combo_locale_es.o
OBJS += backend/msx/backend.o
OBJS += backend/msx/gamemaster_catalog.o backend/msx/machine_profile_catalog.o
OBJS += backend/msx/modules/fmsx/module.o

# Rules.mk clean handles current dir globs; include nested tool objects/deps.
EXTRACLEAN += tools/*.o tools/*.d tools/*/*.o tools/*/*.d
EXTRACLEAN += backend/*.o backend/*.d backend/*/*.o backend/*/*.d backend/*/*/*.o backend/*/*/*.d backend/*/*/*/*.o backend/*/*/*/*.d

FMSX_RUNTIME_OBJS = $(FMSX_MODULE_DIR)/fmsx_runtime.o $(FMSX_MODULE_DIR)/fmsx_host_stubs.o $(FMSX_MODULE_DIR)/fmsx_compat_stubs.o $(FMSX_MODULE_DIR)/fmsx_libc_shim.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_math_shim.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_local_patch.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/bluemsx_savestate_stubs.o $(FMSX_MODULE_DIR)/fmsx_upstream_bluemsx_openym2413_2.o $(FMSX_MODULE_DIR)/fmsx_local_ym2413_bluemsx.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_virtual_fs.o $(FMSX_MODULE_DIR)/fmsx_initramfs.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_carts_sha_fallback.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_v9990.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_embedded_initramfs.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_embedded_roms.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_upstream_msx.o $(FMSX_MODULE_DIR)/fmsx_upstream_v9938.o $(FMSX_MODULE_DIR)/fmsx_upstream_z80.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_local_sound.o $(FMSX_MODULE_DIR)/fmsx_upstream_sha1.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_upstream_fdidisk.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_upstream_i8255.o $(FMSX_MODULE_DIR)/fmsx_local_ym2413.o $(FMSX_MODULE_DIR)/fmsx_upstream_ay8910.o $(FMSX_MODULE_DIR)/fmsx_local_scc.o $(FMSX_MODULE_DIR)/fmsx_upstream_wd1793.o
FMSX_RUNTIME_OBJS += $(FMSX_MODULE_DIR)/fmsx_upstream_opll.o $(FMSX_MODULE_DIR)/fmsx_upstream_wrapnukeykt.o

OBJS += $(FMSX_RUNTIME_OBJS)

BACKEND_MODULE_FMSX_OBJS = $(FMSX_MODULE_DIR)/loadable_manifest.o $(FMSX_MODULE_DIR)/module.o
BACKEND_MODULE_FMSX_OBJS += backend/msx/gamemaster_catalog.o backend/msx/machine_profile_catalog.o
BACKEND_MODULE_FMSX_OBJS += $(FMSX_RUNTIME_OBJS)

LIBS = $(CIRCLEHOME)/lib/sound/libsound.a \
	   $(CIRCLEHOME)/lib/sched/libsched.a \
	   $(CIRCLEHOME)/lib/usb/libusb.a \
	   $(CIRCLEHOME)/lib/input/libinput.a \
	   $(CIRCLEHOME)/addon/SDCard/libsdcard.a \
	   $(CIRCLEHOME)/addon/fatfs/libfatfs.a \
	   $(CIRCLEHOME)/lib/fs/libfs.a \
	   $(CIRCLEHOME)/lib/libcircle.a

include $(CIRCLEHOME)/Rules.mk

ifeq ($(MSXBARE_EMBED_INITRAMFS),1)
$(FMSX_MODULE_DIR)/fmsx_embedded_initramfs.o: $(MSXBARE_EMBED_INITRAMFS_PATH)
endif

$(CIRCLEHOME)/addon/SDCard/libsdcard.a:
	$(MAKE) -C $(CIRCLEHOME)/addon/SDCard PREFIX64=$(PREFIX64)

$(CIRCLEHOME)/addon/fatfs/libfatfs.a:
	$(MAKE) -C $(CIRCLEHOME)/addon/fatfs PREFIX64=$(PREFIX64) EXTRAINCLUDE=-I$(CURDIR)/fatfs_compat

.PHONY: backend-module

backend-module: $(BACKEND_MODULE_FMSX_OBJS)
	@mkdir -p ../artifacts/backend/msx
	$(LD) -r -o ../artifacts/backend/msx/msx.fmsx.mod.elf $(BACKEND_MODULE_FMSX_OBJS)

-include $(DEPS)
