void swap(long *xp, long *yp) {
  long t0 = *xp;
  long t1 = *yp;

  *xp = t1;
  *yp = t1;
}

long plus(long x, long y) { return x + y; }

void sumstore(long x, long y, long *dest) {
  long t = plus(x, y);
  *dest = t;
}

int main(int argc, char *argv[]) {
  long x = atoi(argv[1]);
  long y = atoi(argv[2]);

  long z;

  sumstore(x, y, &z);
  printf("%ld + %ld --> %ld", x, y, z);
  return 0;
}
