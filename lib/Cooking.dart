import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class Cooking extends StatefulWidget {
  const Cooking({super.key});

  @override
  State<Cooking> createState() => _CookingState();
}

class _CookingState extends State<Cooking> {
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
                SkillCard('Cake', 'assets/images/cake.png'),
                SizedBox(width: 3), 
                SkillCard('Cheese Cake', 'assets/images/cheesecake.png'),
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
 
                  SkillCard('Fruits Coulis', 'assets/images/coulis.png'),
                  SizedBox(width: 3),
                ]
            ),
            SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: <Widget>[
                  SizedBox(width: 3), 
                  SkillCard('Eclair ', 'assets/images/eclair.png'),
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


