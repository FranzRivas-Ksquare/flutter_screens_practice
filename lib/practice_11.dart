import 'package:flutter/material.dart';

class Practice11 extends StatelessWidget {
  const Practice11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('assets/images/google.png', scale: 20,),
              const Text(
                'GOOGLE',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 40,
                ),
              ),
              const Icon(
                size: 50,
                Icons.favorite,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}