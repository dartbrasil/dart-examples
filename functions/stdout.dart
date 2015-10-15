import 'dart:io';

void main() {
  stdout.writeln('Saída do stdout');
  String input = stdin.readLineSync();
  print('Saída do print: $input');
}