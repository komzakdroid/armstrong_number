void main() {
  String str = "bcdDCBA123";
  List list = [];
  for (var i = 0; i < str.length; i++) {
    try {
      list.add(int.parse(str.substring(i, i + 1)));
    } catch (e) {
      //print(e);
    }
  }
  for (var e in list) {
    if (e % 2 == 0) {
      print("$e soni juft!");
    } else if (e % 2 == 1) {
      print("$e soni toq son!");
    } else {
      print("$e soni 0ga teng!");
    }
  }
}
