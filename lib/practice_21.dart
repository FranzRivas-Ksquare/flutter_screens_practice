import 'package:flutter/material.dart';

class Practice21 extends StatelessWidget {
  const Practice21({super.key});

  @override
  Widget build(BuildContext context) {
    List arr = [1, 2, 3, 4, 5];
    return Scaffold(
      body: ListView.builder(
        itemCount: arr.length,
          itemBuilder: ((context, index) {
            return Container(
              color: Colors.black,
              height: 10,
              width: 10,
            );
          })
      ),
    );
  }
}