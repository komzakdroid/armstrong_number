void main() {
  Tommy tom = Tommy();
  tom.bark();
  tom.eat();
  tom.hello();
}

abstract class Dog {
  var name;

  void bark();

  void eat();

  void hello() {
    print('$name says hello');
  }
}

class Tommy extends Dog {
  var name = "Tommy";

  @override
  void bark() {
    print("$name is barking");
  }

  @override
  void eat() {
    print("$name is eating");
  }
}
