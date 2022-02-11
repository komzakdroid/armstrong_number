class PDPException implements Exception {
  String errMsg() {
    return "Entered invalid age!";
  }
}

void main() {
  try {
    callAge(-20);
  } catch (er) {
    print(er);
  }
}

void callAge(int age) {
  if (age < 0) {
    throw PDPException();
  }
}
