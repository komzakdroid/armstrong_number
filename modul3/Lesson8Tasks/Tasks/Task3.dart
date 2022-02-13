import 'dart:io';

void main() {
  print("Enter number:");
  int n = int.parse(stdin.readLineSync()!);
  num sum = sumOfSeries(n);
  print("Sum of Series = $sum");
}

num sumOfSeries(int n) {
  num sum = 0;
  List list = [];

  for (int i = 1; i <= 2 * n - 1; i++) {
    if (i % 2 == 1) {
      list.add(i);
    }
  }
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j <= i; j++) {
      sum += list[i - j];
    }
  }
  return sum;
}
