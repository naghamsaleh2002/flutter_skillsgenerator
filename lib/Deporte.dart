import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class Deporte extends StatefulWidget {
  const Deporte ({super.key});

  @override
  State<Deporte> createState() => _DeporteState();
}

class _DeporteState extends State<Deporte> {
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
                        SkillCard('Tablón ', 'assets/images/plank.jpg'),
                        SizedBox(width: 3),
                        SkillCard('Yoga', 'assets/images/yoga.jpg'),
                        SizedBox(width: 3),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 3),
                          SkillCard('Trampolín', 'assets/images/trampoline .jpg'),
                          SizedBox(width: 3),
                          SkillCard('Piernas', 'assets/images/legs.jpg'),
                          SizedBox(width: 3),
                        ]),
                    SizedBox(height: 10,),
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 3),
                          SkillCard('Hiit', 'assets/images/hiit.jpg'),
                          SizedBox(width: 3),

                        ]),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ]
        )
    );
  }
}
