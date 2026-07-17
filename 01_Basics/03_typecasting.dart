
void main() {
  // --------------------------------------------------
  // String to int
  // int.parse() converts a String into an integer.
  String age = "21";

  int convertedAge = int.parse(age);

  print("Age: $convertedAge");
  print("Age + 1: ${convertedAge + 1}");

  // --------------------------------------------------
  // String to double
  // double.parse() converts a String into a double.
  String price = "99.99";

  double convertedPrice = double.parse(price);

  print("\nPrice: $convertedPrice");

  // --------------------------------------------------
  // int to String
  // toString() converts any value into a String.
  int rollNumber = 101;

  String convertedRollNumber = rollNumber.toString();

  print("\nRoll Number: $convertedRollNumber");

  // --------------------------------------------------
  // double to int
  // toInt() removes the decimal part.
  double marks = 95.75;

  int convertedMarks = marks.toInt();

  print("\nMarks: $convertedMarks");

  // --------------------------------------------------
  // Object Typecasting using 'as'

  Animal animal = Dog();

  // Converting Animal reference to Dog.
  Dog dog = animal as Dog;

  dog.bark();
}

// Parent Class
class Animal {}

// Child Class
class Dog extends Animal {
  void bark() {
    print("\nDog is Barking!");
  }
}