import 'dart:math';

void main() {
  double P = 1.0;
  for (var i = 0; i <= 100; i++) {
    var k = 2 * i;
    if (k >= 2 && k <= 100) {
      print("$i-element tan($k)");
      P *= tan(k);
    }
  }
  print("Ko'paytmaning qiymati: $P");
}
