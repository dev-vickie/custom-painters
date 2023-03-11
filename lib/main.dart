import 'package:flutter/material.dart';
import 'curve_painter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Painter',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: CurvePainter(),
    );
  }
}
