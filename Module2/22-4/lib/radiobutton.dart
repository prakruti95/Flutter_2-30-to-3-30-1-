import 'package:flutter/material.dart';

class RadioButtonEx extends StatefulWidget
{
  const RadioButtonEx({super.key});

  @override
  State<RadioButtonEx> createState() => _RadioButtonExState();
}
enum Gender {male,female}

class _RadioButtonExState extends State<RadioButtonEx>
{
  bool gender = false;
  Gender _gen = Gender.male;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("radio button"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                  ListTile
                    (
                        title: Text("Male"),
                        leading: Radio
                          (
                          value: Gender.male,
                          groupValue: _gen,
                          onChanged: (value)
                          {
                            setState(() {
                              _gen = value!;
                            });
                          },
                        ),
                    ),
                    ListTile
                    (
                      title: Text("Female"),
                      leading: Radio(
                        value: Gender.female,
                        groupValue: _gen,
                        onChanged: (value)
                        {
                          setState(() {
                            _gen = value!;
                          });
                        },),
                    )

                ],
              ),
          ),
      );
  }
}
