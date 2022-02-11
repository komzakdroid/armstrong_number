void main() {
  GermanShepherd germanShepherd = GermanShepherd();
  germanShepherd._barkFrequency = 1;
  germanShepherd._eyeColor = 1;
  germanShepherd.isGerman();
  Poodle poodle = Poodle();
  poodle._barkFrequency = 2;
  poodle._eyeColor = 3;
  poodle.isFrench();
}

abstract class Mammal {
  var _eyeColor;

  int get eyeColor => _eyeColor;
}

abstract class Dog extends Mammal {
  var _barkFrequency;

  void bark();
}

abstract class Cat extends Mammal {
  var meowFrequency;

  void meow();
}

class GermanShepherd extends Dog {
  @override
  void bark() {
    print("GermanShepher Barking $_barkFrequency");
  }

  void isGerman() {
    print("German");
  }
}

class Poodle extends Dog {
  @override
  void bark() {
    print("Poodle barking $_barkFrequency");
  }

  void isFrench() {
    print("French");
  }
}
