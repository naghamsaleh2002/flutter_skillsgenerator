import 'package:flutter/material.dart';
import 'UserAccountPage.dart';
class home extends StatefulWidget {
  const home ({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 190),
              const Text(
                'Skills Generator',
                style: TextStyle(
                  fontSize: 34,
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  shadows: [
                    Shadow(
                      offset: Offset(4, 4),
                      blurRadius: 4,
                      color: Colors.deepPurpleAccent,
                    ),
                  ],
                  wordSpacing: 3,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Useraccountpage()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,

                  side: BorderSide(color: Colors.deepPurple, width: 2),

                  padding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10),
                ),
                child: const Text(
                  'Create Account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
