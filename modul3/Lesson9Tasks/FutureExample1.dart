import 'dart:async';

<<<<<<< HEAD
void main()  async {
  print(getMeSomeFood());
  print(await getMeSomingBetter());
  maybeSomethingSweet().then((value) => print(value));
=======
void main() async {
  print(await getMeSomeFood());
>>>>>>> origin/master
}

Future<String> getMeSomeFood() async {
  return "an apple";
}

Future<String> getMeSomingBetter() async {
  return "a burger";
}
<<<<<<< HEAD

Future<String> maybeSomethingSweet() async {
  return "a chocolate cake";
}
=======
>>>>>>> origin/master
