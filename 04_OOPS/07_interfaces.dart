
// In Dart, every class can be used as an interface.
// The `implements` keyword forces the child class
// to provide its own implementation for every method.

class Payment {
  // Methods that act as the interface
  void pay(double amount) {}

  void generateReceipt() {}
}

// CreditCard implements the Payment interface
class CreditCard implements Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using Credit Card.");
  }

  @override
  void generateReceipt() {
    print("Credit Card receipt generated.");
  }
}

// UPI implements the Payment interface
class UPI implements Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using UPI.");
  }

  @override
  void generateReceipt() {
    print("UPI receipt generated.");
  }
}

void main() {
  CreditCard card = CreditCard();
  UPI upi = UPI();

  card.pay(500);
  card.generateReceipt();

  print("");

  upi.pay(250);
  upi.generateReceipt();
}