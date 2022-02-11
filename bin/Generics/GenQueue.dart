import 'dart:collection';

void main() {
  Queue queue = Queue();
  queue.addAll([2020, "PDP", "Online", "Flutter"]);
  print(reverse(queue));
}

Queue<T> reverse<T>(Queue<T> queue) {
  List<T> list = [];
  list.addAll(queue);
  queue.clear();
  queue.addAll(List.from(list.reversed));
  return queue;
}
