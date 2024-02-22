#include <stdio.h>

int adder2(int a) { return a + 2; }

int main(void) {
  int x = 40;
  x = adder2(x);
  printf("x is: %d\n", x);
  return 0;
}

/*
 * the terms greater and less instruct the CPU to interpret the numerical
 * comparison as a signed value, whereas above and below indicate that the
 * numerical comparison is unsigned.
 * */
