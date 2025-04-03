class Emp
{
  var _name;
  var _city;

  get name => _name;

  set name(value) {
    _name = value;
  }

  get city => _city;

  set city(value) {
    _city = value;
  }
}
void main()
{
  var e1 = Emp();
  var e2 = Emp();

  //set
  e1.name = "aryan";
  e1.city ="Rajkot";

  //get
  print("Your name is ${e1.name} and Your City is ${e1.city}");
}