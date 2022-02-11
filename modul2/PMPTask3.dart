import 'dart:collection';

const open = ['}', ']', ')'];
const close = ['{', '[', '('];

pairs(p) {
  switch (p) {
    case '}':
      return '{';
    case ']':
      return '[';
    case ')':
      return '(';
  }
}

characterIgnored(p) {
  return (!close.contains(p) && !open.contains(p)) ? true : false;
}

illegalStart(p, Queue<String> stack) {
  return stack.isEmpty && open.contains(p);
}

addLegalPair(p, Queue<String> stack) {
  if (close.contains(p)) stack.addLast(p);
}

matchPair(p) {
  return open.contains(p) ? pairs(p) : null;
}

isProperPair(p, Queue<String> stack) {
  p = matchPair(p);
  if (p != null) {
    if (p != stack.removeLast()) {
      return false;
    } else {
      return true;
    }
  }
  return true;
}

isBalancedBracket(String str) {
  var stack = Queue<String>();
  for (var index = 0; index < str.length; index++) {
    var ch = str[index];
    if (characterIgnored(ch)) continue;
    if (illegalStart(ch, stack)) return false;
    addLegalPair(ch, stack);
    if (!isProperPair(ch, stack)) return false;
  }
  return stack.isEmpty;
}

void main() {
  var str = "()";
  var str1 = "()[]{}";
  var str2 = "(]";
  var str3 = "([)]";
  var str4 = "{[]}";
  print(isBalancedBracket(str));
  print(isBalancedBracket(str1));
  print(isBalancedBracket(str2));
  print(isBalancedBracket(str3));
  print(isBalancedBracket(str4));
}
