import 'dart:io';

void main() {
  //Q.1 Write a program that takes a list of numbers as input and prints the even numbers in the list using a for loop.
// Example:
// Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Output: 2 4 6 8 10

  stdout.write("Enter a list of numbers, separated by spaces: ");
  String userInputNumber = (stdin.readLineSync()!);

  List<String> numberStr = userInputNumber.split(" ");
  List<int> numbers = [];
  List<int> even = [];

  for (int i = 0; i < numberStr.length; i++) {
    int num = int.parse(numberStr[i]);
    numbers.add(num);
  }
  for (int a = 0; a < numbers.length; a++) {
    if (numbers[a] % 2 == 0) {
      even.add(numbers[a]);
    }
  }

  print(numbers);
  print("Even numbers: $even");

  //Q.2 Write a program that prints the Fibonacci sequence up to a given number using a for loop.
// Example:
// Input: 10
// Output: 0 1 1 2 3 5 8

  stdout.write("Enter your number: ");
  int number = int.parse(stdin.readLineSync()!);

  int firstValue = 0;
  int secondValue = 1;
  int nextValue;

  for (int a = 2; a < number; a++) {
    nextValue = firstValue + secondValue;
    print("$nextValue");

    firstValue = secondValue;
    secondValue = nextValue;
  }
}
