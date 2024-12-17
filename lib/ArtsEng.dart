import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class ArtsEng extends StatefulWidget {
  const ArtsEng({super.key});

  @override
  State<ArtsEng> createState() => _ArtsEngState();
}

class _ArtsEngState extends State<ArtsEng> {
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
              SkillCard('Freehand Drawing', 'assets/images/freehandrawing.png'),
              SizedBox(width: 3),
              SkillCard('Pastel Coloring', 'assets/images/pastel.png'),
              SizedBox(width: 3),

            ],
          ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: 3,),
                    SkillCard('WaterColor', 'assets/images/watercolor.png'),
                SizedBox(width: 3), // Add some spacing between the cards
                SkillCard('Acrylic Coloring', 'assets/images/acrylic.png'),
                SizedBox(width: 3),
                ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width:  3,),
                    SkillCard('Colored Pencil ', 'assets/images/coloredpencil.png'),
              ])
            ],
          ),
        ),
      ],)
    );
  }



}