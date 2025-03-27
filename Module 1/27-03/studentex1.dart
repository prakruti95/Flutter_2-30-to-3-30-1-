import 'dart:io';

void main()
{
    Student s1 = Student();//object create
    s1.getdetails();//method call
}
class Student
{
  //variables
    var id;
    var name;

    //method
    getdetails()
    {
      print("Enter Any Number");
      int id = int.parse(stdin.readLineSync().toString());

      print("Enter Any Name");
      String name = stdin.readLineSync().toString();

      print("Your id is $id");
      print("Your name is $name");
    }
}