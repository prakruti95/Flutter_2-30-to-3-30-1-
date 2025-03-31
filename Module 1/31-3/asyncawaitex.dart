Future<void> tops()async
{
  return Future.delayed(Duration(seconds:3),() => print("Is"));
}

void main()async
{
  print("Life");
  await tops();
  print("Good");
}