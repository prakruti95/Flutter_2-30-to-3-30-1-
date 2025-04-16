import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

    return Scaffold
      (
        appBar: AppBar(title: Text("Second Page",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blueGrey,),
        body: Center
          (
            child: Container
              (
                color: Colors.blue.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row
                    (
                        children:
                        [
                            Column
                              (
                                children:
                                [
                                  CircleAvatar(backgroundImage:AssetImage("images/dhoni.jpg"),maxRadius: 40,)
                                ],
                              ),
                            Column
                              (
                                    children:
                                    [
                                        Text("Aryan",style: TextStyle(fontSize: 30.00),),
                                        Text("9988778899",style: TextStyle(fontSize: 30.00),),
                                    ],
                              )

                        ],
                    ),
                ),
              ),
          ),
    );
  }

}
