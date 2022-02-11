void main() {
  List arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int n = arr.length;

  Harmonic mean = Harmonic(arr);
  print(mean.harmonic(arr, n));
}

class Harmonic {
  List list;

  Harmonic(this.list);

  double harmonic(List arr, int n) {
    double sum = 0;
    for (int i = 0; i < n; i++) {
      sum = sum += 1 / arr[i];
    }
    return n / sum;
  }
}
