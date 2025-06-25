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

  //===========CLASSES==========
  
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
