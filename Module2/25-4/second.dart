import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget
{
  String myname;
  SecondPage({required this.myname});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Welcome ${widget.myname}"),),
      );
  }
}
