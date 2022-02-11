void main() {
  List l1 = [2, 2, 1];
  List l2 = [4, 1, 2, 1, 2];

  print("Input: $l1");
  singleNumber(l1);
  print("Input: $l2");
  singleNumber(l2);
}

void singleNumber(List nums) {
  for (int i = 0; i < nums.length - 1; i++) {
    int k = nums[i];
    nums.removeAt(i);
    if (nums.contains(k) == false) {
      print("Output: $k");
    }
    nums.add(k);
  }
}
