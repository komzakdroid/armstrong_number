void main() {}

class Circle {
  double radius;

  Circle(this.radius);

  double getPerimeter() => 2 * 3.15 * radius;

  double getArea() => 3.14 * radius * radius;
}

class GeometricObject implements Circle {
  @override
  double getArea() => 3.14 * radius * radius;

  @override
  double getPerimeter() => 2 * 3.14 * radius;

  @override
  late double radius;
}

class Resizable {
  void resize(int percent) {}
}

class ResizableCircle extends Circle implements Resizable {
  ResizableCircle(double radius) : super(radius);

  @override
  double resize(int percent) => radius * percent + radius;
}
