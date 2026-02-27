#include "input_stub.h"

void input_stub_init(input_stub_state_t *state)
{
    state->polls = 0;
    state->heartbeat = 0;
}

void input_stub_poll(input_stub_state_t *state)
{
    ++state->polls;
    if ((state->polls % 60u) == 0u) {
        ++state->heartbeat;
    }
}