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
class C extends B
{
  c()
  {
    print("c called");
  }
}
void main()
{
   C c1 = C();
   c1.a();
   c1.b();
   c1.c();

}