class Vehicle {
  void fuelAmount() {
    print("fuelAmount");
  }

  void capacity() {
    print("capacity");
  }

  void applyBrakes() {
    print("applyBrakes");
  }
}

void main() {
  Bus bus = Bus();
  bus.applyBrakes();

  Car car = Car();
  car.applyBrakes();

  Truck truck = Truck();
  truck.applyBrakes();
}

class Bus extends Vehicle {}

class Car extends Vehicle {}

class Truck extends Vehicle {}
