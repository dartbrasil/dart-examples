part of obj;

class Square extends Polygon{
    num base;
    Square(this.base) : super();
    
    num area() => (math.pow(this.base, 2)).abs();
}