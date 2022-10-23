import 'package:flutter/material.dart';

class Practice6 extends  StatefulWidget{
  const Practice6({super.key});

  @override
  Practice6State createState() {
    return Practice6State();
  }
}

class Practice6State extends State<Practice6> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    OutlinedButton.styleFrom(
      foregroundColor: Colors.greenAccent,
      side: const BorderSide(width: 3, color: Colors.greenAccent)
    );

    return Scaffold(
      body: Center(
        child: OutlinedButton(
          style: style,
          child: Container(
            padding: EdgeInsets.all(30),
            child: const Text('Click Me',
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Lato'),
            ),
          ),
          onPressed: () {
            print('Outline Button is press');
          },
        ),
      ),
    );
  }
}