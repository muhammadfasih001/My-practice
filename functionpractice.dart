void main() {
  print(studenMarkSheet(
      name: "Muhammad Fasih",
      rollNumber: 109,
      studenClass: 10,
      scienceMark: 86,
      mathMark: 40.5,
      urduMark: 80.8,
      englisMark: 86,
      chemMark: 40,
      phymark: 55));

  print("");

  print(studenMarkSheet(
      name: "saif",
      rollNumber: 108,
      studenClass: 9,
      scienceMark: 85,
      mathMark: 25,
      urduMark: 40,
      englisMark: 65,
      chemMark: 55,
      phymark: 75));

  print("");

  print(studentRecords());
}

String studenMarkSheet(
    {required String name,
    required int rollNumber,
    required int studenClass,
    required num scienceMark,
    required num mathMark,
    required num urduMark,
    required num englisMark,
    required num chemMark,
    required num phymark}) {
  num obtainedMark = 500;
  String grade;

  num totalMark =
      scienceMark + mathMark + urduMark + englisMark + chemMark + phymark;

  num percentage = (totalMark / obtainedMark) * 100;

  percentage = double.parse(percentage.toStringAsFixed(2));

  if (percentage >= 80) {
    grade = "Grade: A+";
  } else if (percentage >= 70) {
    grade = "Grade: A";
  } else if (percentage >= 60) {
    grade = "Grade: B";
  } else if (percentage >= 50) {
    grade = "Grade: C";
  } else if (percentage >= 40) {
    grade = "Grade: D";
  } else {
    grade = "Grade: Fail";
  }

  print("Student Name: $name");
  print("Roll Number: $rollNumber");
  print("Class: $studenClass");
  print("Science Mark: $scienceMark");
  print("Math Mark: $mathMark");
  print("Urdu Mark: $urduMark");
  print("English Mark: $englisMark");
  print("Chemistry Mark: $chemMark");
  print("Physics Mark: $phymark");
  print("Obtained Mark: $obtainedMark / Total Mark: $totalMark");
  print("Percentage: $percentage");

  return grade;
}

studentRecords() {
  String name = "muhammad fasih";
  num science = 86;
  num math = 50.5;
  num english = 40;
  num urdu = 80;
  num chem = 55.8;
  String grade;

  num obtainMark = 500;

  num totalMark = science + math + urdu + chem + english;

  num percentage = totalMark / obtainMark * 100;
  percentage = double.parse(percentage.toStringAsFixed(2));

  if (percentage >= 80) {
    print("${grade = "Grade: A+"}");
  } else if (percentage >= 70) {
    print("${grade = "Grade: A"}");
  } else if (percentage >= 60) {
    print("${grade = "Grade: B"}");
  } else if (percentage >= 50) {
    print("${grade = "Grade: C"}");
  } else if (percentage >= 40) {
    print("${grade = "Grade: D"}");
  } else {
    print("${grade = "Grade: Fail"}");
  }

  print("Name: $name");
  print("percentage: $percentage");

  return grade;
}
