void main() {
  List A = [2, 3];
  List B = [3, 4];
  List C = [5, 6];
  List D = [6, 7];

  Point _A = Point("A", A[0], A[1]);
  Point _B = Point("B", B[0], B[1]);
  Point _C = Point("C", C[0], C[1]);
  Point _D = Point("D", D[0], D[1]);

  checkIfSameLine(_A, _B, _C);
  checkIfSameLine(_A, _B, _C);
  checkIfSameLine(_B, _C, _D);
  checkIfSameLine(_A, _C, _D);
}

class Point {
  var name;
  int x;
  int y;

  Point(this.name, this.x, this.y);

  @override
  String toString() {
    return 'Point{x: $x, y: $y}';
  }
}

void checkIfSameLine(Point one, Point two, Point thr) {
  var k1 = (one.x - two.x) / (thr.x - two.x);
  var k2 = (one.y - two.y) * (thr.y - two.y);
  if (k1 == k2) {
    print(
        "${one.name}, ${two.name} va ${thr.name} nuqtalari chiziqlar 1 chiziqda yotadi!");
  } else {
    print(
        "${one.name}, ${two.name} va ${thr.name} nuqtalari chiqizlar bir to'g'ri chiqizda yotmaydi!");
  }
}
