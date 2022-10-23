import 'package:flutter/material.dart';

class Practice1 extends StatelessWidget {
  const Practice1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Text(
            'Hello Flutter!',
            style: TextStyle(
              fontFamily: 'Lato',
              color: Colors.white,
              fontSize: 44,
            ),
          ),
        ),
      ),
    );
  }
}