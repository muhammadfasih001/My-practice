import 'dart:io';

void main() {
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

List<Map<String, dynamic>> WeekDayName = [];

remove() {
  stdout.write("Enter day you want to remove: ");
  String enter = stdin.readLineSync()!;

  bool foundDay = WeekDayName.any((element) =>
      element["Day 1"] == enter ||
      ["Day 2"] == enter ||
      ["Day 3"] == enter ||
      ["Day 4"] == enter ||
      ["Day 5"] == enter ||
      ["Day 6"] == enter ||
      ["Day 7"] == enter);

  if (foundDay) {
    WeekDayName.removeWhere((element) => element["Day 1"] == enter);
    print("Deleted Day");
  } else {
    print("Day Not found");
  }
}
