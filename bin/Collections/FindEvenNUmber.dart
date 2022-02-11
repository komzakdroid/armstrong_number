void main() {
  var list = [12, 3, 34, 56, 11, 32, 45, 11, 43];
  var h = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) {
      h.add(list[i]);
    }
  }
  for (int i = 0; i < h.length - 1; i++) {
    if (h[i] > h[i + 1]) {
      print(h[i]);
    }
  }
}
