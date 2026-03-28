#ifndef MSXBARE_CIRCLE_MSXBARE_BLUEMSX_SAVESTATE_FORWARD_H
#define MSXBARE_CIRCLE_MSXBARE_BLUEMSX_SAVESTATE_FORWARD_H

#include "MsxTypes.h"

typedef struct SaveState SaveState;

void saveStateCreateForRead(const char *fileName);
void saveStateCreateForWrite(const char *fileName);
void saveStateDestroy(void);

SaveState *saveStateOpenForRead(const char *fileName);
SaveState *saveStateOpenForWrite(const char *fileName);
void saveStateClose(SaveState *state);

UInt32 saveStateGet(SaveState *state, const char *tagName, UInt32 defValue);
void saveStateSet(SaveState *state, const char *tagName, UInt32 value);

void saveStateGetBuffer(SaveState *state, const char *tagName, void *buffer, UInt32 length);
void saveStateSetBuffer(SaveState *state, const char *tagName, void *buffer, UInt32 length);

#endif /* MSXBARE_CIRCLE_MSXBARE_BLUEMSX_SAVESTATE_FORWARD_H */
