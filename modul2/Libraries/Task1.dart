import 'dart:math';

void main() {
  var sum = 0.0;
  for (var i = 0; i <= 100; i++) {
    var k = 2 * i + 1;
    if (k <= 100) {
      print("${i + 1}-element sin($k)");
      sum += sin(k);
    }
  }
  print("O'rtacha qiymati: ${sum / 100}");
  }
