import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'containerex.dart';
import 'dashboardscreen.dart';

void main()
{
  runApp(MaterialApp(home:MyContainer()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  late SharedPreferences sharedPrefrence;
  late bool newuser;
  late String email1;
  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();

    checklogin();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Login Form"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    TextField
                      (
                        controller:email,
                        decoration: InputDecoration(hintText: "Enter Email",enabledBorder:InputBorder.none),

                      ),
                    SizedBox(height: 10,),
                    TextField
                      (
                      controller:pass,
                      decoration: InputDecoration(hintText: "Enter Password",enabledBorder:InputBorder.none),
                      ),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                         email1 = email.text.toString();
                        String pass1 = pass.text.toString();
                        sharedPrefrence.setBool("mylogin",false);
                        sharedPrefrence.setString("myemail",email1);
                        checklogin();
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen(myemail: email1)));


                        }, child: Text("Login"))

                ],
              ),
          ),
      );
  }

  checklogin()async
  {
    sharedPrefrence = await SharedPreferences.getInstance();
    newuser = sharedPrefrence.getBool("mylogin")??true;
    print(newuser);

    if(newuser==false)
    {
      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => DashboardScreen(myemail: email1)));
    }
  }
}
