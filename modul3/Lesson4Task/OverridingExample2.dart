void main() {
  Child child = Child();
  child.onClick(12);
  child.onPress(20);
}

class Parent {
  void onClick(int a1) {
    print("Parent $a1");
  }

  void onPress(int a2) {
    print("Parent $a2");
  }
}

class Child extends Parent {
  @override
  void onClick(int b1) {
    print("Child $b1");
  }

  @override
  void onPress(int b2) {
    print("Child $b2");
  }
}
