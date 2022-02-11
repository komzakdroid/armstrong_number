void main() {
  List list1 = [12, 23, 34];
  List list2 = [12.12, 23.23, 34.34];
  List list3 = ["PDP", "Online", "2020"];

  lastItem(list1);
  lastItem(list2);
  lastItem(list3);
}

void lastItem<T>(List<T> list) {
  print(list.last);
}
