/*
Reference video:
https://www.youtube.com/watch?v=FLQ-Vhw1NYQ&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=4
*/

void main() {
  //top level function yung void main

  print('hello world'); //print and enclose in '' not ""

  int age = 30;
  bool is30 = true;
  //declaration of variables
  // u cannot change value of variable from int to char
  //(pwede pag int to int or char to char)

  print(age); //u can print like this
  print('$age\n$is30');
  // or like this when you want multiple variables printed
  //just add '' then add $ before variable name (nasa loob ng '' yung vars )

  //=============DYNAMIC VARIABLES============
  dynamic name = 'chun-li';
  name = 30;
  print(name);
  //[dynamic] datatype allows you to change the value regardless yung datatype
  //not commonly used since dart is statically language

  //=============HOW DO WE RETURN STUFF ON A VOID FUNCTION? (FUNCTIONS)============
  String greet = greeting();
  print(greet);
  //initializes a variable which data is yung function natin
  //allows na macall yung content ng function thru this variable as shown sa baba

  //=============COMMENT TYPES============
  //comment type 1
  // /**/ comment type 2

  //=============LIST============
  List<String> characters = ['chun-li', 'yoshi', 'mario'];
  //example syntax of list
  characters.add('waluigi');
  //.add is a method -- allows to add smth sa list
  characters.remove('yoshi');
  //.remove is a mmethod -- allows to remove smth sa list
  print(characters);

  //in a list, while its not bad to mix data with diff datatype, mas better na wag
  //a good practice is to assign a datatype to a list by using <>

  //=============CLASS CALLING=============
  // Creating a new object from the User class by calling its constructor
  // 'userOne' is now an instance of User with username 'luigi' and age 25
  // You can access its properties (like username) and methods (like login)

  // User userOne = User();
  User userOne = User('luigi', 25);
  print(userOne.username);
  userOne.login();

  // Another instance of User created with different values
  User userTwo = User('mario', 30);
  print(userTwo.username);

  //=============INHERITANCE CLASS CALLING=============
  // Creating a new object from SuperUser, which inherits from User
  // 'userThree' is now an instance of SuperUser with username 'yoshi' and age 20
  // Since SuperUser extends User, it can also access the properties and methods of User
  // Like username and login(), even if not declared directly in SuperUser
  // In addition, SuperUser has its own method publish() which normal Users don't have
  SuperUser userThree = SuperUser('yoshi', 20);
  print(userThree.username);
  userThree.publish();
  userThree.login(); //can access this from user class kasi SuperUser extends-
  // -was able to inherit user class
}

//============FUNCTIONS===========

String greeting() {
  //function declaration
  //was shown kasi yung top level function is a void (does not return anything)
  return 'hello from function greeting';
}

int getAge() {
  //function declaration
  //similar scenario shown here
  return 30;
}

String month() => 'february';
//another way to declare a function (parang similar sa JS raw)

//class intitializing, pwede rin na within the class, theres a void function
//=============CLASS============
// A class is like a blueprint — lets you group properties (data) and methods (functions) together
// This `User` class has two properties: `username` (String) and `age` (int)
// We use `late` keyword so that the values can be initialized later (not immediately when declared)
// A constructor is defined: `User(String username, int age)`
// - This runs when you create a new User object
// - `this.username = username` means the value passed to constructor is stored in the property
// The class also has a method `login()` which just prints out a message
// You can create a new User by calling: User('name', age)
// You can then access the properties like: user.username or call methods like: user.login()

class User {
  // late String username = 'mario';
  // late int age = 25;
  late String username;
  late int age;

  User(String username, int age) {
    this.username = username;
    this.age = age;
  }

  void login() {
    print('user logged in');
  }
}

//inheritance inherits properties from one class into another
//=============INHERITANCE============
// The class SuperUser inherits the properties and methods from the User class
// We use `extends` to inherit from another class
// This means SuperUser can access everything inside User: like username, age, and login()
// The `super()` keyword is used to call the constructor of the parent class (User)
// A new method called publish() is added, which is exclusive to SuperUser
// Only objects of SuperUser can call publish(), but they can also use login() from User
// This is helpful when you want to reuse common logic but add extra features in some cases
//NOTE: super is built in AND cannot be replaced with other words

//EXPLANATION HOW THIS WORKS
// "SuperUser(String username, int age) : super(username, age);"
// This line means the SuperUser class is receiving username and age,
// and then passing them to the constructor of the User class using the super keyword.
// super tells Dart that the values should be used to initialize the properties
// in the parent class (User).

class SuperUser extends User {
  SuperUser(String username, int age) : super(username, age);
  void publish() {
    print('publish update');
    //scenario is only user with SuperUser can have this printed
  }
}
