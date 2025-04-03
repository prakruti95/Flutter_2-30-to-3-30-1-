class Remote
{

  void volumeUp()
  {
    print("______Volume Up from Remote_______");
  }

  void volumeDown()
  {
    print("______Volume Down from Remote_______");
  }
}

class AnotherClass
{

  void justAnotherMethod()
  {
    print("Just Another Method");
  }

}
class Television implements Remote,AnotherClass
{
  @override
  void justAnotherMethod() {
    print("Some code");
  }

  @override
  void volumeDown() {
    print("______Volume Down in Television_______");
  }

  @override
  void volumeUp() {
    print("______Volume Up in Television_______");
  }

}
void main()
{
    var t1 = Television();
    t1.volumeDown();
    t1.volumeUp();
    t1.justAnotherMethod();
}