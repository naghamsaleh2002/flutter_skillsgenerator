import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';

class Langue extends StatefulWidget {
  const Langue({super.key});

  @override
  State<Langue> createState() => _LangueState();
}

class _LangueState extends State<Langue> {
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
                        SizedBox(width: 3),
                        SkillCard('francais', 'assets/images/french.jpg'),
                        SizedBox(width: 3),
                        SkillCard('Anglais', 'assets/images/english.jpg'),
                        SizedBox(width: 3),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 3,),
                          SkillCard('Allemand', 'assets/images/deutsh.jpg'),
                          SizedBox(width: 3),
                          SkillCard('Espagnol', 'assets/images/spanish.jpg'),
                          SizedBox(width: 3),]
                    ),
                    SizedBox(height: 10,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 3,),
                          SkillCard('Communication ', 'assets/images/communication.jpg'),
                          SizedBox(width: 3,),
                        ]
                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ]
        )

    );;
  }
}
