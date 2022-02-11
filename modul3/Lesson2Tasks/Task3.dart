void main() {
  String _str1 = "anagram";
  String _str2 = "nagaram";
  String _str3 = "rat";
  String _str4 = "car";
  ValidAnagram anagram1 = ValidAnagram(_str1, _str2);
  ValidAnagram anagram2 = ValidAnagram(_str3, _str4);
  print(anagram1.isAnagram(_str1, _str2));
  print(anagram2.isAnagram(_str3, _str4));
}

class ValidAnagram {
  String _str1;
  String _str2;

  ValidAnagram(this._str1, this._str2);

  String get str2 => _str2;

  set str2(String value) {
    _str2 = value;
  }

  String get str1 => _str1;

  set str1(String value) {
    _str1 = value;
  }

  bool isAnagram(String str1, String str2) {
    String normalize(String str) => (str
            .toLowerCase()
            .replaceAll(RegExp(r'[^a-z0-9]', caseSensitive: false), '')
            .split('')
          ..sort())
        .join('');
    return normalize(str1) == normalize(str2);
  }
}
