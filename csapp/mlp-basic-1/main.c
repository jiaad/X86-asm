#include <stdio.h>

void multstore(long, long, long *);


long mult2(long x, long y){
	long s = x * y;
	return s;
}
int main() {
    long d;
    multstore(2, 3, &d);
    printf("2*3 --> %ld", d);
    return 0;
}
