import 'package:flutter/material.dart';
import 'package:test1/splashscreen.dart';
import 'package:test1/toogleaction.dart';

void main()
{
  runApp(MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home:SplashScreen()
    ));
}


class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int likes = 0;

  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
          appBar: AppBar(title: Text("Counter App"),),
          body: Center
            (
              child: Column
                (
                  children:
                  [

                    Text("Likes : $likes"),
                    ElevatedButton(
                        onPressed: ()
                    {
                        setState(() {
                          likes++;
                        });


                    }, child: Text("Like Here"))

                  ],
                ),
            ),
        );
  }
}
