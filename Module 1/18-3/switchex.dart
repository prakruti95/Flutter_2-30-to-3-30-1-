import 'dart:io';

void main()
{
  print("\n For English Press 1 \n For Hindi Press 2 \n For Gujarati Press 3");

  print("\n Enter Your Num");
  var num = int.parse(stdin.readLineSync().toString());

  switch(num)
  {
    case 1:print("Your Selected Language is English");

    case 2:print("Your Selected Language is Hindi");

    case 3:print("Your Selected Language is Gujarati");

  }

}