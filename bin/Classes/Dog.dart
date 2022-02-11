void main() {
  Dog dog = Dog("tuffy", 5, "white");
  dog.infos();
}

class Dog {
  String dName;
  int dAge;
  String dColor;

  Dog(this.dName, this.dAge, this.dColor);

  void infos() => print("Hi my name is $dName. \n"
      "My age is $dAge and my color is $dColor.");
}
