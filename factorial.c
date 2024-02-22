#include <stdio.h>

extern unsigned long long int factorial(unsigned long long int n);

int main() {
    unsigned long long int result = factorial(10);
    printf("Factorial: %llu\n", result);
    return 0;
}
