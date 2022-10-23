import 'package:flutter/material.dart';

class Practice5 extends  StatefulWidget{
  const Practice5({super.key});

  @override
  Practice5State createState() {
    return Practice5State();
  }
}

class Practice5State extends State<Practice5> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    TextButton.styleFrom(
      padding: const EdgeInsets.all(20),
      foregroundColor: Colors.pink,
    );

    return Scaffold(
      body: Center(
        child: TextButton(
          style: style,
          child: const Text('Click Me', style: TextStyle(
              fontSize: 30,
              fontFamily: 'Lato'),),
          onPressed: () {
            print('Button is press');
          },),
      ),
    );
  }
}