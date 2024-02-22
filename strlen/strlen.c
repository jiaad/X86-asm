#include <stdio.h>
extern int my_strlen(char *);

int main(void) {
  int num = my_strlen("jiad");
  printf("length -> %d\n", num);
  return 0;
}
