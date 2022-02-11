void main() {
  var car = Car();
  print(car.getColor());
  print(car.getType());

  var bus = Bus();
  print(bus.getColor());
  print(bus.getType());
}

abstract class Vehicle {
  String getColor();

  String getType() {
    return "Vehicle";
  }
}

class Car extends Vehicle {
  @override
  String getColor() {
    return "Red";
  }
}

class Bus extends Vehicle {
  @override
  String getColor() {
    return "Blue";
  }

  @override
  String getType() {
    return "Bus";
  }
}
