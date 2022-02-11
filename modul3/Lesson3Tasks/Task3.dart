void main() {
  List list = [5, 7, 3, 9, 4, 9, 8, 3, 1];
  List list1 = [9, 9, 8, 8];

  LargestUnique lg = LargestUnique(list);
  LargestUnique lg1 = LargestUnique(list1);

  print(lg.largestUniqueNumber(list));
  print(lg1.largestUniqueNumber(list1));
}

class LargestUnique {
  var _list;

  LargestUnique(this._list);

  int largestUniqueNumber(List list) {
    list.sort();
    for (int i = 0; i < list.length; i++) {
      int a = list[i];
      list.remove(a);
      if (list.contains(a)) {
        list.remove(a);
      } else {
        list.add(a);
      }
    }
    list.sort();
    if (list.isEmpty) {
      return -1;
    }
    return list.last;
  }
}
