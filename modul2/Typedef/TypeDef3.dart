import 'dart:math';

typedef func(int x);

void main() {
  print(daraja(1));
  print(ildiz(2));
}

func daraja = (x) => pow(e, x);
func ildiz = (x) => sqrt(x);
