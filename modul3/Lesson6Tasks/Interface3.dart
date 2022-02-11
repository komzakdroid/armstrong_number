void main() {
  Manager manager = Manager();
  manager.showEmpInfo();
}

class Employee {
  void showEmpInfo() {
    print("I am developer");
  }
}

class Manager implements Employee {
  @override
  void showEmpInfo() {
    print("I am manager");
  }
}
