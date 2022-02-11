import 'dart:math';

void main() {
  try {
    squareRoot(-25);
  } catch (e) {
    print(e);
  } finally {
    print("Good Job!");
  }
}

num squareRoot(int i) {
  if (i < 0) {
    throw FormatException("Invalid number!");
  }
  return sqrt(i);
}
