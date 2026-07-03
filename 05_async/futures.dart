
// EXCEPTION HANDLING
//
// Exception handling is used to handle runtime errors gracefully,
// preventing the program from crashing unexpectedly.
//
// Keywords covered:
// 1. try        -> Wraps code that may throw an exception.
// 2. on         -> Catches a specific type of exception.
// 3. catch      -> Gives access to the exception object.
// 4. StackTrace -> Shows where the exception occurred.
// 5. finally    -> Always executes, whether an exception occurs or not.

void main() {

  // ==========================================================
  // Example 1: Handling a specific exception using `on`
  // ==========================================================

  var characters = [
    "Naruto",
    "Sasuke",
    "Sakura",
    "Kakashi",
    "Itachi"
  ];

  try {
    // Accessing an invalid index throws a RangeError.
    print(characters[10]);
  } on RangeError {
    print("There are not enough characters listed.");
  }

  // ==========================================================
  // Example 2: Using catch, StackTrace, and finally
  // ==========================================================

  try {
    print(characters[10]);
  } catch (e, s) {

    // `e` contains the exception object.
    print("The cause of the error is $e");

    // `s` contains the stack trace, showing where
    // the exception originated.
    print("STACKTRACE\n$s");

  } finally {

    // This block always executes.
    print("Program finished.");
  }

  print("");

  // ==========================================================
  // Example 3: UnsupportedError
  // ==========================================================

  // A const list is immutable.
  const functions = [
    "Savings",
    "Current",
    "Salary"
  ];

  try {

    // Trying to modify a const list throws an UnsupportedError.
    functions.add("Fixed Deposit");

  } catch (e, s) {

    print("The cause of the error is $e");
    print("STACKTRACE\n$s");

  } finally {

    // Always executes before exiting the try-catch block.
    print("Program Finished");
  }
  // Refactoring the file
}