class P
{
  p()
  {
      print("p called");
  }
}
class Q extends P
{
  q()
  {
    print("q called");
  }
}
abstract class R extends P
{
  r()
  {
    print("r called");
  }
}
class S extends Q implements R
{
  s()
  {
    print("s called");
  }

  @override
  r()
  {
    print("r called");
  }
}

void main()
{
  S s1 = S();
  s1.p();
  s1.q();
  s1.r();
  s1.s();
}