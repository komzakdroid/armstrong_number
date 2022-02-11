void main() {}

class Shape {
  var _area;

  get area => _area;
}

class Rectangle extends Shape{
  var length,width;

  @override
  get _area => super._area;
}

class Circle extends Shape{
  var radius;

  @override
  get _area => super._area;
}
