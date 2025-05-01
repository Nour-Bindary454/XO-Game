import 'package:flutter/material.dart';
import 'package:xogame/homePage.dart';
import 'package:xogame/board.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  homepage (),
      debugShowCheckedModeBanner: false,
    );
  }
}
