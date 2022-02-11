void main() {
  Dog dog1 = Dog("Bulldog", "large", "light gray", 5);
  Dog dog2 = Dog("Beagle", "large", "orange", 6);
  Dog dog3 = Dog("German Shepherd", "large", "white & orange", 6);
}

class Dog {
  String breed;
  String size;
  String color;
  int age;

  Dog(this.breed, this.size, this.color, this.age);

  eat() {}

  run() {}

  sleep() {}

  name() {}
}
