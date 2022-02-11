class Animal {}

void main() {}

class Flyer {
  void fly() => print("I can fly");
}

class Swimmer {
  void swim() => print("I can swim");
}

class Bird extends Animal implements Flyer {
  @override
  void fly() => print("Bird can fly");
}

class Duck extends Animal implements Flyer, Swimmer {
  @override
  void fly() {
    print("Duck can fly");
  }

  @override
  void swim() {
    print("Duck can swim");
  }
}
