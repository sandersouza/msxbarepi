#include "Floppy.h"

#include <stdlib.h>
#include <string.h>

#define STUB_DISK_SIZE (DSK_SIDS_PER_DISK * DSK_TRKS_PER_SIDE * DSK_SECS_PER_TRCK * DSK_SECTOR_SIZE)

uint8_t *DSKCreate(uint8_t *Dsk, const char *Label) {
    (void)Label;
    uint8_t *p = Dsk ? Dsk : (uint8_t *)malloc(STUB_DISK_SIZE);
    if (p) memset(p, 0, STUB_DISK_SIZE);
    return p;
}

int DSKFile(uint8_t *Dsk, const char *FileName) {
    (void)Dsk;
    (void)FileName;
    return 0;
}

const char *DSKFileName(const uint8_t *Dsk, int ID) {
    (void)Dsk;
    (void)ID;
    return 0;
}

int DSKFileSize(const uint8_t *Dsk, int ID) {
    (void)Dsk;
    (void)ID;
    return 0;
}

int DSKWrite(uint8_t *Dsk, int ID, const uint8_t *Buf, int Size) {
    (void)Dsk;
    (void)ID;
    (void)Buf;
    (void)Size;
    return 0;
}

int DSKRead(const uint8_t *Dsk, int ID, uint8_t *Buf, int Size) {
    (void)Dsk;
    (void)ID;
    (void)Buf;
    (void)Size;
    return 0;
}

int DSKDelete(uint8_t *Dsk, int ID) {
    (void)Dsk;
    (void)ID;
    return 0;
}

uint8_t *DSKLoad(const char *Name, uint8_t *Dsk, const char *Label) {
    (void)Name;
    return DSKCreate(Dsk, Label);
}

const uint8_t *DSKSave(const char *Name, const uint8_t *Dsk) {
    (void)Name;
    return Dsk;
}
