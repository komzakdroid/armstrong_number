void main() {
  Square square = Square(20.0);
  print(square.area());
  Circle circle = Circle(5.0);
  print(circle.area());
}

abstract class Shape {
  double area();
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double area() {
    return side * side;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return radius * radius * 3.14;
  }
}
