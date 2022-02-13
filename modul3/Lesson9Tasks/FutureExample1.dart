import 'dart:async';

void main() async {
  print(await getMeSomeFood());
}

Future<String> getMeSomeFood() async {
  return "an apple";
}

Future<String> getMeSomingBetter() async {
  return "a burger";
}
