import 'dart:io';

int fibonacci(int n) => n <= 2 ? 1 : fibonacci(n - 2) + fibonacci(n - 1);

main() {
  String output = "";
  print("Enter number:");
  int t = int.parse(stdin.readLineSync()!);

  for (int i = 1; i < t; ++i) {
    output += fibonacci(i).toString() + ", ";
  }
  print(output);
}
