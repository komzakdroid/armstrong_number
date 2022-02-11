import 'dart:io';

void main() {
  print("Enter number:");
  var num = int.parse(stdin.readLineSync()!);
  Primes primes = Primes();
  primes.countPrimes(num);
}

class Primes {
  var num;

  void countPrimes(var num) {
    var list = [];
    var k = 0;
    for (int i = 1; i <= num; i++) {
      for (int j = 1; j <= i; j++) {
        if (i % j == 0) {
          k++;
        }
      }
      if (k == 2) {
        list.add(i);
        k = 0;
      } else {
        k = 0;
      }
    }
    print("Input: $num\n"
        "Output: ${list.length}\n"
        "Explanation: There are ${list.length} prime numbers less than $num, they are ${list.toString().replaceAll('[', '').replaceAll(']', '')}");
  }
}
