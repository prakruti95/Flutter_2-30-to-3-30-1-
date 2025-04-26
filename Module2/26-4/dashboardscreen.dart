import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class DashboardScreen extends StatefulWidget
{
  String myemail;
  DashboardScreen({required this.myemail});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
{
  late String email;

  late SharedPreferences sharedPrefrence;
  @override
  void initState()
  {
    initial();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Welcome $email"),
        actions:
        [
          IconButton(onPressed: ()
          {
            sharedPrefrence.setBool("mylogin",true);
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));
          }, icon: Icon(Icons.logout))
        ],),
      );
  }


  initial() async
  {
    sharedPrefrence = await SharedPreferences.getInstance();
    setState(() {

      email = sharedPrefrence.getString('myemail')!;

    });

  }
}
