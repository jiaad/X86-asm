#include <assert.h>
#include <stdio.h>

extern int rec(int n);

int main(void) {
  printf("rec 4 - %d \n", rec(4));
  printf("rec 5 - %d \n", rec(5));
  printf("rec 6 - %d \n", rec(6));
  printf("rec 7 - %d \n", rec(7));
  printf("rec 8 - %d \n", rec(8));
  printf("rec 9 - %d \n", rec(9));
  assert(rec(0) == 1);
  assert(rec(1) == 1);
  assert(rec(2) == 2);
  assert(rec(3) == 6);
  assert(rec(5) == 120);
  printf("OK\n");
}

long rfact(long n) {
  long result;
  if (n <= 1) {
    result = 1;
  } else {
    result = n * rfact(n - 1);
  }
  return result;
}
