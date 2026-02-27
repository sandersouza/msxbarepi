#ifndef MSXBARE_FMSX_STDLIB_H
#define MSXBARE_FMSX_STDLIB_H

#include <stddef.h>

#define RAND_MAX 2147483647

void *malloc(size_t size);
void free(void *ptr);
void *calloc(size_t nmemb, size_t size);
void *realloc(void *ptr, size_t size);
int atoi(const char *nptr);
long atol(const char *nptr);
int abs(int x);
long labs(long x);
int rand(void);
void srand(unsigned int seed);
char *getenv(const char *name);
void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *));
void *bsearch(const void *key, const void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *));

#endif
