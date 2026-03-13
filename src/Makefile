CIRCLEHOME = ../third_party/circle
STDLIB_SUPPORT = 1

DEBUG ?= 0
EMULATOR_BACKEND ?= fmsx
MSXBARE_CARTA_ONLY ?= 0
MSXBARE_SIZE_OPT ?= 1
MSXBARE_BUILD_BID ?=
MSXBARE_BUILD_OWNER ?=
MSXBARE_KERNEL_MAX_SIZE ?= 0x400000
MSXBARE_FEAT_SCC ?= 1
MSXBARE_FEAT_FMPAC ?= 1
MSXBARE_FEAT_DISK_ROM ?= 1
MSXBARE_FEAT_MEGARAM ?= 1
MSXBARE_FEAT_MSX2 ?= 1
MSXBARE_FEAT_MSX2P ?= 1
MSXBARE_FEAT_LOAD_ROM ?= 1
MSXBARE_FEAT_LOAD_DISK ?= 1
MSXBARE_ONE_ROM_MODE ?= 0
MSXBARE_ONE_ROM_PATH ?=
MSXBARE_PATREON_TAG ?=
MSXBARE_BOOT_MODE_DEFAULT_ENUM ?= 0
MSXBARE_BOOT_MODE_LOCKED ?= 0

CPPFLAGS += -DMSXBARE_ENABLE_FMSX=1
CPPFLAGS += -DMSXBARE_ENABLE_DEBUG_OVERLAY=$(DEBUG)
CPPFLAGS += -DMSXBARE_REQUIRE_CPIO_BIOS=0
CPPFLAGS += -DMSXBARE_CARTA_ONLY=$(MSXBARE_CARTA_ONLY)
CPPFLAGS += -DMSXBARE_SIZE_OPT=$(MSXBARE_SIZE_OPT)
CPPFLAGS += '-DMSXBARE_BUILD_BID="$(MSXBARE_BUILD_BID)"'
CPPFLAGS += '-DMSXBARE_BUILD_OWNER="$(MSXBARE_BUILD_OWNER)"'
CPPFLAGS += -DKERNEL_MAX_SIZE=$(MSXBARE_KERNEL_MAX_SIZE)
CPPFLAGS += -DMSXBARE_FEAT_SCC=$(MSXBARE_FEAT_SCC)
CPPFLAGS += -DMSXBARE_FEAT_FMPAC=$(MSXBARE_FEAT_FMPAC)
CPPFLAGS += -DMSXBARE_FEAT_DISK_ROM=$(MSXBARE_FEAT_DISK_ROM)
CPPFLAGS += -DMSXBARE_FEAT_MEGARAM=$(MSXBARE_FEAT_MEGARAM)
CPPFLAGS += -DMSXBARE_FEAT_MSX2=$(MSXBARE_FEAT_MSX2)
CPPFLAGS += -DMSXBARE_FEAT_MSX2P=$(MSXBARE_FEAT_MSX2P)
CPPFLAGS += -DMSXBARE_FEAT_LOAD_ROM=$(MSXBARE_FEAT_LOAD_ROM)
CPPFLAGS += -DMSXBARE_FEAT_LOAD_DISK=$(MSXBARE_FEAT_LOAD_DISK)
CPPFLAGS += -DMSXBARE_ONE_ROM_MODE=$(MSXBARE_ONE_ROM_MODE)
CPPFLAGS += '-DMSXBARE_ONE_ROM_PATH="$(MSXBARE_ONE_ROM_PATH)"'
CPPFLAGS += '-DMSXBARE_PATREON_TAG="$(MSXBARE_PATREON_TAG)"'
CPPFLAGS += -DMSXBARE_BOOT_MODE_DEFAULT_ENUM=$(MSXBARE_BOOT_MODE_DEFAULT_ENUM)
CPPFLAGS += -DMSXBARE_BOOT_MODE_LOCKED=$(MSXBARE_BOOT_MODE_LOCKED)
CPPFLAGS += -include ../build/config_build.h

