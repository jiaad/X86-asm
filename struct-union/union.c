#include <stdio.h>
#include <stdlib.h>

unsigned long double2bits(double d) {
  union {
    double d;
    unsigned long u;
  } temp;
  temp.d = d;
  return temp.u;
}

int main(void) {
  unsigned long u = double2bits(2.0);
  printf("%ld \n", u);
  return 0;
}
