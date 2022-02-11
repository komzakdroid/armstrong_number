import 'dart:math';

void main() {
  List list = ["225", "-23a", "-9013", "81", "-772", "-78uy"];
  var numList = [];
  var sum = 0.0;
  list.forEach((e) {
    try {
      if (int.parse(e) > 0) {
        numList.add(int.parse(e));
      }
    } catch (e) {
      //print(e);
    }
  });
  numList.forEach((e) {
    sum += sqrt(e);
  });
  print(sum);
}
