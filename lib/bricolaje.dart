import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class Bricolaje extends StatefulWidget {
  const Bricolaje({super.key});

  @override
  State<Bricolaje> createState() => _BricolajeState();
}

class _BricolajeState extends State<Bricolaje> {
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
                      SkillCard('Vela', 'assets/images/candle.jpg'),
                      SizedBox(width: 3,),
                      SkillCard('Resina', 'assets/images/resin.jpg'),
                      SizedBox(width: 3,),



                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 3,),
                        SkillCard('Cerámico', 'assets/images/ceramic.jpg'),
                        SizedBox(width: 3,),
                        SkillCard('Arcilla', 'assets/images/clay.jpg'),
                        SizedBox(width: 3,),
                      ]),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 3,),
                        SkillCard('Jabón', 'assets/images/soap.jpg'),
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
