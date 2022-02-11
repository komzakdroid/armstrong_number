abstract class Online {
  void get_info();
}

class Pdp1 extends Online {
  @override
  void get_info() {
    print("This is class Pdp1");
  }
}

class Pdp2 extends Online {
  @override
  void get_info() {
    print("This is class Pdp1");
  }
}

void main() {
  Pdp1 p1 = Pdp1();
  p1.get_info();

  Pdp2 p2 = Pdp2();
  p2.get_info();
}
