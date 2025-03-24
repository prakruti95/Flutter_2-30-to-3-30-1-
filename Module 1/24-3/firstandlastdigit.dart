import 'dart:io';

void main()
{
  print("Enter Any Number");
  int num = int.parse(stdin.readLineSync().toString());

  int lastdigit = num%10;
  int sum=0;
  sum = (sum*10)+lastdigit;

  while (num > 0)
  {
    if (num > 9)
      num = num ~/ 10;

    else
    {
      lastdigit=num;
      sum=sum+lastdigit;
      num=num ~/ 10;
    }
  }
  print("Sum of First and Last Digit is : $sum");



}