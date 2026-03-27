#ifndef MSXBARE_CIRCLE_MSXBARE_FMSX_LOCAL_YM2413_BLUEMSX_H
#define MSXBARE_CIRCLE_MSXBARE_FMSX_LOCAL_YM2413_BLUEMSX_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

void fmsx_bluemsx_ym2413_shutdown(void);
void fmsx_bluemsx_ym2413_reset(void);
void fmsx_bluemsx_ym2413_set_sample_rate(unsigned rate);
void fmsx_bluemsx_ym2413_set_layer_gain_pct(unsigned pct);
unsigned fmsx_bluemsx_ym2413_get_layer_gain_pct(void);
void fmsx_bluemsx_ym2413_write_reg(uint8_t reg, uint8_t value);
void fmsx_bluemsx_ym2413_rebuild_from_regs(const uint8_t regs[64]);
void fmsx_bluemsx_ym2413_render(int *dst, unsigned samples, int mix_enabled);

#ifdef __cplusplus
}
#endif

#endif /* MSXBARE_CIRCLE_MSXBARE_FMSX_LOCAL_YM2413_BLUEMSX_H */
