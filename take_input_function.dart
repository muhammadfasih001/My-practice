import 'dart:io';

void main() {
  stdout.write("Enter your input: ");
  int enter = int.parse(stdin.readLineSync()!);

  String result = checkEvenOdd(enter);
  print(result);

  // stdout.write("Enter number: ");
  // int userInput = int.parse(stdin.readLineSync()!);

  // String result = checkEvenOdd(userInput);
  // print('the number is $result');
}

String checkEvenOdd(int number) {
  if (number % 2 == 0) {
    return "$number is an Even number";
  } else {
    return "$number is an Odd number";
  }
}
