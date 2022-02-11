void main() {
  try {
    test_age(-20);
  } catch (e) {
    print("Yosh ko'rsatkichi manfiy bo'lolmaydi!");
  }
}

void test_age(int age) {
  if (age < 0) {
    throw FormatException();
  }
  print("Siznign yoshingiz: " + age.toString());
}
