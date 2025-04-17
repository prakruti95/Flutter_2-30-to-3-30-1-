import 'package:flutter/material.dart';

import 'main.dart';

class ToggleMood extends StatefulWidget
{
  const ToggleMood({super.key});

  @override
  State<ToggleMood> createState() => _ToggleMoodState();
}

class _ToggleMoodState extends State<ToggleMood>
{
  bool _isHappy = true;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Change Mood"),),
        body: Center
          (
              child: Column
                (
                  children:
                  [
                      Text(  _isHappy ? '😊 Happy' : '😔 Sad',),
                      ElevatedButton(onPressed: ()
                      {
                            _togglemood();
                      }, child: Text("Change Mood")),

                    ElevatedButton(onPressed: ()
                    {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));
                    }, child: Text("Switch to Next Screen"))


                  ],
                ),
          ),
      );
  }

  void _togglemood()
  {
    setState(() {
     // _isHappy=false;
      _isHappy = !_isHappy;
    });


  }
}
