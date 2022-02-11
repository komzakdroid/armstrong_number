void main() {
  Cat c1 = Cat(11, "Red", 2);
  Cat c2 = Cat(10, "Orange", 1);
}

class Cat {
  int size;
  String color;
  int age;

  Cat(this.size, this.color, this.age);

  void eat() {}

  void sleep() {}

  void run() {}
}
