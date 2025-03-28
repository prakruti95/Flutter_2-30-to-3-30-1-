void main()
{

    Student s1 = Student(101,"priyank");
    Student s2 = Student(102,"aryan");

    s1.display();
    s2.display();
}
class Student
{
  //global variables
  var id;
  var name;

  Student(var id,var name)
  {
    //local variables
      this.id = id;
      this.name = name;
  }
  display()
  {
    print("Your id is $id");
    print("Your name is $name");
  }
}