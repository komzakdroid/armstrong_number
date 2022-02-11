import 'dart:io';

void main() {
  print("Enter number:");
  var num = int.parse(stdin.readLineSync()!);
  PerfectNumber pr = PerfectNumber();
  pr.checkPerfectNumber(num);
}

class PerfectNumber {
  var num;

  void checkPerfectNumber(var num) {
    var s = 0;
    var list = [];
    for (int i = 1; i < num; i++) {
      if (num % i == 0) {
        s += i;
        list.add(i);
      }
    }
    if (s == num) {
      print("Input: $num \n"
          "Output: True \n"
          "Explanation: $num = ${list.toString().replaceAll(',', ' +').replaceAll('[', '').replaceAll(']', '')}");
    }
  }
}
