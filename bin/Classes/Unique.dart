import 'dart:io';

void main() {
  print("Enter first number:");
  int _r = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int _l = int.parse(stdin.readLineSync()!);

  Unique unique = Unique(_r, _l);
  unique.findUnique(_r, _l);
}

class Unique {
  var l, r;

  Unique(this.l, this.r);

  void findUnique(var l, var r) {
    var list = [];
    int n, m;
    var start;
    var stop;
    if (l < r) {
      start = l;
      stop = r;
      n = l;
      m = r;
    } else {
      start = r;
      stop = l;
      n = r;
      m = l;
    }
    for (n; n <= m; n++) {
      String str = n.toString();
      for (int j = 1; j < str.length; j++) {
        if (str[0] != str[j]) {
          int number = int.parse(str);
          list.add(number);
        }
      }
    }

    print("Input:\n"
        "Start $start, Stop $stop "
        "Output: ${list.toString().replaceAll('[', '').replaceAll(']', '').replaceAll(',', '')}");
  }
}
