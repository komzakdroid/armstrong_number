void main() {}

class Creature {}

mixin Swimmer {}

class Mammal extends Creature with Swimmer {}

class Fish extends Creature with Swimmer {}

class Dolphin extends Mammal {}

class Shark extends Fish {}
