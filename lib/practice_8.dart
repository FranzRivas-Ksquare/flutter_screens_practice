import 'package:flutter/material.dart';

class Practice8 extends StatelessWidget {
  const Practice8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://img.icons8.com/color/480/google-logo.png',
                scale: 3.0,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Google.com',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 24,
                ),),
            ],
          ),
        ),
      ),
    );
  }
}