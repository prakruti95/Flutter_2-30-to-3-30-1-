import 'dart:io';

void main()
{
  int num1=0;
  int num2=1;
  int fib=0;

  print("Enter Any number");
  int loop = int.parse(stdin.readLineSync().toString());

  while (loop > 0)
  {
    fib =num1+num2;//1
    num1=num2;
    num2=fib;
    loop--;
  }
  print("Fibonaaci value is $fib");

}