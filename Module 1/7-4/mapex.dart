void main()
{
  Map map = Map<String,dynamic>();

  map.putIfAbsent("a", () => 101);
  map.putIfAbsent("b", () => 102);
  map.putIfAbsent("c", () => 103);

  for(var i in map.entries)
  {
      //print(i.key);
     // print(i.value);
  }

 // print(map.keys);
  //print(map.values);

  print(map.containsKey("a1"));

}


