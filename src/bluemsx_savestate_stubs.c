#include "SaveState.h"

#include <string.h>

struct SaveState
{
    unsigned dummy;
};

static SaveState g_BlueMsxDummySaveState;

void saveStateCreateForRead(const char *fileName)
{
    (void) fileName;
}

void saveStateCreateForWrite(const char *fileName)
{
    (void) fileName;
}

void saveStateDestroy(void)
{
}

SaveState *saveStateOpenForRead(const char *fileName)
{
    (void) fileName;
    return &g_BlueMsxDummySaveState;
}

SaveState *saveStateOpenForWrite(const char *fileName)
{
    (void) fileName;
    return &g_BlueMsxDummySaveState;
}

void saveStateClose(SaveState *state)
{
    (void) state;
}

UInt32 saveStateGet(SaveState *state, const char *tagName, UInt32 defValue)
{
    (void) state;
    (void) tagName;
    return defValue;
}

void saveStateSet(SaveState *state, const char *tagName, UInt32 value)
{
    (void) state;
    (void) tagName;
    (void) value;
}

void saveStateGetBuffer(SaveState *state, const char *tagName, void *buffer, UInt32 length)
{
    (void) state;
    (void) tagName;
    if (buffer != 0 && length != 0u)
    {
        memset(buffer, 0, (size_t) length);
    }
}

void saveStateSetBuffer(SaveState *state, const char *tagName, void *buffer, UInt32 length)
{
    (void) state;
    (void) tagName;
    (void) buffer;
    (void) length;
}
