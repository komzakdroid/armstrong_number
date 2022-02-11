void main() {
  Person p1 = Person();
  Person p2 = Person();
  p1._unique_id = 1000;
  p1._name = "John";
  p1._age = 35;
  p1._city = "Delhi";
  p1._gender = "male";
  print(p1);
  p2._unique_id = 1001;
  p2._name = "Dessy";
  p2._age = 20;
  p2._city = "Pune";
  p2._gender = "female";
  print(p2);
}

class Person {
  var _unique_id, _name, _age, _city, _gender;

  String get gender => _gender;

  set gender(String value) {
    _gender = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get unique_id => _unique_id;

  set unique_id(int value) {
    _unique_id = value;
  }

  void eat() {}

  void study() {}

  void sleep() {}

  void play() {}

  @override
  String toString() {
    return 'Person{_unique_id: $_unique_id, _name: $_name, _age: $_age, _city: $_city, _gender: $_gender}';
  }
}
