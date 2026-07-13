
// Parent class
class Animal {

  String name;
  int age;

  // Parent parameterized constructor
  Animal(this.name, this.age);

  void displayAnimal() {
    print("Animal Name: $name");
    print("Animal Age: $age");
  }

}

// Child class inheriting Animal
class Dog extends Animal {

  String breed;

  // Child constructor
  // Calling parent constructor using super()
  Dog(String name, int age, this.breed) : super(name, age);


  void displayDog() {
    // Calling parent class method
    displayAnimal();

    // Child class property
    print("Dog Breed: $breed");
  }

}

void main() {

  // Creating object of child class
  // Dog constructor receives name, age, and breed
  var dog1 = Dog("Bruno", 3, "Labrador");


  // Calling child class method
  dog1.displayDog();

}