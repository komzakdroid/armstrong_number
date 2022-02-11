void main() {
  C c = C();
  c.doA();
  c.doB();
}

mixin A {
  doA() {
    print("Mixin A");
  }
}
mixin B {
  doB() {
    print("Mixin B");
  }
}

class C with A, B {
  @override
  doA() {
    print("Class C");
  }
}
