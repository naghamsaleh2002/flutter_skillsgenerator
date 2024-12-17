import 'package:flutter/material.dart';
import 'package:flutter1/ChoosingSkills.dart';
import 'mytextfield.dart';

class Useraccountpage extends StatefulWidget {
  const Useraccountpage({super.key});


  @override
  State<Useraccountpage> createState() => _UseraccountpageState();
}

class _UseraccountpageState extends State<Useraccountpage> {
String _username = '';

void updateText(String username) {
  setState(() {
    _username = username;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      resizeToAvoidBottomInset: true,
   appBar: CustomAppBar(title: 'Skills Generator'),
      body: SingleChildScrollView(
  child: Container(
  decoration: BoxDecoration(
  image: DecorationImage(
      image: AssetImage('assets/images/background1.png'),
  fit: BoxFit.cover,
  ),
  ),
  padding: const EdgeInsets.all(16.0),
  child: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
  const SizedBox(height: 10),
  Text(
  'Hello... ${_username}',
  style: const TextStyle(
  fontSize: 23.0,
  color: Colors.deepPurple,
  fontWeight: FontWeight.bold,
  ),
  ),
  const SizedBox(height: 20),
  Text(
  'Username',
  style: TextStyle(
  fontSize: 15,
  color: Colors.deepPurple,
  fontWeight: FontWeight.bold,
  ),
  ),
  SizedBox(
  width: 300.0,
  height: 50.0,
  child: TextField(
  style: const TextStyle(fontSize: 14.0, color: Colors.deepPurple),
  decoration: InputDecoration(
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.0),
  borderSide: BorderSide(
  color: Colors.deepPurple,
  width: 2.0,
  ),
  ),
  hintText: 'Enter your username',
  hintStyle: TextStyle(
  color: Colors.deepPurpleAccent,
  fontSize: 14.0,
  ),
  ),
  onChanged: (username) {
  updateText(username);
  },
  ),
  ),
  const SizedBox(height: 20),
Text1(text: 'Email'),
  mytextfield(hint: "Enter your email", ),
  const SizedBox(height: 20),
 Text1(text: 'Password'),
  PasswordTextField(),
  const SizedBox(height: 20),
  Text1(text: 'Phone Number'),
  mytextfield(hint: "Enter your phone number",),
  const SizedBox(height: 10),
  OutlinedButton(
  onPressed: () {

  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => choosingskills()),
  );
  },
  style: OutlinedButton.styleFrom(
  backgroundColor: Colors.deepPurpleAccent,

  side: BorderSide(color: Colors.deepPurple, width: 2),

  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  ),
  child: const Text(
  'Choosing Skills',
  style: TextStyle(color: Colors.white),
  ),
  ),
  const SizedBox(height: 20),
  ],
  ),
  ),
  ),
      ));
}
}