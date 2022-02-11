void main() {
  Calculator calculator = Calculator();
  print(calculator.ret_tot());
  print(calculator.ret_dis());
}

class Calculate_Total {
  int ret_tot() {
    return 0;
  }
}

class Calculate_Discount {
  int ret_dis() {
    return 0;
  }
}

class Calculator implements Calculate_Total, Calculate_Discount {
  @override
  int ret_dis() {
    return 50;
  }

  @override
  int ret_tot() {
    return 1000;
  }
}
