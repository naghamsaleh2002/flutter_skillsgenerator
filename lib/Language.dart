import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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
                SkillCard('Frensh', 'assets/images/french.jpg'),
                SizedBox(width: 3),
                SkillCard('English', 'assets/images/english.jpg'),
                SizedBox(width: 3),

              ],
            ),
            SizedBox(height: 10,),
            Row( mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 3,),
              SkillCard('Dutch', 'assets/images/deutsh.jpg'),
              SizedBox(width: 3),
              SkillCard('Spanish', 'assets/images/spanish.jpg'),
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
