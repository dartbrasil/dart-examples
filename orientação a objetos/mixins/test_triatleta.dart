library mixins;

import 'dart:io';

part 'Bicicleta.dart';
part 'Nadador.dart';
part 'Corredor.dart';
part 'Ciclista.dart';
part 'Triatleta.dart';

main(){
    var tri = new Triatleta();
    var bike = new Bicicleta("Caloi", "10");
    tri..nome = "Triatleta";
    tri..bicicleta = bike;
    // tri..Animal..tipo = "Cachorro";
    // tri.animal.raca = "Doberman";
    print(tri.pedalar());
    print(tri.correr());
    print(tri.nadar());
}