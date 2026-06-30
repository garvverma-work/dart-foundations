
// ---------------------------------------------------------------------------
// HIGHER ORDER FUNCTIONS
//
// A Higher Order Function is a function that:
// 1. Accepts another function as a parameter
// 2. Returns another function
// ---------------------------------------------------------------------------

void main() {

  // ===========================================================================
  // Example 1: Passing a function as a parameter
  //
  // Here, `calc` accepts a function (divide) and executes it.
  // ===========================================================================

  num result = calc(10, 5, divide);
  print(result);

  print("");

  // ===========================================================================
  // Example 2: Returning a function from another function
  //
  // `getGreeting` returns a function based on the input type.
  // ===========================================================================

  var greet = getGreeting("formal");
  greet("Garv");
}

// ---------------------------------------------------------------------------
// Higher Order Function: accepts another function as parameter
// ---------------------------------------------------------------------------

num calc(int a, int b, num Function(int, int) myFunc) {
  return myFunc(a, b);
}

// ---------------------------------------------------------------------------
// Basic arithmetic functions (used as callbacks)
// ---------------------------------------------------------------------------

num add(int a, int b) {
  return a + b;
}

num sub(int a, int b) {
  return a - b;
}

num multiply(int a, int b) {
  return a * b;
}

num divide(int a, int b) {
  return a / b;
}

// ---------------------------------------------------------------------------
// Higher Order Function: returns another function
// ---------------------------------------------------------------------------

Function getGreeting(String type) {

  if (type == "formal") {
    return formalGreet;
  } else if (type == "casual") {
    return casualGreet;
  } else if (type == "friendly") {
    return friendlyGreet;
  } else {
    return (name) => print("Hello $name");
  }
}

// ---------------------------------------------------------------------------
// Greeting functions (returned dynamically)
// ---------------------------------------------------------------------------

void formalGreet(String name) {
  print("Good evening, $name");
}

void casualGreet(String name) {
  print("Hey $name!");
}

void friendlyGreet(String name) {
  print("Welcome back, $name! 😊");
}