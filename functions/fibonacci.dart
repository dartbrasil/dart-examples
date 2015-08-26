import 'dart:io';

main() {
    print(fib(int.parse(Platform.executableArguments[0]) - 1));
}

int fib (int n) {
   if (n < 2) return n;
   return fib(n - 1) + fib(n - 2);
}