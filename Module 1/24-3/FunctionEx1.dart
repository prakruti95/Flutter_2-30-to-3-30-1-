//With Para With Return type
// int calculation(int num1,int num2)
// {
//   return num1+num2;
// }

//With Para Without Return type
// calculation(int num1,int num2)
// {
//   int num3 = num1+num2;
//   print(num3);
// }
//With Return type Without Para
// int calculation()
// {
//   int num1=6;
//   int num2=5;
//   int num3 = num1+num2;
//   return num3;
// }
//Without reutrn without para
 calculation()
{
  int num1=6;
  int num2=5;
  int num3 = num1+num2;
  print(num3);
}


void main()
{

  //------------------1------------------
    // print(calculation(6,5));
    // print(calculation(2,5));
    // print(calculation(3,5));
    // print(calculation(4,5));
    // print(calculation(5,5));
  //------------------2------------------
  //   calculation(6,5);
  //   calculation(6,6);
  //   calculation(6,7);
  //------------------3------------------
  //print(calculation());
  //------------------4------------------
  calculation();
}