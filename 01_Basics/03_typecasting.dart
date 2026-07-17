
void main() {
  // Non-nullable variable
  // This variable must always contain a value.
  String name = "Garv";

  print("Name: $name");

  // --------------------------------------------------

  // Nullable variable
  // The '?' means this variable can store null.
  String? nickname;

  print("Nickname: $nickname"); // Output: null

  // Assigning a value later
  nickname = "Garry";

  print("Updated Nickname: $nickname");

  // --------------------------------------------------

  // Null Coalescing Operator (??)
  // If the value is null, a default value is used.
  String? city;

  print("City: ${city ?? "Unknown"}");

  // --------------------------------------------------

  // Null Aware Operator (?.)
  // Calls a property or method only if the object is not null.
  String? country;

  print("Country Length: ${country?.length}");

  // --------------------------------------------------

  // Null Assertion Operator (!)
  // Tells Dart that "I am sure this value is not null."
  // Be careful! If the value is actually null, the program crashes.

  String? college = "ABC University";

  print("College Name Length: ${college!.length}");

  // --------------------------------------------------

  // This would cause an error because 'name' cannot be null.
  // name = null;

  // This would crash the program because 'country' is null.
  // print(country!.length);
}