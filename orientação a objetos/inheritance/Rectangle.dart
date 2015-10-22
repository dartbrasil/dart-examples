part of obj;

class Rectangle extends Polygon{
    num base, height;
    Rectangle(this.base, this.height) : super();
    
    num area() => (this.base * this.height).abs();
}