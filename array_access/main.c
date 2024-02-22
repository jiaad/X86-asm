#include <stdio.h>
// extern int my_index(int *matrix, int rows, int cols, int rindex, int cindex);
typedef int data_t;

#define N 16
typedef int fix_matric[N][N];

extern data_t access(data_t *a, data_t num);

int main(void) {
  data_t S[10] = {1, 2, 10, 4, 5, 6, 7, 8, 9, 10};
  printf("HELLLLLO -> %p\n", (data_t *)S);
  printf("HELLLLLO 2 -> %p\n", &S);
  //
  // diffrent way to pass an ARRAY
  data_t *P = S;
  printf("%d\n", access(P, 3)); // pass it as an address

  printf("%d\n", access(&S[0], 3)); // pass it as the address of the first elem,
                                    // bcz array is contagious
  printf("%d\n", access((data_t *)S, 3));

  return 0;
}

int var_ele(long n, int A[n][n], long i, long j) { return A[i][j]; }

void fix_diag(fix_matric A, int val) {
  int i = 0;
  int *Address = &A[0][0];

  do {
    *Address = val;
    i += 68;
    Address += i;
  } while (i != 1088);
}
