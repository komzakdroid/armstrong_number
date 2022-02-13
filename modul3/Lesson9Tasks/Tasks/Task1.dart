import 'dart:math';

void main() {
  int n = 100;

  fetchSumma(n).then((sum) => print(sum));
}

Future<double> fetchSumma(int n) async {
  double sum = 0;

  for (int i = 1; i <= n; i++) {
    print(pow(i, 2));
    sum += pow(i, 2);
  }

  return sum;
}
