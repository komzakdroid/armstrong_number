void main() {
  Counter counter = Counter();
  counter.addAll([1, 2, 2.2, 3.4]);
  counter.total();
}

class Counter<T extends num> {
  List<T> items = <T>[];

  void addAll(List<T> items) => this.items = items;

  void total() {
    num value = 0;
    for (var v in items) {
      value = value + v;
    }
    print(value);
  }
}
