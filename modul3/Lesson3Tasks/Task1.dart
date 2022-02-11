enum Quantity { more, fast, less, slow }

void main() {
  Student s1 = Student("John", 12, "Fair", "Male");
  Student s2 = Student("Sophia", 10, "Fair", "Female");
  Student s3 = Student("Lily", 11, "Dark", "Female");
  s1.drinking(s1, Quantity.more.name);
  s1.running(s1, Quantity.more.name);
  s1.eating(s1, Quantity.fast.name);
  //`````````
  s2.drinking(s2, Quantity.less.name);
  s2.running(s2, Quantity.less.name);
  s2.eating(s2, Quantity.slow.name);
  //`````````
  s3.drinking(s3, Quantity.more.name);
  s3.running(s3, Quantity.more.name);
  s3.eating(s3, Quantity.fast.name);
}

class Student {
  var name, age, color, sex;

  Student(this.name, this.age, this.color, this.sex);

  void eating(Student student, String str) {
    print("${student.name} can eat $str");
  }

  void drinking(Student student, String str) {
    print("${student.name} can drink $str");
  }

  void running(Student student, String str) {
    print("${student.name} can run $str");
  }
}
