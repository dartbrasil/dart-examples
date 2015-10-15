library obj;

import 'dart:math' as math;

part 'Polygon.dart';
part 'Square.dart';
part 'Triangle.dart';
part 'Circle.dart';
part 'Rectangle.dart';

main(){
    var s = new Square(5);
    print("A área do quadrado é ${s.area()}");
    
    var t = new Triangle(5, 4, 3);
    print("A área do triângulo escaleno é ${t.area_escaleno()}");
    print("A área do triângulo isósceles é ${t.area_isosceles()}");
    print("A área do triângulo equilátero é ${t.area_equilatero()}");
    
    var c = new Circle(10);
    print("A área do círculo é de: ${c.area()}");
    
    var r = new Rectangle(10, 8);
    print("A área do retângulo é de: ${r.area()}");
}