import 'package:flutter/material.dart';

class Practice4 extends  StatefulWidget{
  const Practice4({super.key});

  @override
  Practice4State createState() {
    return Practice4State();
  }
}

class Practice4State extends State<Practice4> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const
    TextStyle(
      fontFamily: 'Lato',
      fontSize: 35,
    ));

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: style,
          child: Container(
            padding: const EdgeInsets.all(20),
              child: const Text('Click Me')
          ),
          onPressed: () {
            print('Button is press');
          },),
      ),
    );
  }
}