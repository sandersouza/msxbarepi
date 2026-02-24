#ifndef CIRCLE_INPUT_PROVIDER_H
#define CIRCLE_INPUT_PROVIDER_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    unsigned ready;
    unsigned failed;
    unsigned kbd_bound;
    unsigned poll_count;
    unsigned stage_code;
} circle_input_provider_debug_t;

void circle_input_provider_init(void);
void circle_input_provider_poll(void);
int circle_input_provider_is_ready(void);
void circle_input_provider_get_debug(circle_input_provider_debug_t *out_dbg);
unsigned circle_input_provider_debug_ready(void);
unsigned circle_input_provider_debug_failed(void);
unsigned circle_input_provider_debug_kbd_bound(void);
unsigned circle_input_provider_debug_polls(void);
unsigned circle_input_provider_debug_stage(void);

#ifdef __cplusplus
}
#endif

#endif
