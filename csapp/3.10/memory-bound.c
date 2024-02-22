#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern void overwrite();

char *getss(char *s) {
  int c;
  char *dest = s;
  while ((c = getchar()) != '\n' && c != EOF)
    *dest++ = c;
  if (c == EOF && dest == s) {
    return NULL;
  }
  *dest++ = '\0';
  return s;
}

void echo() {
  char buf[8]; /** too sm,akllk */
  getss(buf);
  puts(buf);
}

char *get_line() {
  char buf[4]; /** too sm,akllk */
  char *result;
  getss(buf);

  result = malloc(strlen(buf));
  strcpy(result, buf);
  return result;
}

int main() {
  // Write C code here
  //  echo();
  //  get_line();
  printf(" first Hello world \n");
  overwrite();
  printf("Hello world");

  return 0;
}
