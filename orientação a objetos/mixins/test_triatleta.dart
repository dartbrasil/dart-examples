library mixins;

import 'dart:io';

part 'Bicicleta.dart';
part 'Nadador.dart';
part 'Corredor.dart';
part 'Ciclista.dart';
part 'Triatleta.dart';

main(){
    var tri = new Triatleta();
    var ciclista = new Ciclista();
    var bike1 = new Bicicleta("Caloi", "10");
    var bike2 = new Bicicleta("Monark", "Barra Forte");
  
    tri..nome = "Triatleta";
    tri..bicicleta = bike1;
    ciclista..nome = "Pedalante";
    ciclista..bicicleta = bike2;
  
    print(tri.pedalar());
    print(tri.correr());
    print(tri.nadar());
    print(ciclista.pedalar());
}