import 'dart:io';

void main()
{
  int a=1,factorial=1;

  print("Enter Any number");
  int num = int.parse(stdin.readLineSync().toString());

  while (a<=num)
  {
    factorial=factorial*a;
    a++;
  }
  print("Factorial for is $factorial");
}