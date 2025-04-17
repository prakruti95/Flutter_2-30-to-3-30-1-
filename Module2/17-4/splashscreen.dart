import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test1/toogleaction.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ToggleMood())));
  }
 
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          body: Center
            (
              child:Image.asset("assets/splash.jpeg")
            ),
      );
  }
}
