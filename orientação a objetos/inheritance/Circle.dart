part of obj;

class Circle extends Polygon{
    num base;
    Circle(this.base) : super();
    
    int area() => (math.PI * math.pow(this.base, 2)).abs();
}