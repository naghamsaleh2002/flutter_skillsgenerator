import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class ArtFr extends StatefulWidget {
  const ArtFr({super.key});

  @override
  State<ArtFr> createState() => _ArtFrState();
}

class _ArtFrState extends State<ArtFr> {
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
                      SkillCard('Dessin ', 'assets/images/freehandrawing.png'),
                      SizedBox(width: 3),
                      SkillCard(' pastel', 'assets/images/pastel.png'),
                      SizedBox(width: 3),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 3,),
                        SkillCard('Aquarelle', 'assets/images/watercolor.png'),
                        SizedBox(width: 3),
                        SkillCard('Acrylique', 'assets/images/acrylic.png'),
                        SizedBox(width: 3),
                      ]
                  ),
                  SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width:  3,),
                        SkillCard('Crayon de couleur ', 'assets/images/coloredpencil.png'),
                      ])
                ],
              ),
            ),
          ],)
    );
  }



}