
// Abstract class
// An abstract class cannot be instantiated directly.
// It is used as a blueprint for other classes.
abstract class Animal {
  // Abstract method (no body)
  void makeSound();

  // Normal method
  void eat() {
    print("Animal is eating.");
  }
}

// Dog inherits from Animal
class Dog extends Animal {
  // We must override the abstract method
  @override
  void makeSound() {
    print("Dog barks: Woof! Woof!");
  }
}

// Cat inherits from Animal
class Cat extends Animal {
  // We must override the abstract method
  @override
  void makeSound() {
    print("Cat meows: Meow!");
  }
}

void main() {
  // Creating objects of child classes
  Dog dog = Dog();
  Cat cat = Cat();

  // Calling methods
  dog.makeSound();
  dog.eat();

  print("");

  cat.makeSound();
  cat.eat();
}