
class MenuItem {

  int id;
  String name;
  double price;
  String category;
  bool isAvailable;

  MenuItem(this.id, this.name, this.price, this.category)
      : isAvailable = true;

  MenuItem.pizza()
      : id = 1,
        name = "Margherita",
        price = 450.00,
        category = "PIZZA",
        isAvailable = true;

  MenuItem.burger()
      : id = 3,
        name = "Veg Crispy Burger",
        price = 90.00,
        category = "BURGER",
        isAvailable = true;

  void changeAvailability() {

    if(isAvailable){
      isAvailable = false;
    } else {
      isAvailable = true;
    }

  }

  String getAvailabilityStatus() {

    var available;
    if(isAvailable){
      available = "Available";
    } else {
      available = "Not Available";
    }

    return available;
  }

  void displayItem() {

    print(
        "---------------------"
        "\nID : $id, \nItem : $name, \nPrice : $price, \nAvailable : "
            "${getAvailabilityStatus()}"
        "\n---------------------");

  }

  void changePrice(double newPrice){

    if(newPrice < 0){
      print("Invalid Price Change.");
    } else{
      price = newPrice;
    }

  }
}

class Customer{

  int id;
  String name;
  String phoneNumber;

  List<MenuItem> cart = [];

  Customer(this.id, this.name, this.phoneNumber);

  Customer.guest(this.id, this.phoneNumber)
    : name = "Guest";

  void addToCart(MenuItem item) {

    if(item.isAvailable){

      cart.add(item);

      print("${item.name} added successfully.");

    } else{
      print("Item is not available.");
    }
  }

  void removeFromCart(int id) {

    if(cart.isEmpty){
      print("The cart is empty");

    } else if(cart.any((item) => item.id == id)){
      cart.removeWhere((item) => item.id == id);
      print("The item having ID : $id is removed");

    } else{
      print("The cart does not contain the item.");
    }

  }

  double cartTotal(){

    double total = 0;

    for(var item in cart){
      total += item.price;
    }

    return total;

  }

  void showCart() {

    print("CART ITEMS");

    for(var item in cart){
      item.displayItem();
    }

    print("The total cart value: ${cartTotal()}");
  }

  void clearCart() => cart.clear();
}

class Restaurant{

  String restaurantName;
  String restaurantAddress;
  String restaurantNumber;

  List<MenuItem> menu = [];

  List<Customer> customers = [];

  /*
  Restaurant()
    : restaurantName = "Moti Mahal",
      restaurantAddress = "Guru Gobind Path",
      restaurantNumber = 94399;
  */

  Restaurant(this.restaurantName, this.restaurantAddress, this.restaurantNumber);

  Restaurant.burgerking()
    : restaurantName = "Burger King",
      restaurantAddress = "Boring Road",
      restaurantNumber = "9334056555";

  Restaurant.dominos()
    : restaurantName = "Domino's",
      restaurantAddress = "90 Feet Road",
      restaurantNumber = "9065752909";

  void addMenuitem(MenuItem item){

    menu.add(item);
    print("${item.name} added to the menu successfully.");

  }

  void removeMenuItem(MenuItem item){

    if(menu.isEmpty){
      print("There is nothing in the menu to remove.");
    } else if (menu.contains(item)){
      menu.remove(item);
      print("${item.name} is removed from the menu successfully.");
    } else {
      print("Menu doesn't contain the item you want to remove.");
    }
  }

  void showMenu(){

    for(var item in menu){
      item.displayItem();
    }

  }

  void registerCustomer(Customer customer) {
    customers.add(customer);
    print("${customer.name} registered successfully.");
  }

  void searchMenuItemById(int id) {

    bool found = false;

    for (var item in menu) {

      if (item.id == id) {
        item.displayItem();
        found = true;
        break;
      }

    }

    if (!found) {
      print("The item is not in the menu.");
    }

  }

  void searchCustomer(int id) {

    bool found = false;

    for (var customer in customers) {

      if (customer.id == id) {
        print("Customer Name : ${customer.name}, "
            "\nCustomer ID : ${customer.id}, "
            "\nCustomer Number : ${customer.phoneNumber}");
        for(var item in customer.cart){
          item.displayItem();
        }
        found = true;
        break;
      }

    }

    if (!found) {
      print("Customer not found.");
    }

  }
}

class Order {

  int orderId;
  Customer customer;
  List<MenuItem> items;

  Order(this.orderId, this.customer, this.items);


  Order.guestOrder(this.orderId)
      : customer = Customer.guest(0, "0000000000"),
        items = [];


  double calculateTotal() {

    double total = 0;

    for(var item in items){
      total += item.price;
    }

    return total;

  }


  void showOrder(){

    print("---------------------");
    print("Order ID : $orderId");
    print("Customer : ${customer.name}");

    print("Items:");

    for(var item in items){
      item.displayItem();
    }

    print("Total Amount : ${calculateTotal()}");
    print("---------------------");

  }
}

void main() {

  // Creating Restaurant
  Restaurant restaurant = Restaurant.dominos();

  // Creating Menu Items
  MenuItem pizza = MenuItem.pizza();
  MenuItem burger = MenuItem.burger();
  MenuItem coke = MenuItem(
      4,
      "Coke",
      60.00,
      "DRINK"
  );

  // Adding items to Restaurant Menu
  restaurant.addMenuitem(pizza);
  restaurant.addMenuitem(burger);
  restaurant.addMenuitem(coke);

  print("\nRESTAURANT MENU");
  restaurant.showMenu();

  // Creating Customer
  Customer customer1 = Customer(
      1,
      "Garv",
      "9999999999"
  );

  // Registering Customer
  restaurant.registerCustomer(customer1);

  // Customer adding items to cart
  customer1.addToCart(pizza);
  customer1.addToCart(burger);

  customer1.showCart();

  // Creating Order from customer's cart
  Order order1 = Order(
      101,
      customer1,
      customer1.cart
  );

  print("\nORDER DETAILS");
  order1.showOrder();

}

