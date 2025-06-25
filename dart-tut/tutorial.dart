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

  dynamic name = 'chun-li';
  name = 30;
  print(name);
  //[dynamic] datatype allows you to change the value regardless yung datatype
  //not commonly used since dart is statically language

  String greet = greeting();
  print(greet);

  int ageGet = getAge();
  print(ageGet);
}

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
