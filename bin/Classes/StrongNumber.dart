/*Strong Number mission*/
import 'dart:io';

void main(List<String> arguments) {
  print("Enter number:");
  int num = int.parse(stdin.readLineSync()!);
  Observe observe = Observe();
  print("$num is strong number -> ${observe.isStrong(num)}");
}

class Observe {
  int? num;

  bool isStrong(int num) {
    int total = 0;
    int temp_n = num;
    int i;
    int fact_n, lastdig;

    while (num != 0) {
      i = 1;
      fact_n = 1;
      lastdig = num % 10;
      while (i <= lastdig) {
        fact_n = fact_n * i;
        i++;
      }
      total = total + fact_n;
      num = num ~/ 10;
    }

    if (total == temp_n) {
      return true;
    } else {
      return false;
    }
  }
}
