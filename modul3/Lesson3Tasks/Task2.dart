void main() {
  String str1 = "987-123-4567";
  String str2 = "123 456 7890";
  String str3 = "(123) 456-7890";

  ValidPhone phone1 = ValidPhone(str1);
  phone1.isValid(str1);
  ValidPhone phone2 = ValidPhone(str2);
  phone2.isValid(str2);
  ValidPhone phone3 = ValidPhone(str3);
  phone3.isValid(str3);
}

class ValidPhone {
  String str;

  ValidPhone(this.str);

  void isValid(String input) {
    final RegExp phone =
        RegExp(r'^(\+0?1\s)?((\d{3})|(\(\d{3}\)))?(\s|-)\d{3}(\s|-)\d{4}$');
    if (phone.hasMatch(input) && input.contains('-')==true) {
      print('$input is valid');
    } else {
      print('$input is not valid');
    }
  }
}
