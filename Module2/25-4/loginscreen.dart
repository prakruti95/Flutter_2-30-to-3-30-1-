import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboardscreen.dart';


class LoginScreen extends StatefulWidget
{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _MyAppState();
}

class _MyAppState extends State<LoginScreen>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  final _mykey = GlobalKey<FormState>();
  late SharedPreferences sharedPreferences;
  late bool newuser;
 @override
  void initState()
 {
   checklogin();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Login Form",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blueGrey,),
      body: Form
        (
        key: _mykey,
        child: Center
          (

          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column
              (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              [
                Container
                  (

                  child: Column
                    (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                    [

                      SizedBox(height: 10,width: 10,),
                      TextFormField
                        (
                        controller:email,
                        decoration:InputDecoration(hintText: "Enter Email Address"),
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "Please Enter Email id";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10,width: 10),
                      TextFormField
                        (
                        obscureText:true,
                        controller:pass,
                        decoration: InputDecoration(hintText: "Enter Password"),
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "Please Enter Password";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20,width: 10),
                      ElevatedButton(onPressed: ()
                      {

                        String e = email.text.toString();
                        String p = pass.text.toString();
                        if(_mykey.currentState!.validate())
                        {
                          sharedPreferences.setBool('mylogin', false);
                          sharedPreferences.setString('myemail',email.text.toString() );

                          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen(myemail:e)));
                          // if(e == "aryan@gmail.com" && p == "1234")
                          // {
                          //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logged in Succesfully")));
                          //   //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));
                          //
                          // }
                          // else
                          // {
                          //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logged in Fail")));
                          //
                          // }

                        }

                      }, child: Text("Login"),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,foregroundColor:Colors.white,textStyle:TextStyle(fontSize: 20.00,fontWeight: FontWeight.bold)),)
                    ],
                  ),
                )

                //SizedBox(height: 10,),

              ],
            ),
          ),
        ),
      ),
    );
  }

  checklogin() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    newuser = (sharedPreferences.getBool('mylogin') ?? true);
    print(newuser);

    if(newuser==false)
    {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => DashboardScreen(myemail: email.text.toString())));
    }


  }
}

