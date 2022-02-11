void main() {}

class Animal {
  int legs;

  Animal(this.legs);

  void walk() {}

  void eat() {}
}

class Pet {
  late String _name;

  String getName() => _name;

  void setName(String value) {
    _name = value;
  }

  void play() {}
}

class Spider extends Animal {
  Spider(int legs) : super(legs);

  @override
  void eat() {
    print("Spider can eat!");
  }
}

class Cat extends Animal implements Pet {
  @override
  late String _name;

  @override
  late String name;

  Cat(int legs) : super(legs);

  @override
  String getName() {
    return _name;
  }

  @override
  void setName(String value) {
    print("Cat's name is $value");
  }

  @override
  void play() {}

  @override
  void eat() {
    print("Cat can eat");
  }
}

class Fish implements Pet {
  @override
  String _name;

  Fish(this._name);

  @override
  String getName() {
    return _name;
  }

  @override
  void setName(String value) {
    print("Fish's name is $value");
  }

  @override
  void play() {}

  void walk() {}

  void eat() {}
}
