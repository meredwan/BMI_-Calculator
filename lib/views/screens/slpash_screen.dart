import 'package:bmi_calculator_app/utils/custom_text.dart';
import 'package:bmi_calculator_app/utils/custome_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.PrimaryColor,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Center(child: Image.asset("assets/images/splash_logo.png", width: 150,)),
          const SizedBox(height: 20,),
          HeadingOne(data: "BMI Calculator", textColor: Colors.white, fontWeight: FontWeight.bold),
          const SizedBox(height: 300,),
          CircularProgressIndicator(
            color: Color(0xffFF0C63),
          ),
          const SizedBox(height: 5,),
          HeadingThree(data: "Check You BMI",)

        ],
      ),
    );
  }
}
