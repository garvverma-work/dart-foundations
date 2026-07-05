
// ---------------------------------------------------------------------------
// Functions
//
// Functions are reusable blocks of code that perform a specific task.
// They help reduce code duplication and improve readability.
// ---------------------------------------------------------------------------

import 'dart:math';

void main() {
  // Function with no return value
  area(10, 5);

  print("");

  // Function with a return value
  num perimeter = findPerimeter(10, 2);
  print("The perimeter of the given rectangle is $perimeter cms");

  print("");

  // Required positional parameters
  cities("Osaka", "Canton Valley", "Oregon");

  print("");

  // Optional positional parameter
  countries("Japan", "Switzerland");

  print("");

  // Required named parameters
  int shapeVolume = volume(7, breadth: 4, height: 5);
  print("The volume of the shape is $shapeVolume");

  print("");

  // Optional named parameter with a default value
  volume2(15, 5);

  print("");

  // Arrow Function
  double volumeOfCylinder = cylinderVolume(5, 10);
  print("The volume of the given cylinder is $volumeOfCylinder");
}

// ===========================================================================
// Function with no return value (void)
//
// Calculates and prints the area of a rectangle.
// ===========================================================================

void area(int length, int breadth) {
  print("The area of the rectangle is ${length * breadth} sq. cms");
}

// ===========================================================================
// Function with a return value.
//
// Returns the perimeter of a rectangle.
//
// Specifying the return type improves readability and helps catch
// type-related errors during compilation.
// ===========================================================================

num findPerimeter(int length, int breadth) {
  return 2 * (length + breadth);
}

// ---------------------------------------------------------------------------
// Types of Parameters
//
// 1. Required Positional Parameters
// 2. Optional Positional Parameters
// 3. Required Named Parameters
// 4. Optional Named Parameters with Default Values
// ---------------------------------------------------------------------------

// ===========================================================================
// Required Positional Parameters
//
// Every argument must be supplied in the same order as defined.
// ===========================================================================

void cities(String name1, String name2, String name3) {
  print(name1);
  print(name2);
  print(name3);
}

// ===========================================================================
// Optional Positional Parameters
//
// Parameters enclosed in [] become optional.
// If omitted, their value defaults to null.
// ===========================================================================

void countries(String name1, String name2, [String? name3]) {
  print("1st Favorite Country: $name1");
  print("2nd Favorite Country: $name2");
  print("3rd Favorite Country: $name3");
}

// ===========================================================================
// Required Named Parameters
//
// The caller must specify the parameter names.
// Their order does not matter.
// ===========================================================================

int volume(
    int length, {
      required int breadth,
      required int height
    }) {
  return length * breadth * height;
}

// ===========================================================================
// Optional Named Parameter with Default Value
//
// If no height is provided, Dart automatically uses the default value (10).
// ===========================================================================

void volume2(
    int length,
    int breadth, {
      int height = 10
    }) {
  print(
      "The volume of the given shape is ${length * breadth * height} cubic cms");
}

// ===========================================================================
// Arrow Function (=>)
//
// Used for short functions consisting of a single expression.
//
// Characteristics:
// • Single-line function
// • No curly braces {}
// • No explicit return statement
// • The expression's result is returned automatically
// ===========================================================================

double cylinderVolume(double radius, double height) =>
    pi * radius * radius * height;