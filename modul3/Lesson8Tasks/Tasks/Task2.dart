void main() {
  Figure circle = Circle("point", 3);
  print(circle.perimetr());
  print(circle.area());
  Figure square = Square("point", 4);
  print(square.perimetr());
  print(square.area());
}

abstract class Figure {
  var _color;

  void getColor() => _color;

  void setColor(value) {
    _color = value;
  }

  double perimetr();

  double area();
}

class Circle extends Figure {
  var point;
  late double radius;

  Circle(this.point, this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  double perimetr() {
    return 2 * 3.14 * radius;
  }

  void expand(double scaleFactor) {}
}

class Square extends Figure {
  var point;
  late double sideLength;

  Square(this.point, this.sideLength);

  @override
  double area() {
    return sideLength * sideLength;
  }

  @override
  double perimetr() {
    return 4 * sideLength;
  }
}
