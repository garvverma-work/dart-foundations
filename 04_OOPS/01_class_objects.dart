void main() {
  // Creating Student objects
  var student1 = Student();
  var student2 = Student();

  // Assigning values to student1
  student1.name = "Garv Verma";
  student1.id = 72;
  student1.section = "B";
  var student1Club = student1.club("Singing");

  // Assigning values to student2
  student2.name = "Tapasya";
  student2.id = 83;
  student2.section = "B";
  var student2Club = student2.club("Art");

  // Displaying student details
  print(
    "${student1.name}, "
        "Section: ${student1.section}, "
        "Roll No.: ${student1.id}, "
        "$student1Club",
  );

  print(
    "${student2.name}, "
        "Section: ${student2.section}, "
        "Roll No.: ${student2.id}, "
        "$student2Club",
  );
}

class Student {
  // Instance variables
  var name;
  var section;
  var id;

  // Instance method
  String club(String activity) {
    return "$name is in the $activity club.";
  }
}