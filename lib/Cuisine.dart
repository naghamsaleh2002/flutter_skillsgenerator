import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class Cuisine extends StatefulWidget {
  const Cuisine({super.key});

  @override
  State<Cuisine> createState() => _CuisineState();
}

class _CuisineState extends State<Cuisine> {
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
                    SkillCard('Gâteau', 'assets/images/cake.png'),
                    SizedBox(width: 3),
                    SkillCard('Gâteau Fromage', 'assets/images/cheesecake.png'),
                    SizedBox(width: 3),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 3),
                      SkillCard('Cookies', 'assets/images/cookies.png'),
                      SizedBox(width: 3),
                      SkillCard('Coulis De Fruits', 'assets/images/coulis.png'),
                      SizedBox(width: 3),
                    ]
                ),
                SizedBox(height: 10,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 3),
                      SkillCard('Éclair', 'assets/images/eclair.png'),
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


