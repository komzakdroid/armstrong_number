void main() {
  Student student = Student();
  student
    ..func1()
    ..func2();
}

class Student {
  var name = "Sherzod";

  void func1() {
    print("Func1");
  }

  void func2() {
    print("Func2");
  }
}
