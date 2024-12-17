import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class Bricolage extends StatefulWidget {
  const Bricolage({super.key});

  @override
  State<Bricolage> createState() => _BricolageState();
}

class _BricolageState extends State<Bricolage> {
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
                      SkillCard('Bougie', 'assets/images/candle.jpg'),
                      SizedBox(width: 3,),
                      SkillCard('Résine', 'assets/images/resin.jpg'),
                      SizedBox(width: 3,),



                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 3,),
                        SkillCard('Céramique', 'assets/images/ceramic.jpg'),
                        SizedBox(width: 3,),
                        SkillCard('Argile', 'assets/images/clay.jpg'),
                        SizedBox(width: 3,),
                      ]),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 3,),
                        SkillCard('Savon', 'assets/images/soap.jpg'),
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
