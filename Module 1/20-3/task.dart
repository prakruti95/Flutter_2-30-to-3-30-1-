import 'dart:io';

void main()
{

  print("Enter Any Number");
  var num = int.parse(stdin.readLineSync().toString());


  var sum=0;

  while(num>0)
  {
      var rem = num%10;//4//3//2//1
      sum+=rem;//0+4//4+3//7+2=9+1=10
      num=num ~/ 10;//123//12//1

  }
  print("Sum is : $sum");
}