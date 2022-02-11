void main() {
  Employee emp = Employee();
  emp.name = "Komiljon";
  emp.age = "25";
  emp.prof = "Developer";
  emp.salary = "1000000";

  emp.showName();
  emp.showAge();
  emp.showProfession();
  emp.showSalary();
}

class Person {
  var name;
  var age;

  void showName() {}

  void showAge() {}
}

class Profession {
  var prof;
  var salary;

  void showProfession() {}

  void showSalary() {}
}

class Employee implements Person, Profession {
  @override
  var age;

  @override
  var name;

  @override
  var prof;

  @override
  var salary;

  @override
  void showAge() {
    print("My name is $age");
  }

  @override
  void showName() {
    print("My name is $name");
  }

  @override
  void showProfession() {
    print("My name is $prof");
  }

  @override
  void showSalary() {
    print("My name is $salary");
  }
}
