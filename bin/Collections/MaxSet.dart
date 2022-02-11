void main() {
  addNumbers(11, 11.1);
  List<int> listInt = [1, 2, 4, 5];
  List<String> listString = ["aa", "bb", "cc", "dd"];

  showList(listInt);
  showList(listString);
}

void addNumbers<T extends num>(T a, T b) {
  print(a + b);
}

void showList<T>(List<T> list) {
  for (var element in list) {
    print(element);
  }
}