ifeq ($(EMULATOR_BACKEND),bluemsx)
CPPFLAGS += -DMSXBARE_EMULATOR_BACKEND_BLUEMSX=1
else ifeq ($(EMULATOR_BACKEND),fmsx)
CPPFLAGS += -DMSXBARE_EMULATOR_BACKEND_BLUEMSX=0
else
$(error EMULATOR_BACKEND invalido: $(EMULATOR_BACKEND). Use fmsx ou bluemsx)
endif

CFLAGS += -w
CXXFLAGS += -w

CFLAGS += -DFMSX_BAREMETAL_NO_START_RUN
CFLAGS += -DFMSX_BAREMETAL_SKIP_DISK_OPEN
ifeq ($(MSXBARE_CARTA_ONLY),1)
CFLAGS += -DFMSX_BAREMETAL_CARTA_ONLY
endif
CFLAGS += -DSKIP_STDIO_REDEFINES
CFLAGS += -I ./fmsx_compat -I ../third_party/fmsx -I ../third_party/fmsx/fMSX -I ../third_party/fmsx/EMULib -I ../third_party/fmsx/Z80

ifeq ($(MSXBARE_SIZE_OPT),1)
CFLAGS += -Os -ffunction-sections -fdata-sections
CXXFLAGS += -Os -ffunction-sections -fdata-sections
LDFLAGS += --gc-sections
endif

OBJS = main.o kernel.o keyboard_input.o tools/usb_hid_keyboard.o gfx_textbox.o viewport_screenshot.o combo_menu.o combo_menu_items.o media_catalog.o combo_file_browser.o combo_debug_overlay.o
OBJS += combo_locale.o combo_locale_pt.o combo_locale_en.o combo_locale_es.o
OBJS += machine_profile_catalog.o
OBJS += emulator_backend.o fmsx_backend_shim.o bluemsx_backend.o

# Rules.mk clean handles current dir globs; include nested tool objects/deps.
EXTRACLEAN += tools/*.o tools/*.d

OBJS += fmsx_runtime.o fmsx_host_stubs.o fmsx_compat_stubs.o fmsx_libc_shim.o
OBJS += fmsx_virtual_fs.o fmsx_initramfs.o
OBJS += fmsx_carts_sha_fallback.o
OBJS += fmsx_embedded_initramfs.o
OBJS += fmsx_embedded_roms.o
OBJS += fmsx_upstream_msx.o fmsx_upstream_v9938.o fmsx_upstream_z80.o
OBJS += fmsx_upstream_sound.o fmsx_upstream_sha1.o
OBJS += fmsx_upstream_fdidisk.o
OBJS += fmsx_upstream_i8255.o fmsx_local_ym2413.o fmsx_upstream_ay8910.o fmsx_local_scc.o fmsx_upstream_wd1793.o
OBJS += fmsx_upstream_opll.o fmsx_upstream_wrapnukeykt.o

LIBS = $(CIRCLEHOME)/lib/sound/libsound.a \
	   $(CIRCLEHOME)/lib/sched/libsched.a \
	   $(CIRCLEHOME)/lib/usb/libusb.a \
	   $(CIRCLEHOME)/lib/input/libinput.a \
	   $(CIRCLEHOME)/addon/SDCard/libsdcard.a \
	   $(CIRCLEHOME)/addon/fatfs/libfatfs.a \
	   $(CIRCLEHOME)/lib/fs/libfs.a \
	   $(CIRCLEHOME)/lib/libcircle.a

include $(CIRCLEHOME)/Rules.mk

$(CIRCLEHOME)/addon/SDCard/libsdcard.a:
	$(MAKE) -C $(CIRCLEHOME)/addon/SDCard

$(CIRCLEHOME)/addon/fatfs/libfatfs.a:
	$(MAKE) -C $(CIRCLEHOME)/addon/fatfs EXTRAINCLUDE=-I$(CURDIR)/fatfs_compat

-include $(DEPS)
