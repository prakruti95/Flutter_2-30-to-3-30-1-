import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:CheckboxEx()));
}
class CheckboxEx extends StatefulWidget
{
  const CheckboxEx({super.key});

  @override
  State<CheckboxEx> createState() => _CheckboxExState();
}

class _CheckboxExState extends State<CheckboxEx>
{
  bool pizza = false;
  bool burger = false;
  bool coffee = false;
  var amount = 0;
  var title="\n Selected Items : \n";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("CheckboxEx"),),
        body: Center
          (
              child: Column
                (
                  children:
                  [
                      CheckboxListTile
                        (
                          value: pizza,
                          onChanged: (value)
                          {
                              setState(()
                              {
                                if(pizza==false)
                                {
                                  pizza = true;
                                  amount+=100;
                                  title+= "\n Pizza @ Rs.100";
                                }
                                else
                                {
                                  pizza = false;

                                }
                              });
                          },
                          title: Text("Pizza"),
                          subtitle: Text("Rs.100"),
                        ),
                      CheckboxListTile
                        (
                        value: burger,
                        onChanged: (value)
                        {
                          setState(() {
                            if(burger==false)
                            {
                              burger = true;
                              amount+=70;
                              title+= "\n Burger @ Rs.70";
                            }
                            else
                            {
                              burger = false;
                            }
                          });

                        },
                        title: Text("Burger"),
                        subtitle: Text("Rs.70"),
                      ),
                    CheckboxListTile
                      (
                      value: coffee,
                      onChanged: (value)
                      {
                          setState(()
                          {
                            if(coffee==false)
                            {
                              coffee = true;
                              amount+=120;
                              title+= "\n Coffee @ Rs.120";
                            }
                            else
                            {
                              coffee = false;
                            }
                          });
                      },
                      title: Text("Coffee"),
                      subtitle: Text("Rs.120"),
                    ),
                    ElevatedButton(onPressed: ()
                    {
                          print("\n Order is : $title ,\n Total is: $amount");
                    }, child: Text("Order"))
                      //   Checkbox(value: true, onChanged: (value){}),
                      // CheckboxMenuButton(value: true, onChanged: (value){}, child: Text("Click")),
                      // CheckedPopupMenuItem()
                  ],
                ),
          ),
      );
  }
}

