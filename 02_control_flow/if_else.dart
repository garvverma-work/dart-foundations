void main() {

  // ---------------------------------------------------------------------------
  // Conditional Flow Statements
  //
  // Dart provides multiple ways to execute code based on conditions:
  // 1. if
  // 2. if-else
  // 3. if-else-if
  // 4. Ternary Operator (? :)
  // 5. Null-Coalescing Operator (??)
  // 6. switch-case
  // ---------------------------------------------------------------------------

  // ===========================================================================
  // 1. if Statement
  // Executes the block only if the condition evaluates to true.
  // ===========================================================================

  var isWarning = true;

  if (isWarning) {
    print("Do not proceed");
  }

  // ===========================================================================
  // 2. if-else Statement
  // Executes one block if the condition is true,
  // otherwise executes the else block.
  // ===========================================================================

  var age = 21;

  if (age >= 18) {
    print("You are an adult");
  } else {
    print("You are not an adult");
  }

  // ===========================================================================
  // 3. if-else-if Statement
  // Used when there are multiple conditions to evaluate.
  // The first matching condition gets executed.
  // ===========================================================================

  var marks = 79;

  if (marks >= 90) {
    print("Excellent");
  } else if (marks >= 80) {
    print("Good");
  } else {
    print("Improvement is needed");
  }

  // ===========================================================================
  // 4. Ternary Operator (? :)
  // A shorthand for simple if-else statements.
  //
  // Syntax:
  // condition ? expressionIfTrue : expressionIfFalse;
  // ===========================================================================

  var userName = "STyLers";
  var nickname = "Garv";

  userName == "STyLers"
      ? print("Welcome Admin!")
      : print("Access Denied!");

  // ===========================================================================
  // Null-Coalescing Operator (??)
  //
  // Returns the left value if it is NOT null.
  // Otherwise, it returns the right value.
  //
  // Syntax:
  // variable ?? defaultValue
  // ===========================================================================

  var nameToPrint = nickname ?? "Guest User";
  print(nameToPrint);

  // ===========================================================================
  // 5. switch-case
  //
  // Used when comparing a single value against multiple possible cases.
  // The default block executes if no case matches.
  // ===========================================================================

  var grade = "Z";

  switch (grade) {
    case "A":
      print("Excellent");
      break;

    case "B":
      print("Good");
      break;

    case "C":
      print("Nice");
      break;

    case "D":
      print("Can Improve");
      break;

    case "E":
      print("Need to Improve");
      break;

    case "F":
      print("Fail");
      break;

    default:
      print("Invalid Input");
  }
}