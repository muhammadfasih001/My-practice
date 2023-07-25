import 'dart:io';

//WeekDay Map and List dynamic....
List<Map<String, dynamic>> WeekDayName = [];

void main() {
  //Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.
//Function call......
  originalList([1, 2, 3, 4, 5, 6, 7, 8, 9]);

// Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.
//Function call......
  processNumber([1, 100, 5, 80, 6]);

  print("");

//Function call......
  processNumber([1, 700, 5, 6, 10, 88]);

//Q.1: Create a list of names and print all names using the List method.

  List<String> allNames = [];

  stdout.write("Enter your name: ");
  String n1 = stdin.readLineSync()!;

  stdout.write("Enter your name: ");
  String n2 = stdin.readLineSync()!;

  stdout.write("Enter your name: ");
  String n3 = stdin.readLineSync()!;

  stdout.write("Enter your name: ");
  String n4 = stdin.readLineSync()!;

  stdout.write("Enter your name: ");
  String n5 = stdin.readLineSync()!;

  stdout.write("Enter your name: ");
  String n6 = stdin.readLineSync()!;

  allNames.addAll([n1, n2, n3, n4, n5, n6]);
  print(allNames);

  // Q.3: Create a list of Days and remove one by one from the end of list.

  bool condition = true;

  while (condition == true) {
    print("press key 1: add day: ");
    print("press key 2: remove day: ");

    stdout.write("Enter option please: ");
    int option = int.parse(stdin.readLineSync()!);

    if (option == 1) {
      addDay();
    } else if (option == 2) {
      remove();
    }
  }
}

//Function Smallest greatest Number find......
List<int> processNumber(List<int> numbers) {
  print("Original List is: $numbers");
  numbers.sort();

  int smallest = numbers.first;
  int greatest = numbers.last;

  print("Sorted Numbers List: $numbers");
  print("Smallest number is: $smallest");
  print("Greatest number is: $greatest");

  return numbers;
}

//Add day Function......
addDay() {
  stdout.write("Enter Week day 1: ");
  String d1 = stdin.readLineSync()!;

  stdout.write("Enter Week day 2: ");
  String d2 = stdin.readLineSync()!;

  stdout.write("Enter Week day 3: ");
  String d3 = stdin.readLineSync()!;

  stdout.write("Enter Week day 4: ");
  String d4 = stdin.readLineSync()!;

  stdout.write("Enter Week day 5: ");
  String d5 = stdin.readLineSync()!;

  stdout.write("Enter Week day 6: ");
  String d6 = stdin.readLineSync()!;

  stdout.write("Enter Week day 7: ");
  String d7 = stdin.readLineSync()!;

  Map<String, String> newMap = {
    "Day 1": d1,
    "Day 2": d2,
    "Day 3": d3,
    "Day 4": d4,
    "Day 5": d5,
    "Day 6": d6,
    "Day 7": d7
  };

  WeekDayName.add(newMap);

  print("Days added");
}

//Remove Function....
remove() {
  stdout.write("Enter day you want to remove: ");
  String enter = stdin.readLineSync()!;

  bool foundDay = WeekDayName.any((element) => element.containsKey(enter));

  if (foundDay) {
    WeekDayName.removeWhere((element) => element.containsKey(enter));
    print("Deleted Day");
  } else {
    print("Day Not found");
  }
}

//Function find first element as a parameter.......
List<int> originalList(List<int> number) {
  int n = 5;

  List<int> newList = number.sublist(0, n);
  print("Original List is: $number");
  print("Number of element to print: $n");
  print("New List with first $n element: $newList");

  return newList;
}
