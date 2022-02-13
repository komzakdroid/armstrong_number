import 'dart:io';

void main() {
  print("Enter number:");
  int n = int.parse(stdin.readLineSync()!);
  print(isPerfectSquare(n));
}

bool isPerfectSquare(int n) {
  if (n < 0) {
    return false;
  }
  for (int i = 1; i * i <= n; i++) {
    if ((n % i == 0) && (n / i == i)) {
      return true;
    }
  }
  return false;
}
