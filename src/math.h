#ifndef MSXBARE_FREESTANDING_MATH_H
#define MSXBARE_FREESTANDING_MATH_H

#ifdef __cplusplus
extern "C" {
#endif

double fabs(double x);
double floor(double x);
double ceil(double x);
double sqrt(double x);
double sin(double x);
double log(double x);
double log10(double x);
double pow(double base, double exponent);

#ifdef __cplusplus
}
#endif

#endif
