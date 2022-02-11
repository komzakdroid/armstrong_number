void main() {
  List<String> list = ["123", "23a", "9013", "34", "71w72"];
  for (var i = 0; i < list.length; i++) {
    try {
      print(int.parse(list[i]));
    } catch (e) {
      //print(e);
    }
  }
}
