import 'dart:async';

void main()  async {
  print(getMeSomeFood());
  print(await getMeSomingBetter());
  maybeSomethingSweet().then((value) => print(value));
}

Future<String> getMeSomeFood() async {
  return "an apple";
}

Future<String> getMeSomingBetter() async {
  return "a burger";
}

Future<String> maybeSomethingSweet() async {
  return "a chocolate cake";
}
