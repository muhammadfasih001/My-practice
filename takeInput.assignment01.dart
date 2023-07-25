import 'dart:io';

void main() {
  //Q.1: Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.ie: if both values are equal then it's square otherwise rectangle.

  List<int> a = [
    10,
    10,
  ];

  if (a[0] == a[1]) {
    print("its an square");
  } else {
    print("its a rectangular");
  }

  //Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them.

  List<int> b = [];

  stdout.write("Enter your age 0: ");
  int age0 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your age 1: ");
  int age1 = int.parse(stdin.readLineSync()!);

  b.addAll([age0, age1]);

  if (b[0] > b[1]) {
    print("Age 0: is the Oldest age");
  } else if (b[0] < b[1]) {
    print("Age 1: is the Youngest age");
  } else {
    print("Age 0 and age 1 are same age");
  }

  //Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value: Number of classes held = 16, Number of classes attended = 10, and print percentage of class attended. Is student is allowed to sit in exam or not?

  List<int> c = [];

  stdout.write("Enter your number clasess held: ");
  int numberOfClasessHeld = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your number clasess attend: ");
  int numberOfClasessAttended = int.parse(stdin.readLineSync()!);

  c.addAll([numberOfClasessHeld, numberOfClasessAttended]);

  double percentage = (numberOfClasessAttended / numberOfClasessHeld) * 100;

  print("Attendance Percentage: $percentage");

  if (percentage >= 75) {
    print(
        "Student percentage is $percentage: This student is allowed to take the exam");
  } else {
    print(
        "Student percentage is $percentage: This Student is not allowed to take the exam");
  }

  //Q.4: Create integer variable assign any year to it and check if a year is leap year or not. If a year is divisible by 4 then it is leap year but if the year is century year like 2000, 1900, 2100 then it must be divisible by 400. i.e: Use % ( modulus ) operator.

  stdout.write("Enter your leap/and not leap year: ");
  int enterYear = int.parse(stdin.readLineSync()!);

  print("$enterYear");

  int leap = enterYear;
  int notLeapYear = enterYear;

  if (leap % 4 == 0) {
    print("$enterYear: is a leap year");
  } else {
    notLeapYear % 400 != 0;
    print("$enterYear: is not a leap year");
  }

  //Q.5: Write a program to read temperature in centigrade and display a suitable message according to temperature: You have num variable temperature = 42; Now print the message according to temperature:temp < 0 then Freezing weather temp 0-10 then Very Cold weather temp 10-20 then Cold weather temp 20-30 then Normal in Temptemp 30-40 then Its Hottemp >=40 then Its Very Hot.

  stdout.write("Enter your weather temperature: ");
  int enterTemperature = int.parse(stdin.readLineSync()!);

  print("$enterTemperature");

  if (enterTemperature < 0) {
    print("Weather temperature is $enterTemperature: Freezing Weather");
  } else if (enterTemperature > 0 && enterTemperature < 10) {
    print("Weather temperature is $enterTemperature: Very Cold Weather");
  } else if (enterTemperature >= 10 && enterTemperature < 20) {
    print("Weather temperature is $enterTemperature: Cold Weather");
  } else if (enterTemperature >= 20 && enterTemperature < 30) {
    print("Weather temperature is $enterTemperature: Normal Temperature");
  } else if (enterTemperature >= 30 && enterTemperature < 40) {
    print("Weather temperature is $enterTemperature: Hot Temperature");
  } else {
    enterTemperature >= 40;
    print(
        "Weather temperature is $enterTemperature: it's Very Hot Temperature");
  }

  //Q.6: Write a program to check whether an alphabet is a vowel or consonant.

  stdout.write("Enter alphabet check out alphabet is vowel or consonant: ");
  String vowelAndConsonant = stdin.readLineSync()!;

  bool condition = false;

  while (condition == false) {
    if (vowelAndConsonant == "a" ||
        vowelAndConsonant == "e" ||
        vowelAndConsonant == "i" ||
        vowelAndConsonant == "o" ||
        vowelAndConsonant == "u") {
      print("$vowelAndConsonant: is a vowel");

      condition = true;
      break;
    } else {
      print("$vowelAndConsonant: is a consonant");
    }
    stdout.write("Enter alphabet check out alphabet is vowel or consonant: ");
    vowelAndConsonant = stdin.readLineSync()!;
  }

  //Q.7 Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :

// Unit    Charge/unit
// upto 199    @1.20
// 200 and above but less than 400    @1.50
// 400 and above but less than 600    @1.80
// 600 and above             @2.00;

// Test Data :
// id: 1001
// name: James
// units: 800
// Expected Output :
// Customer IDNO :1001
// Customer Name :James
// unit Consumed :800
// Amount Charges @Rs. 2.00 per unit : 1600.00
// Net Bill Amount : 1600.00

  stdout.write("Enter your Id.no: ");
  int enterId = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your name: ");
  String enterName = stdin.readLineSync()!;

  stdout.write("Enter your Unit Consumed: ");
  int enterUnitConsumed = int.parse(stdin.readLineSync()!);

  double perChargeUnit;
  double totalBillAmount;

  if (enterUnitConsumed <= 199) {
    perChargeUnit = 18.95;
  } else if (enterUnitConsumed >= 200 && enterUnitConsumed < 400) {
    perChargeUnit = 22.14;
  } else if (enterUnitConsumed >= 400 && enterUnitConsumed < 600) {
    perChargeUnit = 27.74;
  } else {
    perChargeUnit = 30.30;
  }

  print("Customer Id.No: $enterId");
  print("Customer Name: $enterName");
  print("Unit Consumed: $enterUnitConsumed");

  totalBillAmount = enterUnitConsumed * perChargeUnit;

  print("Amount Charges @Rs. $perChargeUnit per unit : $totalBillAmount");
  print("Net Bill Amount : $totalBillAmount");

  //Q.8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
  // i.e: Percentage should be rounded upto 2 decimal places only.

  stdout.write("Enter your name: ");
  String nameEnter = stdin.readLineSync()!;

  stdout.write("Enter your roll Number: ");
  int rollNumberEnter = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your Class: ");
  String classEnter = stdin.readLineSync()!;

  stdout.write("Enter your Engish marks: ");
  double englishMark = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your Math marks: ");
  double mathMark = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your Urdu marks: ");
  double urduMark = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your Chemistry marks: ");
  double chemMark = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your Physics marks: ");
  double physicsMark = double.parse(stdin.readLineSync()!);

  int obtainMark = 500;
  String grade;

  double totalmark = englishMark + mathMark + urduMark + chemMark + physicsMark;
  double percentages = totalmark / obtainMark * 100;
  percentage = double.parse(percentages.toStringAsFixed(2));

  if (percentage >= 80) {
    grade = "A+";
  } else if (percentage >= 70) {
    grade = "A";
  } else if (percentage >= 60) {
    grade = "B";
  } else if (percentage >= 50) {
    grade = "C";
  } else if (percentage >= 40) {
    grade = "Need Improvments";
  } else {
    grade = "Fail";
  }

  print("Student name: $nameEnter");
  print("Roll Number: $rollNumberEnter");
  print("Class: $classEnter");
  print("English Mark: $englishMark");
  print("Math Mark: $mathMark");
  print("Urdu Mark: $urduMark");
  print("Chemistry Mark: $chemMark");
  print("Physics Mark: $physicsMark");
  print("Grade: $grade");
  print("Obtained Mark: $obtainMark / Total Mark: $totalmark");
  print("Percentage: $percentage");

  //Q.9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.

  stdout.write("Enter Your Number: ");
  int entNum = int.parse(stdin.readLineSync()!);

  if (entNum % 2 == 0) {
    if (entNum % 5 == 0) {
      print("$entNum is even and divisible by 5");
    } else {
      print("$entNum is even but not divisible by 5");
    }
  } else {
    if (entNum % 7 == 0) {
      print("$entNum is Odd divisible by 7");
    } else {
      print("$entNum is Odd but not divisible by 7");
    }
  }

  //Q.10: Write a program that takes three numbers from the user and prints the greatest number & lowest number.

  stdout.write("Enter your 1st number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your 2nd number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your 3rd number: ");
  int num3 = int.parse(stdin.readLineSync()!);

  if (num1 > num2 && num1 > num3) {
    num1;
    print("$num1 is the greatest number");
  } else if (num2 > num1 && num2 > num3) {
    num2;
    print("$num2 is the greatest number");
  } else {
    num3;
    print("$num3 is the greatest number");
  }

  if (num1 < num2 && num1 < num3) {
    num1;
    print("$num1 is the lowest number");
  } else if (num2 < num1 && num2 < num3) {
    num2;
    print("$num2 is the lowest number");
  } else {
    num3;
    print("$num3 is the lowest number");
  }

//Q.11: Write a program to Calculate root of any number.
// i.e: √y = y½

  stdout.write("Enter you number please. ");
  int square = int.parse(stdin.readLineSync()!);

  print("Square root of $square is ${square * square}");
}
