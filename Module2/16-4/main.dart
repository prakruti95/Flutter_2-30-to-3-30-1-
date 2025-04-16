import 'package:flutter/material.dart';
import 'package:widgetex1/secondscreen.dart';

void main()
{
  runApp(MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home:MyApp()
    ));
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          appBar: AppBar(title:Text("Welcome to My First Screen",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blueGrey,),
          body:SingleChildScrollView(
          child:Center
            (
              child:Column
                (
                  children:
                  [
                    Image.network("https://www.hindustantimes.com/ht-img/img/2023/04/24/550x309/PTI04-23-2023-000079B-0_1682339869886_1682339945777.jpg",width: 250,height: 250,),
                    Text("Sachin",style: TextStyle(fontSize: 25.00,color:Colors.orange),),
                    Image.network("https://i.pinimg.com/474x/2c/85/f3/2c85f3cd66f8d3d7fcb93e6da8eee08c.jpg",width: 250,height: 250,),
                    Text("Dhoni",style: TextStyle(fontSize: 25.00,color:Colors.blue),),
                    Image.network("https://www.hindustantimes.com/ht-img/img/2023/04/24/550x309/PTI04-23-2023-000079B-0_1682339869886_1682339945777.jpg",width: 250,height: 250,),
                    Text("Sachin",style: TextStyle(fontSize: 25.00,color:Colors.orange),),
                    Image.network("https://i.pinimg.com/474x/2c/85/f3/2c85f3cd66f8d3d7fcb93e6da8eee08c.jpg",width: 250,height: 250,),
                    Text("Dhoni",style: TextStyle(fontSize: 25.00,color:Colors.blue),),
                    ElevatedButton(onPressed: ()
                    {
                      print("Hii btn clicked");
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Hello Event Called")));
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SecondScreen()));
                    }, child: Text("Submit"))
                  ],
                )




            ),
      ));
  }

}
