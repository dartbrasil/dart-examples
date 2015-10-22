import 'dart:io';

main(){
    print("Insira um número: ");
    int nmr = int.parse(stdin.readLineSync());
    print("O dobro desse número é: ${nmr * 2}");
}