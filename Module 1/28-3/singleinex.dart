class A
{
   a()
   {
      print("a called");
   }
}
class B extends A
{
  b()
  {
    print("b called");
  }
}
void main()
{
    B b1 = B();

    b1.a();
    b1.b();

}