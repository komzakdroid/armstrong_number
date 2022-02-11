void main() {
  Child child = Child();
  child.onPrint(12);
}

class Parent {
  void onPrint(int a) {
    print("Value of a $a");
  }
}

class Child extends Parent {
  @override
  void onPrint(int b) {
    print("Valuae of b $b");
    super.onPrint(b);
  }
}
