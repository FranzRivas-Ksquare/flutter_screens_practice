import 'package:flutter/material.dart';

class Practice7 extends  StatefulWidget{
  const Practice7({super.key});

  @override
  Practice7State createState() {
    return Practice7State();
  }
}

class Practice7State extends State<Practice7> {

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body: Center(
        child: IconButton(
          iconSize: 100,
          icon: const Icon(
            Icons.favorite,
            color: Colors.pink,
          ),
          onPressed: () {
            print('Icon Button is press');
          },
        ),
      ),
    );
  }
}