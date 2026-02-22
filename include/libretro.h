#ifndef LIBRETRO_H
#define LIBRETRO_H

typedef void (*retro_log_printf_t)(int level, const char *fmt, ...);

enum {
  RETRO_LOG_DEBUG = 0,
  RETRO_LOG_INFO = 1,
  RETRO_LOG_WARN = 2,
  RETRO_LOG_ERROR = 3
};

#endif
