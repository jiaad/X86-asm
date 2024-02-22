#include <assert.h>
#include <stdio.h>

extern int bitcount(unsigned int);

int main(void) {
  int a = bitcount(2);
  printf("%d\n", a);

  assert(bitcount(0) == 0);
  assert(bitcount(5) == 2);
  assert(bitcount(10) == 2);
  assert(bitcount(20) == 2);
  assert(bitcount(10) == 2);
  assert(bitcount(1073741824) == 1);
  assert(bitcount(4294967295) == 32);
  assert(bitcount(1431655765) == 16);
  printf("OK\n");
  return 0;
}
