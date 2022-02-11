import 'dart:convert';

void main() {
  String json = '{"name":"Sherzod","age":20}';
  Map<String, dynamic> map = jsonDecode(json);
  Person person = Person.fromJson(map);

  print(person.name);
  print(person.age);

  Map<String, dynamic> map2 = person.toJson();
  print(map2);
}

class Person {
  var name, age;

  Person(this.name, this.age);

  Person.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

/* @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }*/
}
