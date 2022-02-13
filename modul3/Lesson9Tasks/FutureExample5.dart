Future<void> main() async {
  countSeconds(5);
  createOrderMessage().then((value) => print(value));
}

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 5),
      () => 'Large Latte',
    );

void countSeconds(int s) {
  for (int i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
