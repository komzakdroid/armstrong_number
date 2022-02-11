import 'dart:io';

typedef Actions(int a, int b);

void main() {
  print("Enter number a:");
  var a = int.parse(stdin.readLineSync()!);
  print("Enter number b:");
  var b = int.parse(stdin.readLineSync()!);

  print("EKUB: ${calculate(a, b, gcd)}");
  print("EKUB: ${calculate(a, b, lcm)}");
}

int calculate(int a, int b, Actions actions) {
  return actions(a, b);
}

int gcd(int a, int b) {
  while (b != 0) {
    var t = b;
    b = a % t;
    a = t;
  }
  return a;
}

int lcm(int a, int b) => (a * b) ~/ gcd(a, b);
