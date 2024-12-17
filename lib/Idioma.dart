import 'package:flutter/material.dart';
import 'SkillCard.dart';
import 'mytextfield.dart';

class Idioma extends StatefulWidget {
  const  Idioma({super.key});

  @override
  State< Idioma> createState() => _IdiomaState();
}

class _IdiomaState extends State< Idioma> {
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
                        SkillCard('Francés', 'assets/images/french.jpg'),
                        SizedBox(width: 3),
                        SkillCard('Inglés', 'assets/images/english.jpg'),
                        SizedBox(width: 3),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 3,),
                          SkillCard('Alemán', 'assets/images/deutsh.jpg'),
                          SizedBox(width: 3),
                          SkillCard('Español', 'assets/images/spanish.jpg'),
                          SizedBox(width: 3),]
                    ),
                    SizedBox(height: 10,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 3,),
                          SkillCard('Comunicación', 'assets/images/communication.jpg'),
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
