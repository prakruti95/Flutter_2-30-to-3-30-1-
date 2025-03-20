import 'dart:io';

void main()
{

  print("Enter Any Number");
  var num = int.parse(stdin.readLineSync().toString());


  var max=0;

  while(num>0)
  {
    var rem = num%10;

    //sum+=rem;
      if(rem>max)
      {
        max = rem;
      }


    num=num ~/ 10;

  }
  print("Max is : $max");
}