int getSecondSmallest(List<int> numbers) {
  int min = numbers[0];
  int secondMin = numbers[1];

  if (secondMin < min) {
    int temp = min;
    min = secondMin;
    secondMin = temp;
  }

  for (int i = 2; i < numbers.length; i++) {
    if (numbers[i] < min) {
      secondMin = min;
      min = numbers[i];
    } else if (numbers[i] < secondMin) {
      secondMin = numbers[i];
    }
  }

  return secondMin;
}

void main() {
  List<int> numbers = [1, 9, 0, 5, 4, 2];

  print(getSecondSmallest(numbers));
}