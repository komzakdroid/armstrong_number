import 'dart:io';
import 'dart:math';

void main() {
  print("Enter number:");
  int n = int.parse(stdin.readLineSync()!);
  print(isPerfectSquare(n));
}

bool isPerfectSquare(int number) {
  if (number < 0) {
    return false;
  }
  int lastHexDigit = number & 0xF;
  if (lastHexDigit > 9) {
    return false;
  }
  if (lastHexDigit == 0 ||
      lastHexDigit == 1 ||
      lastHexDigit == 4 ||
      lastHexDigit == 9) {
    int t = (sqrt(number) + 0.5).floor();
    return (t * t) == number;
  }
  return false;
}
