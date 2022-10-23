import 'package:flutter/material.dart';

class Practice2 extends StatelessWidget {
  const Practice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.network(
            'https://img.icons8.com/color/480/google-logo.png',
            scale: 5.0,
          ),
        ),
      ),
    );
  }
}