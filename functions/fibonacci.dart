int fibonacci(int n) {
  return n < 2 ? n : (fibonacci(n - 1) + fibonacci(n - 2));
}

void main(List<String> args) {
  int i = int.parse(args[0]);
  print('fibonacci($i) = ${fibonacci(i)}');
}