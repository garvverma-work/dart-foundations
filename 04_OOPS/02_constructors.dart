class Book {

  String title;
  String author;
  int pages;
  bool isBorrowed;


  // Default Constructor
  // Initializes object with default values.
  Book()
      : title = "Unknown",
        author = "Unknown",
        pages = 0,
        isBorrowed = false;



  // Parameterized Constructor
  // Initializes object with values provided while creating the object.
  Book.details(this.title, this.author, this.pages)
      : isBorrowed = false;



  // Named Constructor
  // A custom constructor with a name.
  // Used to create objects with predefined values.
  Book.sample()
      : title = "Atomic Habits",
        author = "James Clear",
        pages = 320,
        isBorrowed = false;



  void displayBook() {

    print("Title      : $title");
    print("Author     : $author");
    print("Pages      : $pages");
    print("Borrowed   : $isBorrowed");
    print("-----------------------");

  }

}



// Separate class for Constant Constructor
class ConstantBook {

  final String title;
  final String author;
  final int pages;


  // Constant Constructor
  // Creates compile-time constant objects.
  // All variables must be final.
  const ConstantBook(
      this.title,
      this.author,
      this.pages
      );


  void displayBook(){

    print("Title  : $title");
    print("Author : $author");
    print("Pages  : $pages");
    print("-----------------------");

  }

}



void main() {


  // Using Default Constructor
  Book book1 = Book();


  // Using Parameterized Constructor
  Book book2 = Book.details(
      "Harry Potter",
      "J.K. Rowling",
      500
  );


  // Using Named Constructor
  Book book3 = Book.sample();



  print("DEFAULT CONSTRUCTOR");
  book1.displayBook();


  print("PARAMETERIZED CONSTRUCTOR");
  book2.displayBook();


  print("NAMED CONSTRUCTOR");
  book3.displayBook();



  // Using Constant Constructor
  const ConstantBook book4 = ConstantBook(
      "Clean Code",
      "Robert C. Martin",
      450
  );


  print("CONSTANT CONSTRUCTOR");
  book4.displayBook();

}