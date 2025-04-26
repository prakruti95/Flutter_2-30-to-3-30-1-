import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContainer extends StatelessWidget
{
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Container Ex"),),
        body: Container
          (
              height: 200,
              width: double.infinity,
              //color: Colors.blueGrey,
              alignment: Alignment.center,
              margin: EdgeInsets.all(16.00),
              padding: EdgeInsets.all(16.00),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
           child:
            GestureDetector
            (
              onTap: ()
              {
                 //callme();
                  smsme();
              },
              child: Text("SMS Me",
                  style: TextStyle(fontSize: 20)),
            ),
            )


          );

  }

   callme() async
  {
      String num = "9275003605";
      final Uri launchUri = Uri
        (
          scheme: 'tel',
          path: num,
        );
      await launchUrl(launchUri);
  }
  Future<void> smsme() async
  {
    var _url = Uri.parse("sms:9275003605");
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
  }
}
