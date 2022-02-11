enum Color { RED, GREEN, BLUE }

void main() {
  Color.values.forEach((c) => print("${c.name} at index ${c.index}"));
}
