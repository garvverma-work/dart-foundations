
void main() {

  // Declaration of Variable
  int a = 10; //OR
  var b = 20; // This auto initiates the input depending on it's a datatype

  // Types of datatypes

  //Numbers
  int x = 20;        // OR
  double y = 1.43;   // Dart automatically infers the type, so using `var` is common.

  print (x + y);

  // Strings

  String userName = "Garvvvvvv";
  var nickname = "STyLers";

  print (nickname);

  // Boolean

  bool isLoggedIn = true;
  bool hasPermission = false;

  print (isLoggedIn);

  // Other commonly used data types:
  // - List
  // - Map
  // - Set
  // - Runes
  // - Symbol
  //
  // These will be covered in upcoming files.

  // String Literals, Types of declaring literals, & String Interpolation

  // Literals
  // A literal is a fixed value written directly in code.
  "Garv";    // String literal
  21;        // Integer literal
  true;      // Boolean literal
  3.14;      // Double literal

  // Types of Declaring
  var name = "Garv";
  var age = 21;

  // String Interpolation
  // Avoid string concatenation when interpolation can be used.
  print("The number of characters in the name is " + name.length.toString());
  // Preferred approach
  print("The number of characters in the name is ${name.length}");
  // Curly braces are required when the expression contains
  // more than just a simple variable.
  // Example
  print("$name");
  print("${name.length}");
  print("${name.toUpperCase()}");

  // Few more are there

  final cityName = "Jaipur"; // Assigned once at runtime.
  const pi = 3.14;           // Compile-time constant.

  // Means const will take space even if it's not been accessed in the code

  /*
  Inside a class:

  - `final` instance variables are allowed.
  - `const` instance variables are not allowed.
  - A `const` variable inside a class must be `static const`.
  */

  // Example given outside the void main function

}

class User {
  final String name = "Garv Verma";

  static const String university =
      "Rajasthan Technical University";
}