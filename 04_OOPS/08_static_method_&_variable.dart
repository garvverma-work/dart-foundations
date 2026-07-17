
class Student {
  // Static variable shared by all objects
  static int studentCount = 0;

  // Instance variable (belongs to each object)
  String name;

  // Constructor
  Student(this.name) {
    // Increment the static variable whenever an object is created
    studentCount++;
  }

  // Instance method
  void displayStudent() {
    print("Student Name: $name");
  }

  // Static method
  static void displayStudentCount() {
    print("Total Students: $studentCount");
  }
}

void main() {
  // Creating objects
  Student student1 = Student("Garv");
  Student student2 = Student("Rahul");
  Student student3 = Student("Ankit");

  // Calling instance methods using objects
  student1.displayStudent();
  student2.displayStudent();
  student3.displayStudent();

  print("");

  // Calling static variable using the class name
  print("Student Count: ${Student.studentCount}");

  // Calling static method using the class name
  Student.displayStudentCount();
}