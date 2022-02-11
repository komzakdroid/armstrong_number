import 'dart:io';

typedef Finder(int n);

void main() {
  print("Enter number a:");
  var a = int.parse(stdin.readLineSync()!);
  print(calculate(a, add));
  print(calculate(a, div));
}

int calculate(int a, Finder find) {
  return find(a);
}

int add(int n) {
  int sum = 0;
  for (int i = 0; i <= n; i++) {
    sum += i;
  }
  return sum;
}

int div(int n) {
  int k = 1;
  for (int i = 1; i <= n; i++) {
    k *= i;
  }
  return k;
}
