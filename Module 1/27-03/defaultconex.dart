void main()
{
  //when you will create an object default constructor will be called
  Student s1 = Student();
}
class Student
{
    int id=0;
    String name="";

    //default constructor
    Student()
    {
        print("Hello");
    }


}