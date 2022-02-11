void main() {
  Child child = Child();
  child.method();
}

class Parent {
  void method() {
    print("Method in Parent");
  }
}

mixin Mixin on Parent {
  @override
  void method() {
    super.method();
    print("Method in Mixin");
  }
}

class Child extends Parent with Mixin {}
