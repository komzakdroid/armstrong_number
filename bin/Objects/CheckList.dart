void main() {
  Student st1 = Student(1000, "Komiljon");
  Student st2 = Student(10001, "Komiljon");
  Student st3 = Student(10002, "Komiljon");
  var list = [st1, st2, st3];
  Student st4 = Student(1000, "Komiljon");
  if (list.contains(st4)) {
    print("Student Listda bor");
  } else {
    print("Student listda yoq");
  }
}

class Student {
  var id;
  var name;

  Student(this.id, this.name);

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
