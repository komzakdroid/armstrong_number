void main() {
  Map<int, int> map1 = {
    1: 111,
    2: 222,
  };
  Map<String, String> map2 = {"name": "Tom", "age": "25"};

  printMap(map1, map2);
}

void printMap<T>(Map<T, T> map1, Map<T, T> map2) {
  map1.forEach((key, value) {
    print("Key:$key, Value: $value");
  });
  map2.forEach((key, value) {
    print("Key:$key, Value: $value");
  });
}
