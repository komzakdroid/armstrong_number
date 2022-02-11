void main() {
  Student student = Student("Komiljon");
  student.myAlien();
  student.myMajor();
}

class Person {
  void myAlien() {}
}

class Major {
  void myMajor() {}
}

class Student implements Person, Major {
  String name;

  Student(this.name);

  @override
  void myAlien() {
    print("$name has alien card");
  }

  @override
  void myMajor() {
    print("$name is developer");
  }
}
