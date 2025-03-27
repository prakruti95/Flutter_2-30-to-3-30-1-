import 'dart:io';

void main()
{
  print("Enter EMP Number");
  var no = int.parse(stdin.readLineSync().toString());

  print("Enter EMP Name");
  var name = stdin.readLineSync().toString();

  print("Enter EMP Salary");
  var salary = int.parse(stdin.readLineSync().toString());
  Emp e1 = Emp();
  e1.getdetails(no, name, salary);
}
class Emp
{
    //variables
    var empno;
    var empname;
    var empsalary;

    //method//parameters
    getdetails(int no,String name,int salary)
    {
        if(salary>=30000)
        {
            print("salary is good");
        }
        else
        {
          print("Need Improvement");
        }
    }


}