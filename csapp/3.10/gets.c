#include <stdio.h>
#include <unistd.h>

void putt(char *buf) {
  while (*buf) {
    // putchar(*buf++);
    write(0, buf++, 1);
  }
}
char *getss(char *buf) {
  // will read from STDIN
  // store into a small buf
  char *dest = buf;
  int c;
  while ((c = getchar()) != '\n' && c != EOF) {
    *dest++ = c;
  }
  // if no chars
  if (c == EOF && buf == dest) {
    return NULL;
  }
  *dest++ = '\0';
  return buf;
}

int main(void) {
  char buf[10];
  // printf("%s -- \n", getss(buf));
  putt(getss(buf));
  char *a = "jiad";
  printf("%c \n", *a);

  return 0;
}

/* sep = 1306
 * oct = 744
 * nov 1904
 * dec 924
 */
