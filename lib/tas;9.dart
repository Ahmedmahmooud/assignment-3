void CountGeneral(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    bool found = false;

    for (int j = 0; j < i; j++) {
      if (numbers[i] == numbers[j]) {
        found = true;
      }
    }

    if (found == false) {
      int count = 0;

      for (int j = 0; j < numbers.length; j++) {
        if (numbers[i] == numbers[j]) {
          count++;
        }
      }

      print("${numbers[i]} -> $count");
    }
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 1, 3, 6];

  CountGeneral(numbers);
}