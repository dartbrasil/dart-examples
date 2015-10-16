part of mixins;

class Ciclista{
    Bicicleta bicicleta;
    
    String pedalar() => "Pedalando uma ${bicicleta.modelo} da marca ${bicicleta.marca}";
}