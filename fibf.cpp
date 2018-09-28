#include <iostream>

long fib(long n) {
  long int a = 0;
  long int b = 1;
  for (long int i = 0; i <= n; i++) {
    long int c = a;
    a += b;
    b = c;
  }
  return a;
}

int main() {
  std::cout << fib(46) << std::endl;
}
