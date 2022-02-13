Future<void> main() async {
  print('Fetching user order ...');
  print(await createOrderMessage());
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
