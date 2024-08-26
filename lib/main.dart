import 'package:bmi_calculator_app/views/screens/homepage.dart';
import 'package:bmi_calculator_app/views/screens/slpash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(),
        title: 'BMI Calculator',
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
