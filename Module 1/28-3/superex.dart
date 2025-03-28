// final
class A1
{
    var color = "black";
}
class B1 extends A1
{
  var color = "white";

  display()
  {
      print(color);//current class value
      print(super.color);//parent class value
  }
}
void main()
{
  B1 b = B1();
  b.display();
}