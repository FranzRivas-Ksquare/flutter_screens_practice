import 'package:flutter/material.dart';

class Practice18 extends StatelessWidget {
  const Practice18({super.key});

  @override
  Widget build(BuildContext context) {

    final ButtonStyle googleStyle =
    ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
      textStyle: const TextStyle(
        fontFamily: 'Lato',
        fontSize: 25,
      ),
    );

    final ButtonStyle facebookStyle =
    ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF1877F2),
      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
      textStyle: const TextStyle(
        fontFamily: 'Lato',
        fontSize: 25,
      ),
    );

    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/app_screen_background.jpg',
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 400,
                height: 230,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: ElevatedButton(
                        style: googleStyle,
                        child: Row(
                          children: [
                            Image.asset(
                                'assets/images/google.png',
                                scale: 25
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Continue with Google',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          print('Outline button is press');
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: ElevatedButton(
                        style: facebookStyle,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/social_media/facebook.png',
                              scale: 20
                            ),
                            const SizedBox(width: 10),
                            const Text('Continue with Facebook'),
                          ],
                        ),
                        onPressed: () {
                          print('Outline button is press');
                        },
                      ),
                    ),
                    const Text(
                      'By signing up you are accepting our terms and conditions',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 17,
                      ),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}