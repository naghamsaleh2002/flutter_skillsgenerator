import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter1/Cooking.dart';
import 'package:flutter1/Deporte.dart';
import 'package:flutter1/Idioma.dart';
import 'package:flutter1/bricolaje.dart';
import 'package:flutter1/skillscategory.dart';
import 'dropdownskills.dart';
import 'ArtsEng.dart';
import 'Sport.dart';
import 'Language.dart';
import 'DIY.dart';
import 'mytextfield.dart';
import 'ArtFr.dart';
import 'Cuisine.dart';
import 'SportFr.dart';
import 'Bricolage.dart';
import 'package:flutter1/Langue.dart';
import 'package:flutter1/Arte.dart';
import 'Cocina.dart';
class choosingskills extends StatefulWidget {
  const choosingskills({super.key});

  @override
  State<choosingskills> createState() => _choosingskillsState();
}

class _choosingskillsState extends State<choosingskills> {
  skills s = skill[0];
  int selectedLanguageIndex = -1;

  void handleLanguageSelection(int index) {
    setState(() {
      selectedLanguageIndex = index;
    });
  }
  final TextEditingController _durationController = TextEditingController();
  String? _errorMessage;
  @override
  Widget build(BuildContext context) {
    BorderSide side = BorderSide(
      style: BorderStyle.none,
    );
    TextStyle textStyle = TextStyle(
      color: Colors.deepPurple

    );


    return Scaffold(
      resizeToAvoidBottomInset: true,
        appBar: CustomAppBar(title: 'Skills Generator'),
        body: SingleChildScrollView( child: Container(

        decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage(' assets/images/background1.png'),
    fit: BoxFit.cover,
    ),
    ),
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    const SizedBox(height: 30),
    Text2(text: 'Category Selection'),
     SizedBox(height: 10,),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.fromBorderSide(side),


        ),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: dropdownskills(
          skill: (skill) {
            this.s = skill;
            },
        ),
      ),
     SizedBox(height: 10,),
     Text2(text: 'Practice Duration'),
     SizedBox(height: 10,),
     SizedBox(
       width: 268,
    child:  TextField(
      controller: _durationController,
      style: const TextStyle(fontSize: 14.0, color: Colors.deepPurpleAccent,),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.deepPurple,
            width: 2.0,
          ),
        ),
        hintText: 'Hours per week..',
        hintStyle:  TextStyle(
          color: Colors.deepPurple,
          fontSize: 14.0,

        ),
      ),

    )

     ) ,
      if (_errorMessage != null)
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            _errorMessage!,
            style: TextStyle(color: Colors.deepPurple),
          ),
        ),
  SizedBox(height: 5,),
      Text2(text: 'Skill Levels'),
      SizedBox(height: 10,),
      SkillLevelSelection(),
      SizedBox(height: 10,),
      Text2(text: 'Language Preference'),
      LanguageSelection(onLanguageSelected: handleLanguageSelection),
      SizedBox(height: 10,),
      OutlinedButton(
        onPressed: () {


      if (_durationController.text.isEmpty) {
        setState(() {
          _errorMessage = 'Please enter a duration.';
        });
      } else {
        setState(() {
          _errorMessage = null;
        });}
          if (s== skill[0] && selectedLanguageIndex ==0 ) {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ArtsEng()),
            );
          }
          else if(s==skill[0] && selectedLanguageIndex ==1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ArtFr()),
            );

          }
          else if(s==skill[0] && selectedLanguageIndex ==2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Arte()),
            );

          }
          else if(s==skill[1] && selectedLanguageIndex ==1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cuisine()),
            );

          }

          else if(s==skill[1] && selectedLanguageIndex ==2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cocina()),
            );

          }
          else if(s==skill[1] && selectedLanguageIndex ==0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cooking()),
            );
          }
          else if(s==skill[2] && selectedLanguageIndex ==1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Langue()),
            );
          }  else if(s==skill[2] && selectedLanguageIndex ==2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Idioma()),
            );

          }
          else if(s==skill[2]&& selectedLanguageIndex ==0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Language()),
            );

          }else if(s==skill[4] && selectedLanguageIndex ==1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SportFr()),
            );

          }
          else if(s==skill[4]&& selectedLanguageIndex ==0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Sport()),
            );

          }
          else if(s==skill[4]&& selectedLanguageIndex ==2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Deporte()),
            );

          }
          else if(s==skill[3] && selectedLanguageIndex ==1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Bricolage()),
            );

          }
          else if(s==skill[3] && selectedLanguageIndex ==2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Bricolaje()),
            );

          }
          else if(s==skill[3]&& selectedLanguageIndex ==0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DIY()),
            );

          }
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.deepPurpleAccent,
          side: BorderSide(color: Colors.deepPurple, width: 2),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        child: const Text(
          'Lets Start...',
          style: TextStyle(color: Colors.white),
        ),

      ),
    ]
      ),
        ),
    ),
        )
    );

  }
}


class Text2 extends StatelessWidget {
  final String text;

  const Text2({Key? key, required this.text ,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        color: Colors.deepPurpleAccent,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
