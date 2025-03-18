import 'dart:io';

void main()
{

    print("Enter Your Name: ");
    String name = stdin.readLineSync().toString();
    print("Welcome $name");

    print("Enter Your Marks: ");
    var marks = double.parse(stdin.readLineSync().toString());//type casting

    if(marks>=35)
    {
        print("$name You are Pass");
    }
    else
    {
      print("$name You are Fail");
    }


}