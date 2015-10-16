part of mixins;

class Ciclista{
    String nome;
    Bicicleta bicicleta;
    
    String pedalar() => "Pedalando uma ${bicicleta.modelo} da marca ${bicicleta.marca}";
}