import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';
class SportFr extends StatefulWidget {
  const SportFr({super.key});

  @override
  State<SportFr> createState() => _SportFrState();
}

class _SportFrState extends State<SportFr> {
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
                        SkillCard('Planche ', 'assets/images/plank.jpg'),
                        SizedBox(width: 3),
                        SkillCard('Yoga', 'assets/images/yoga.jpg'),
                        SizedBox(width: 3),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 3),
                          SkillCard('Trampoline', 'assets/images/trampoline .jpg'),
                          SizedBox(width: 3),
                          SkillCard('Jambes', 'assets/images/legs.jpg'),
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
