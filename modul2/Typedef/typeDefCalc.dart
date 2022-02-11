typedef Operation(int num1, int num2);

void add(int a, int b) {
  print("Add result ${a + b}");
}
 
void sub(int a, int b) {
  print("Sub result ${a + b}");
}

void div(int a, int b) {
  print("Div result ${a / b}");
}

void calculator(int a, int b, Operation oper) {
  oper(a, b);
}

void main() {
  calculator(5, 5, add);
  calculator(5, 5, sub);
  calculator(5, 5, div);
/*  Operation oper = add;
  oper(12, 3);
  oper = sub;
  oper(12, 3);
  oper = div;
  oper(12, 3);*/
}
