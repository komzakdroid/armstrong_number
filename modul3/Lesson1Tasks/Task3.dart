void main() {
  List list1 = [-1, 0, 3, 5, 9, 12];
  var n1 = 9;
  var n2 = 2;
  BinarySearch search = BinarySearch(list1);
  search.getIndex(n1);
  search.getIndex(n2);
}

class BinarySearch {
  List list;

  BinarySearch(this.list);

  void getIndex(int n) {
    var a = -1;
    for (int i = 0; i < list.length; i++) {
      if (n == list[i]) {
        print(i);
        a = i;
      }
    }
    if (a == -1) {
      print(a);
    }
  }
}
