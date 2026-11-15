void getDistinctNumbers(List<int> numbers) {
  int count = 0;

  print("The distinct numbers are:");

  for (int i = 0; i < numbers.length; i++) {
    bool found = false;

    for (int j = 0; j < i; j++) {
      if (numbers[i] == numbers[j]) {
        found = true;
      }
    }

    if (found == false) {
      print(numbers[i]);
      count++;
    }
  }

  print("The number of distinct numbers is $count");
}

void main() {
  List<int> numbers = [1, 2, 3, 2, 1, 6, 3, 4, 5, 2];

  getDistinctNumbers(numbers);
}