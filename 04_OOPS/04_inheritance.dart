
class Animal{

  String color = "Brown";

  void eat(){
    print("Animal is eating");
  }

}

class Dog extends Animal{

  String color = "White";
  String behaviour = "Bark";

  void eat() {
    print("Dog is eating");
  }

}

class Cat extends Animal{

  String behaviour = "Purr";

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