void main() {
  Student student = Student();
  student.walk();
  student.talk();
}

abstract class Person {
  void walk();

  void talk();
}

class Student extends Person {
  @override
  void talk() {
    print("Student can walk");
  }

  @override
  void walk() {
    print("Student can talk");
  }
}
