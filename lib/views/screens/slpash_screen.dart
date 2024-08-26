import 'dart:async';

import 'package:bmi_calculator_app/utils/custom_text.dart';
import 'package:bmi_calculator_app/utils/custome_colors.dart';
import 'package:bmi_calculator_app/views/screens/homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.PrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            "assets/images/splash_logo.png",
            width: 120,
          )),
          const SizedBox(
            height: 10,
          ),
          HeadingOne(
              data: "BMI Calculator",
              textColor: Colors.white,
              fontWeight: FontWeight.bold),
          const SizedBox(
            height: 300,
          ),
          CircularProgressIndicator(
            color: Color(0xffFF0C63),
          ),
          const SizedBox(
            height: 10,
          ),
          HeadingThree(
            data: "Check You BMI",
          )
        ],
      ),
    );
  }
}
