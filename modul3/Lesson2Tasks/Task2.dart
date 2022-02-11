import 'dart:math';

void main() {
  List<int> l1 = [3, 2, 1];
  List<int> l2 = [1, 2];
  List<int> l3 = [2, 2, 3, 1];
  List<int> l4 = [2, 2, 3, 5];
  ThirdMaximum number = ThirdMaximum();
  print(thirdMax(l1));
}

class ThirdMaximum {
  late List<int> _list;

  List<int> get list => _list;

  set list(List<int> value) {
    _list = value;
  }
}

int thirdMax(List<int> nums) {
  int first = nums[0],
      second = 0x80000000,
      third = 0x80000000,
      n = nums.length,
      count = 0;

  if (n < 3) {
    if (n == 1) {
      return nums[0];
    } else {
      return max(nums[0], nums[1]);
    }
  }
  for (int i = 1; i < n; i++) {
    if (first < nums[i]) {
      first = nums[i];
    }
  }
  for (int i = 0; i < n; i++) {
    if (first > nums[i] && nums[i] > second) {
      second = nums[i];
    }
  }
  for (int i = 0; i < n; i++) {
    if (second > nums[i] && nums[i] >= third) {
      third = nums[i];
      count++;
    }
  }
  if (third == 0x80000000) {
    if (count != 0) {
      return third;
    }
    third = first;
  }
  return third;
}
