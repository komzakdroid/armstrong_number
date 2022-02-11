void main() {
  /* try {
    print(devide(12, 0));
  } on UnsupportedError {
    print("Nolga bo'lish mumkin emas!");
  }
*/
  try {
    print(devide(12, 0));
  } catch (e) {
    print(e);
  } finally {
    print("Urraa");
  }
}

num devide(int a, int b) {
  if (b == 0) {
    throw Exception("Nolga bo'lish amali qo'llanildi!");
  }
  return a / b;
}
