import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class Cocina extends StatefulWidget {
  const Cocina({super.key});

  @override
  State<Cocina> createState() => _CocinaState();
}

class _CocinaState extends State<Cocina> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(title: 'Skills Generator'),
      body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget> [Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: 3),
                    SkillCard('pastel', 'assets/images/cake.png'),
                    SizedBox(width: 3),
                    SkillCard('pastel de queso', 'assets/images/cheesecake.png'),
                    SizedBox(width: 3),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 3),
                      SkillCard('Galletas', 'assets/images/cookies.png'),
                      SizedBox(width: 3),
                      SkillCard('Coulis de frutas', 'assets/images/coulis.png'),
                      SizedBox(width: 3),
                    ]
                ),
                SizedBox(height: 10,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 3),
                      SkillCard('Destello', 'assets/images/eclair.png'),
                      SizedBox(width: 3),
                    ]
                )
              ],
            ),
          ),

          ]
      ),
    );
  }


}


