import 'package:flutter/material.dart';
import 'skillscategory.dart';

class dropdownskills extends StatefulWidget {
  final Function (skills) skill;

  const dropdownskills({super.key, required this.skill});

  @override
  State<dropdownskills> createState() => _dropdownskillsState();
}

class _dropdownskillsState extends State<dropdownskills> {

  @override
  Widget build(BuildContext context) {
    return  DropdownMenu(

        dropdownMenuEntries: skill.map((skills) => DropdownMenuEntry(value: skills, label: skills.toString(),style: ButtonStyle(foregroundColor:MaterialStateProperty.all(Colors.deepPurple),textStyle: MaterialStateProperty.all(TextStyle(fontSize: 14, color: Colors.deepPurple)),),)).toList(),
            initialSelection: skill[0],

            onSelected: (skills){
          setState(() {
            widget.skill(skills!);
          });


            }

    );

  }
}



class SkillLevelSelection extends StatefulWidget {
  @override
  _SkillLevelSelectionState createState() => _SkillLevelSelectionState();
}

class _SkillLevelSelectionState extends State<SkillLevelSelection> {
  String? skill;

  void updateLevel(String newLevel) {
    setState(() {
      skill = newLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Level(
          skill: skill,
          updateLevel: updateLevel,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class Level extends StatefulWidget {
  final String? skill;
  final Function(String) updateLevel;

  Level({required this.skill, required this.updateLevel});

  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {
  String? levels;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 2,),
        Radio(
          value: 'Beginner',
          groupValue: widget.skill,
          onChanged: (value) {
            setState(() {
              levels = value as String;
              widget.updateLevel(levels!);
            });
          },
        ),
        SizedBox(width: 0,),
       Text3(text: 'Beginner'),
        SizedBox(width: 0,),
        Radio(
          value: 'Intermediate',
          groupValue: widget.skill,
          onChanged: (value) {
            setState(() {
              levels = value as String;
              widget.updateLevel(levels!);
            });
          },
        ),
        SizedBox(width: 0,),
        Text3(text: 'Intermediate'),
        SizedBox(width: 0,),
        Radio(
          value: 'Advanced',
          groupValue: widget.skill,
          onChanged: (value) {
            setState(() {
              levels = value as String;
              widget.updateLevel(levels!);
            });
          },
        ),
        SizedBox(width: 0,),
        Text3(text: 'Advanced'),
     SizedBox(width: 7,),
      ]
    );
  }
}
class Text3 extends StatelessWidget {
  final String text;

  const Text3({Key? key, required this.text ,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Colors.deepPurple,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class LanguageSelection extends StatefulWidget {
  final Function(int) onLanguageSelected;

  LanguageSelection({required this.onLanguageSelected});
  @override
  _LanguageSelectionState createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Dropdown Button
          DropdownButton<String>(
            hint: Text(
              'Select Language',
              style: TextStyle(fontSize: 14.0, color: Colors.deepPurple),
            ),
            value: selectedLanguage,
            items: <String>['English', 'French', 'Spanish']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 14, color: Colors.deepPurple),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedLanguage = newValue;
                if (newValue == 'English') {
                  widget.onLanguageSelected(0);
                } else if (newValue == 'French') {
                  widget.onLanguageSelected(1);
                } else if (newValue == 'Spanish') {
                  widget.onLanguageSelected(2);
                }
              });
            },
          ),
          SizedBox(height: 20),


        ],
      ),
    );
  }
}