import 'package:flutter/material.dart';

class mytextfield extends StatelessWidget {
  final String hint;

  mytextfield({
    super.key,
    required this.hint,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 14.0,
              ),

            ),
          ),
        ),

        const SizedBox(height: 8.0),
      ],
    );
  }
}

class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObscure = true;



  @override
  Widget build(BuildContext context) {
    return
      SizedBox(width: 300.0, height: 53.0,
        child: Column(
          children: <Widget>[
            TextField(

              style: const TextStyle(fontSize: 14.0, color: Colors.deepPurple),
              obscureText: _isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 2.0,
                  ),),
                hintText: 'Enter your password',
                hintStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 14.0,),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),

              ),
            ),
          ],
        ),
      );
  }
}

class Text1 extends StatelessWidget {
  final String text;

  const Text1({Key? key, required this.text ,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15,
        color: Colors.deepPurple,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          fontFamily: 'Montserrat',
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: [
            Shadow(
              offset: Offset(4, 4),
              blurRadius: 9,
              color: Colors.white,
            ),
          ],
          wordSpacing: 3,
          letterSpacing: 2,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}