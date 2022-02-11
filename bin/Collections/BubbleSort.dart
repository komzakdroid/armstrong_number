void main() {
  List<int> list = [12, 3, 34, 56, 11, 32, 45, 11, 43];
  List<int> sortedList = bubbleSort(list);
  print(sortedList);
}

bubbleSort(List<int> array) {
  int lengthOfArray = array.length;

  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return (array);
}
