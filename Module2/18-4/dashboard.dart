import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loginform/main.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
        appBar: AppBar
          (
            title: Text("Dashboard Screen",style: TextStyle(color: Colors.white),)
            ,backgroundColor: Colors.blueGrey,
            actions:
            [

                IconButton(
                onPressed: ()
                {
                  exit(0);
                  //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));
                }, icon: Icon(Icons.logout),color: Colors.white,)
            ],
          )


    );
  }
}
