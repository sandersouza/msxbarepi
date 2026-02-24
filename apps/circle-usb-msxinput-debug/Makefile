# Circle USB HID -> MSX input bridge debug (standalone)
CIRCLEHOME = ../../third_party/circle

OBJS = main.o kernel.o bridge_shared.o

all: kernel8.img

LIBS = $(CIRCLEHOME)/lib/usb/libusb.a \
       $(CIRCLEHOME)/lib/input/libinput.a \
       $(CIRCLEHOME)/lib/fs/libfs.a \
       $(CIRCLEHOME)/lib/libcircle.a

EXTRAINCLUDE += -I../../include

include $(CIRCLEHOME)/Rules.mk

-include $(DEPS)
