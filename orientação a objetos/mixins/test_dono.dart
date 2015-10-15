library mixins;

import 'dart:io';

part 'Animal.dart';
part 'Dono.dart';
part 'Pessoa.dart';

main(){
    var dono = new Dono();
    dono..nome = "Pessoa";
    dono..Animal..tipo = "Cachorro";
    // dono.animal.raca = "Doberman";
    print(dono.nome);
}