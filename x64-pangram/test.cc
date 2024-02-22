#include <stdio.h>

extern int pangram(char *str);

int main(void) {
  char *c = "hello";
  printf("--  %c  ---\n", pangram("h(llp"));
  return 0;
}
