import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class Arte extends StatefulWidget {
  const Arte({super.key});

  @override
  State<Arte> createState() => _ArteState();
}

class _ArteState extends State<Arte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: CustomAppBar(title: 'Skills Generator'),
        body:ListView(
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
                      SkillCard('dibujo ', 'assets/images/freehandrawing.png'),
                      SizedBox(width: 3),
                      SkillCard('colorear pasteles', 'assets/images/pastel.png'),
                      SizedBox(width: 3),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 3,),
                        SkillCard('Acuarela', 'assets/images/watercolor.png'),
                        SizedBox(width: 3),
                        SkillCard(' acrílica', 'assets/images/acrylic.png'),
                        SizedBox(width: 3),
                      ]
                  ),
                  SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width:  3,),
                        SkillCard('Lápiz de color  ', 'assets/images/coloredpencil.png'),
                      ])
                ],
              ),
            ),
          ],)
    );
  }



}