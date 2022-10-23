import 'package:flutter/material.dart';

class Practice9 extends StatelessWidget {
  const Practice9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5D2),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://img.icons8.com/color/480/google-logo.png',
                scale: 3.0,
              ),
              const Text(
                'Google.com',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontSize: 24,
                ),),
              const SizedBox(height: 10),
              const Text(
                'Search whatever you want',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontSize: 18,
                ),),
            ],
          ),
        ),
      ),
    );
  }
}