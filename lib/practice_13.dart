import 'package:flutter/material.dart';

class Practice13 extends StatelessWidget {
  const Practice13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white24,
          height: 350,
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/google.png'),
                radius: 50,
              ),
              const SizedBox(height: 15,),
              const Text(
                'Google.com',
                style: TextStyle(fontSize: 25, fontFamily: 'Lato'),),
              const SizedBox(height: 30,),
              const Text(
                'Follow us',
                style: TextStyle(fontSize: 18, fontFamily: 'Lato'),),
              const SizedBox(height: 30,),
              SizedBox(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('assets/images/social_media/facebook.png', scale: 17,),
                    Image.asset('assets/images/social_media/twitter.png', scale: 20,),
                    Image.asset('assets/images/social_media/insta.png', scale: 12,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}