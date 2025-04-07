class Emp
{
    var _id;
    var _name;

  get id => _id;

  set id(value) {
    _id = value;
  }

  get name => _name;

  set name(value) {
    _name = value;
  }
}
void main()
{
  Emp e1 = Emp();

  //value set
  e1._id=101;
  e1._name="aryan";

  //value get
  print("id is ${e1._id}");
  print("name is ${e1._name}");
}