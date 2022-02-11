enum Direction { East, West, North, South }

void main() {
  MyDirection md = MyDirection(Direction.South);
  print(md.getMyDirection(md.d));
}

class MyDirection {
  Direction d;

  MyDirection(this.d);

  String getMyDirection(Direction d) {
    switch (d) {
      case Direction.East:
        return "In East Direction ";
      case Direction.West:
        return "In west Direction";
      case Direction.North:
        return "In North Direction";
      case Direction.South:
        return "In South Direction";
    }
  }
}
