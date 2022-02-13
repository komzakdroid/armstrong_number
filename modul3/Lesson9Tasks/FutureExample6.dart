void main() async {
  printOrderMessage();
}

Future<void> printOrderMessage() async {
  try {
    print(await fetchUserOrder());
  } catch (e) {
    print(e);
  }
}

Future<String> fetchUserOrder() {
  var str = Future.delayed(
      Duration(seconds: 5), () => throw 'Cannot locate user order');
  return str;
}
