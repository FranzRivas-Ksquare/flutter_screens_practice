import 'package:flutter/material.dart';

class Practice10 extends StatelessWidget {
  const Practice10({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlineStyle =
    OutlinedButton.styleFrom(
      padding: const EdgeInsets.fromLTRB(55, 15, 55, 15),
      textStyle: const TextStyle(
        fontSize: 25,
        fontFamily: 'Lato',
      ),
      foregroundColor: Colors.greenAccent,
      side: const BorderSide(width: 2, color: Colors.greenAccent)
    );

    final ButtonStyle elevatedStyle =
    ElevatedButton.styleFrom(
      padding: const EdgeInsets.fromLTRB(44, 15, 44, 15),
      textStyle: const TextStyle(
        fontFamily: 'Lato',
        fontSize: 25,
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/app_screen_background.jpg',
              height: 650,
              fit: BoxFit.cover,
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20,10, 5),
                  child: OutlinedButton(
                    style: outlineStyle,
                    child: const Text('Continue with Google'),
                    onPressed: () {
                      print('Outline button is press');
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: ElevatedButton(
                    style: elevatedStyle,
                    child: const Text('Continue with Facebook'),
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
            )
          ],
        ),
      ),
    );
  }

}