void main() {
  DateTime now = DateTime.now();
  DateTime old = DateTime(1989, 11, 9);
  DateTime ran = DateTime.parse("1999-05-25");

  print(now);
  print(old);
  print(ran);

  int days = now.difference(ran).inDays;
  print(days);
}
