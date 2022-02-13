void main() async {
  await waitForMe().then((_) {
    print("I am more done THEN you");
  });
  print("I was waiting here");
}

Future waitForMe() {
  print("Started");

  return Future.delayed(Duration(seconds: 5), () {
    print("Now, I'm done");
  });
}
