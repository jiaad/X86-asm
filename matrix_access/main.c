#include <assert.h>
#include <stdio.h>

extern int my_index(int *matrix, int rows, int cols, int rindex, int cindex);
int main(void) {
  int matrix1[1][4] = {{1, 2, 3, 4}};
  // int matrix1[2][4] = {{1, 2, 3, 4}, {10, 11, 12, 13}};
  printf("%d\n", 12);
  // printf("%d\n", my_index((int *)matrix1, 1, 4, 0, 2));
  printf("=== %d\n", my_index((int *)matrix1, 1, 4, 0, 2));
  assert(my_index((int *)matrix1, 1, 4, 0, 2) == 3);

  int matrix2[4][1] = {{1}, {2}, {3}, {4}};
  assert(my_index((int *)matrix2, 4, 1, 1, 0) == 2);

  int matrix3[2][3] = {{1, 2, 3}, {4, 5, 6}};
  assert(my_index((int *)matrix3, 2, 3, 1, 2) == 6);
  printf("OK\n");

  return 0;
}
/* [
 *   [ 1, 2, 3]  --- r 4 col 3
 *   [ 4, 5, 6] r 1 c 1
 *   [ 7, 8, 9]
 *   [10, 11, 12]
 * ]
 *
 *  4 * 3 = 12
 * */
