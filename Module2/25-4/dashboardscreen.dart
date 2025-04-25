import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test12/loginscreen.dart';

class DashboardScreen extends StatefulWidget
{
  String myemail;

  DashboardScreen({required this.myemail});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
{
  late SharedPreferences sharedPreferences;
  late String email;
  @override
  void initState() {
    // TODO: implement initState
    initial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title:Text("Welcome $email"),actions:
        [
          IconButton(onPressed: ()
          {
            sharedPreferences.setBool('mylogin', true);
            Navigator.pushReplacement(context,
                new MaterialPageRoute(builder: (context) => LoginScreen()));
          }, icon: Icon(Icons.logout))
        ],),
        body: Center
          (

          ),
      );
  }

  initial()async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {

      email = sharedPreferences.getString('myemail')!;

    });
  }
}
