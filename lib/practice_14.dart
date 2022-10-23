import 'package:flutter/material.dart';

class Practice14 extends StatelessWidget {
  Practice14({super.key});

  List arr = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemCount: arr.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text('Heed not the rabble'),
          );
        },
      ),
    );

  }
}