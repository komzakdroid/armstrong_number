import 'dart:io';

void main() {
  print("Enter number:");
  int n = int.parse(stdin.readLineSync()!);
  PerrinNumber number = PerrinNumber(n);
  int answer = number.sumPerrins(n);

  print(answer);
}

class PerrinNumber {
  int n;

  PerrinNumber(this.n);

  int sumPerrins(int n) {
    int a = 3, b = 0, c = 2;
    int m = 0;
    if (n == 0) return a;
    if (n == 1) return b;
    if (n == 2) return c;

    while (n > 2) {
      m = a + b;
      a = b;
      b = c;
      c = m;
      n--;
    }
    return m;
  }
}
