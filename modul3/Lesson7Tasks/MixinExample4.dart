mixin Swim {
  void swim() => print("Swimming");
}
mixin Bite {
  void bite() => print("Chomp");
}

mixin Crawl {
  void crawl() => print("Crawling");
}

abstract class Reptile with Swim, Bite, Crawl {
  void hunt(String name) {
    swim();
    bite();
    crawl();
    print('Eat $name');
  }
}

void main() {
  Alligator al = Alligator();
  al.hunt("Fish");

  Crocodile cr = Crocodile();
  cr.hunt("Zebra");
}

class Alligator extends Reptile {}

class Crocodile extends Reptile {}

class Fish with Swim, Bite {
  void feed() {
    swim();
    bite();
  }
}
