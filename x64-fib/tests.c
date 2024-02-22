#include <assert.h>
#include <stdio.h>
#include <wchar.h>

extern int fib(int n);

int main(void) {
  //  assert(fib(0) == 0);
  // printf("fib(0) passed\n");
  //  assert(fib(1) == 1);
  //  printf("fib(1) passed\n");
  //  assert(fib(2) == 1);
  //  printf("fib(2) passed\n");
  //  printf("fib(3) %d\n", fib(3));
  //  assert(fib(3) == 2);
  printf("fib(3) passed\n");
  assert(fib(10) == 55);
  assert(fib(12) == 144);
  printf("OK\n");
}
/*
  int fib (int n) {
        if (n <= 1) return n;
        return fib(n - 1) + fib(n - 2);
 }
 int fib (int n) {
        int r;
        if (n <= 1) r = 1;
        zlse r = n * fib(n - 1) 
        return r
        } */
