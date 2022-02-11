void main() {
  Dog dog1 = Dog("tuffy", 5);
  Dog dog2 = Dog("tuffy", 5);

  if (dog1.compareTo(dog2) == 0) {
    print("Kuchuklar teng!");
  } else {
    print("Kuchuklar teng emas!");
  }
}

class Dog implements Comparable<Dog> {
  String name;
  int age;

  Dog(this.name, this.age);

  @override
  int compareTo(Dog other) {
    return (age - other.age) - (name.compareTo(other.name));
  }
}
