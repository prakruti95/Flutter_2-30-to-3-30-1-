class Person
{
  String call(int age, String name)
  {
    return "The name of the person is $name and age is $age";
  }
}
void main()
{
  var p1 = Person();
  var msg = p1(101,"xyz");
  print(msg);

 // print(p1.call(25, "aaa"));

}