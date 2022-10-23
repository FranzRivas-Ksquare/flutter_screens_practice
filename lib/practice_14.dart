import 'package:flutter/material.dart';

class Practice14 extends StatelessWidget {
  Practice14({super.key});

  List arr = [
    {
      'site':'Facebook',
      'asset': 'assets/images/social_media/facebook.png',
      'scale': 16.0
    },
    {
      'site':'Instagram',
      'asset': 'assets/images/social_media/insta.png',
      'scale': 12.0
    },
    {
      'site':'Twitter',
      'asset': 'assets/images/social_media/twitter.png',
      'scale': 18.0
    },
    {
      'site':'Youtube',
      'asset': 'assets/images/social_media/youtube.png',
      'scale': 17.0
    },
    {
      'site':'Telegram',
      'asset': 'assets/images/social_media/telegram.png',
      'scale': 9.0
    },
    {
      'site':'Star',
      'asset': 'assets/images/social_media/star.png',
      'scale': 40.0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: arr.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              color: Colors.white10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(arr[index]['asset'], scale: arr[index]['scale'],),
                  const SizedBox(height: 20,),
                  Text(
                    arr[index]['site'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20),),
                ],
              ),
            );
          },
        ),
      ),
    );

  }
}