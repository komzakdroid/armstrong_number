void main() {
  PertolCar pertolCar = PertolCar();
  pertolCar.switchMode();

  ElectricCar electricCar = ElectricCar();
  electricCar.switchMode();
}

abstract class HybridCar {
  var runningMode;

  void switchMode();
}

class PertolCar extends HybridCar {
  @override
  void switchMode() {
    print("Petrol Car");
  }
}

class ElectricCar extends HybridCar {
  @override
  void switchMode() {
    print("Electr Car");
  }
}
