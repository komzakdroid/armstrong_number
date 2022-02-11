typedef Greetings(String name);
 
String SayHello(String name) {
  return "Hello $name";
}

String SayGoodBye(String name) {
  return "Good Bye $name";
}

String SayHappyBirthday(String name) {
  return "Happy Birthday $name";
}

void main() {
  Greetings greetings;

  greetings = SayHello;
  print(greetings("Komiljon"));

  greetings = SayHappyBirthday;
  print(greetings("Komiljon"));

  greetings = SayGoodBye;
  print(greetings("Komiljon"));
}
