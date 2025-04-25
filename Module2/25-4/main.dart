import 'package:flutter/material.dart';
import 'package:test12/second.dart';

import 'loginscreen.dart';

void main()
{
  runApp(MaterialApp(home:LoginScreen()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Pass data"),),
        body: Center
          (
            child: Column
              (
                children:
                [

                    TextField(controller: name,decoration: InputDecoration(hintText: "Enter Your Name"),),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage(myname:name.text.toString())));

                    }, child: Text("Click Here"))


                ],
              ),
          ),
      );
  }
}

