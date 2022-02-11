void main() {
  Manager mng = Manager();
  mng.showEmpInfo();

  Engineer eng = Engineer();
  eng.showEmpInfo();
}

abstract class Employee {
  void showEmpInfo();
}

class Manager extends Employee {
  @override
  void showEmpInfo() {
    print("I am a manager");
  }
}

class Engineer extends Employee {
  @override
  void showEmpInfo() {
    print("I am an engineer");
  }
}
