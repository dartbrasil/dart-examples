part of obj;

class Triangle extends Polygon{
    num base, side, height;
    Triangle(this.base, this.side, this.height) : super();
    
    num area_escaleno() => ((this.base + this.side + this.height) / 2).abs();
    num area_isosceles() => ((this.base * this.height) / 2).abs();
    num area_equilatero() => ((math.pow(this.base, 2) / 4) / (math.sqrt(3))).abs();
}