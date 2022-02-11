void main() {
  Child child = Child();
  child.abstractMethod();
}

class Child extends Parent {
  @override
  void abstractMethod() {
    print("Abstract Method!");
  }
}

abstract class Parent {
  void abstractMethod();

  void simpleMethod() {
    print("Method2");
  }
}
