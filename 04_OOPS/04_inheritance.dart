class Animal{

  // Parent class properties.
  String color = "Brown";

  // Parent class method.
  void eat(){
    print("Animal is eating");
  }

}

class Dog extends Animal{

  // Hides the parent's color field.
  String color = "White";
  String behaviour = "Bark";

  // Overridden method.
  @override
  void eat() {
    print("Dog is eating");
  }

}

class Cat extends Animal{

  String behaviour = "Purr";

  // Calls the parent method before adding its own behavior.
  @override
  void eat() {
    super.eat();
    print("Cat is eating");
  }

}

void main() {

  Dog Labrador = Dog();

  print(Labrador.color);
  Labrador.eat();
  print(Labrador.behaviour);

  Cat Persian = Cat();

  print(Persian.color);
  print(Persian.behaviour);
  Persian.eat();

}