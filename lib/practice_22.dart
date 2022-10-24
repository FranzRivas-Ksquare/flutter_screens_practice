import 'package:flutter/material.dart';
import 'package:screens_practice/practice_16.dart';

class Practice22 extends StatelessWidget {
  const Practice22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const SizedBox(
              width: 410,
              height: 360,
              child: Practice16()
          );
        },
      ),
    );
  }
}