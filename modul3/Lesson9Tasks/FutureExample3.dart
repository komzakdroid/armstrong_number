 Future<void> main() async {
  test2();
}


Future<void> test2() async {
  print("Begin");
  var a = await Future.microtask(() => someFunctions());
  print("End");
}

Future<int> someFunctions() async {
  int count = 0;
  for (int i = 0; i < 1000000; i++) {
    count += i;
  }
  print("Done!");
  return count;
}
