import 'dart:io';

void main() {
  double sum = 0;
  int n;

  print("1/1! + 2/2! + 3/3! + ..n/n!");
  print("Enter the no. of terms in series:");
  n = int.parse(stdin.readLineSync()!);

  SumSeries series = SumSeries(n);
  for (int i = 1; i <= n; i++) {
    sum = sum + i / (series.sumOf(i));
  }
  print("Sum of series: $sum");
}

class SumSeries {
  int n;

  SumSeries(this.n);

  int sumOf(int i) {
    int mul = 1;
    while (i > 0) {
      mul = mul * i;
      i--;
    }
    return mul;
  }
}
