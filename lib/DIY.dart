import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class DIY extends StatefulWidget {
  const DIY({super.key});

  @override
  State<DIY> createState() => _DIYState();
}

class _DIYState extends State<DIY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar:CustomAppBar(title: 'Skills Generator'),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget> [
          Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 3,),
                SkillCard('Candle', 'assets/images/candle.jpg'),
                SizedBox(width: 3,),
                SkillCard('Resin', 'assets/images/resin.jpg'),
                SizedBox(width: 3,),



              ],
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 3,),
                  SkillCard('Ceramics', 'assets/images/ceramic.jpg'),
                  SizedBox(width: 3,),
                  SkillCard('Clay ', 'assets/images/clay.jpg'),
                  SizedBox(width: 3,),
                ]),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 3,),
                  SkillCard('Soap', 'assets/images/soap.jpg'),
                  SizedBox(width: 3,),
                ]),
          ],
        ),
      ),
    ],
    )
    );
  }
}
