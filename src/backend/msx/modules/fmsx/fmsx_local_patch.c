#include "MSX.h"
#include "Z80.h"

#include <string.h>
#include <streams/file_stream_transforms.h>

void PatchZ80(Z80 *R)
{
    static const uint8_t TapeHeader[8] = { 0x1F,0xA6,0xDE,0xBA,0xCC,0x13,0x7D,0x74 };
    uint8_t buf[8];
    long pos;
    int value;

    switch (R->PC.W - 2)
    {
    case 0x00E1: /* TAPION: open for read and find header */
        R->AF.B.l |= C_FLAG;
        if (CasStream)
        {
            pos = rftell(CasStream);
            if (pos & 7)
            {
                if (rfseek(CasStream, 8 - (pos & 7), SEEK_CUR))
                {
                    filestream_rewind(CasStream);
                    return;
                }
            }

            while (rfread(buf, 1, sizeof(buf), CasStream) == (int) sizeof(buf))
            {
                if (!memcmp(buf, TapeHeader, sizeof(buf)))
                {
                    R->AF.B.l &= ~C_FLAG;
                    return;
                }
            }
            filestream_rewind(CasStream);
        }
        return;

    case 0x00E4: /* TAPIN: read byte */
        R->AF.B.l |= C_FLAG;
        if (CasStream)
        {
            value = rfgetc(CasStream);
            if (value < 0)
            {
                filestream_rewind(CasStream);
            }
            else
            {
                R->AF.B.h = (uint8_t) value;
                R->AF.B.l &= ~C_FLAG;
            }
        }
        return;

    case 0x00E7: /* TAPIOF */
    case 0x00F0: /* TAPOOF */
    case 0x00F3: /* STMOTR */
        R->AF.B.l &= ~C_FLAG;
        return;

    case 0x00EA: /* TAPOON: write header */
        R->AF.B.l |= C_FLAG;
        if (CasStream)
        {
            pos = rftell(CasStream);
            if (pos & 7)
            {
                if (rfseek(CasStream, 8 - (pos & 7), SEEK_CUR))
                {
                    R->AF.B.l |= C_FLAG;
                    return;
                }
            }
            rfwrite(TapeHeader, 1, sizeof(TapeHeader), CasStream);
            R->AF.B.l &= ~C_FLAG;
        }
        return;

    case 0x00ED: /* TAPOUT: write byte */
        R->AF.B.l |= C_FLAG;
        if (CasStream)
        {
            rfputc(R->AF.B.h, CasStream);
            R->AF.B.l &= ~C_FLAG;
        }
        return;

    default:
        return;
    }
}
