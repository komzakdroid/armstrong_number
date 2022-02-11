import 'dart:core';

import 'Cascade.dart';

void main() {
  Student st1 = Student(1000, "Komiljon");
  Student st2 = Student(1001, "Zokirov");
  Student st3 = Student(1001, "Zokirov");

  if (st2.compareTo(st3) == 0) {
    print("Studentlar bir xil");
  } else {
    print("Studentlar har xil");
  }
}

class Student implements Comparable<Student> {
  var id;
  var name;

  Student(this.id, this.name);

  int compareTo(Student other) {
    return id - other.id;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Student &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
  