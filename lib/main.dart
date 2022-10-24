import 'package:flutter/material.dart';
import 'package:screens_practice/practice_20.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screens',
      theme: ThemeData.dark(),
      home: Practice20(),
    );
  }
}