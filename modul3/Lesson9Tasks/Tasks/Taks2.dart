void main() async {
  int n = 10000;
  int evens = await sumOfEvens(n);
  print(evens);
  int odds = await sumOfOdds(n);
  print(odds);
}

Future<int> sumOfEvens(int n) async {
  int sum = 0;
  for (int i = 0; i < n; i++) {
    if (i % 2 == 0) {
      sum += i;
    }
  }
  return sum;
}

Future<int> sumOfOdds(int n) async {
  int sum = 0;
  for (int i = 0; i < n; i++) {
    if (i % 2 == 1) {
      sum += i;
    }
  }
  return sum;
}
