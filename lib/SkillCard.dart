import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const SkillCard(this.title, this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.deepPurpleAccent,
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          Image.asset(
            imagePath,
            fit: BoxFit.contain,
            height: 135,
            width: 135,
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.deepPurple),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}