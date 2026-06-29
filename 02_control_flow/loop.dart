
void main() {
  // ---------------------------------------------------------------------------
  // Loops
  //
  // Loops are used to execute a block of code repeatedly until
  // a specified condition is no longer true.
  //
  // Types of loops in Dart:
  // 1. for
  // 2. for-in
  // 3. while
  // 4. do-while
  // ---------------------------------------------------------------------------

  // ===========================================================================
  // 1. for Loop
  //
  // Used when the number of iterations is known beforehand.
  // Syntax:
  // for (initialization; condition; increment/decrement)
  // ===========================================================================

  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  // ===========================================================================
  // 2. for-in Loop
  //
  // Used to iterate over each element of a collection such as
  // a List, Set, or Map.
  // ===========================================================================

  var solarSystem = [
    "Mercury",
    "Venus",
    "Earth",
    "Mars",
    "Jupiter",
    "Saturn",
    "Uranus",
    "Neptune"
  ];

  for (String planet in solarSystem) {
    print(planet);
  }

  // ===========================================================================
  // 3. while Loop
  //
  // Executes the block as long as the condition remains true.
  // The condition is checked before each iteration.
  // ===========================================================================

  int i = 1;

  while (i <= 5) {
    print(i);
    i++;
  }

  // ===========================================================================
  // 4. do-while Loop
  //
  // Similar to the while loop, but the code block is executed
  // at least once before checking the condition.
  // ===========================================================================

  int j = 1;

  do {
    print("Howdy");
    j++;
  } while (j <= 5);

  // ===========================================================================
  // break Statement
  //
  // Immediately exits the nearest loop when encountered.
  // ===========================================================================

  for (int k = 1; k <= 5; k++) {
    if (k == 3) {
      break;
    }

    print(k);
  }

  // ===========================================================================
  // continue Statement
  //
  // Skips the current iteration and continues with the next one.
  // ===========================================================================

  for (int l = 1; l <= 5; l++) {
    if (l == 3) {
      continue;
    }

    print(l);
  }

}