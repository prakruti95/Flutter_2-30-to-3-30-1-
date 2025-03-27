void main()
{
    Student s1 = Student(101,"priyank");
    Student s2 = Student(102,"aryan");

    s1.display();
    s2.display();
}
class Student
{
  var id;
  var name;

  Student(var i,var n)
  {
      id = i;
      name = n;
  }
  display()
  {
    print("Your id is $id");
    print("Your name is $name");
  }
}