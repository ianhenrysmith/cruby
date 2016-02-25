#include <stdlib.h>
#include <math.h>

unsigned long long int ffi_pow(unsigned long long int a, unsigned long long int n) {
  return pow(a, n);
}

unsigned long long int ffi_factorial(unsigned long long int max) {
  unsigned long long int i=max, result=1;
  while (i >= 2) { result *= i--; }
  return result;
}

unsigned long long int ffi_fibonacci(unsigned long long int n) {
  unsigned long long int a = 1, b = 1, c, i;
  if (n == 0) {
    return 0;
  }
  for (i = 3; i <= n; i++) {
    c = a + b;
    a = b;
    b = c;
  }
  return b;
}

// compilation:
// gcc -c -fPIC #{lib_path}/ffi_test.c -o #{lib_path}/ffi_test.o
// gcc -shared -o #{lib_path}/ffi_test.so #{lib_path}/ffi_test.o