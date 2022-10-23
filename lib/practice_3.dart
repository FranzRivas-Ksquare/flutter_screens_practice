import 'package:flutter/material.dart';

class Practice3 extends StatelessWidget {
  const Practice3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50.0,
            backgroundImage: NetworkImage('https://img.icons8.com/color/480/google-logo.png'),
          ),
        ),
      ),
    );
  }
}