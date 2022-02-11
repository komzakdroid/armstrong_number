import 'dart:math';

void main() {
  DateTime tim1 = DateTime.parse("2000-02-02");
  DateTime tim2 = DateTime.parse("2020-02-02");

  int N = tim2.difference(tim1).inDays;
  var sum = 0.0;
  for (var i = 0; i <= N; i++) {
    sum += cos(i);
  }
  print("Ifodaning qiymati: $sum");
}
