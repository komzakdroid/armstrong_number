import 'dart:io';
import 'dart:math';

typedef trigo(var x);

void main() {
  print("Enter number:");
  var num = int.parse(stdin.readLineSync()!);
  print(sinus(num));
  print(cosinus(num));
}

trigo sinus = (x) => sin(x);
trigo cosinus = (x) => cos(x);
