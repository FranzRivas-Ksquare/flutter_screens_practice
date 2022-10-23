import 'package:flutter/material.dart';

class Practice12 extends StatefulWidget {
  const Practice12({super.key});

  @override
  Practice12State createState() {
    return Practice12State();
  }

}

class Practice12State extends State<Practice12> {
  @override
  Widget build(BuildContext context){
    final ButtonStyle style =
    OutlinedButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
        textStyle: const TextStyle(
          fontSize: 25,
          fontFamily: 'Lato',
        ),
        foregroundColor: Colors.cyanAccent,
        side: const BorderSide(width: 2, color: Colors.cyanAccent)
    );

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 380,
          child: OutlinedButton(
            style: style,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/google.png',
                  scale: 24,
                ),
                const Text('Continue with Google'),
              ],
            ),
            onPressed: () {
              print('Google button was click');
            },

          ),
        ),
      ),
    );
  }
}