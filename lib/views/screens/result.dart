import 'package:bmi_calculator_app/utils/custom_text.dart';
import 'package:bmi_calculator_app/utils/custome_colors.dart';
import 'package:bmi_calculator_app/widgets/check_bmi_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowResult extends StatelessWidget {
  const ShowResult({super.key});

  @override
  final double showResult = 0.0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.PrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.PrimaryColor,
        title: HeadingTwo(data: "YOUR BMI RESULT"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: AppColor.SeconderyColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Column(
                      children: [
                        HeadingThree(
                            data: "Healthy Weight", textColor: Colors.green),
                        const SizedBox(
                          height: 10,
                        ),
                        HeadingTwo(data: showResult.toString()),
                        const SizedBox(
                          height: 20,
                        ),
                        HeadingThree(
                            data: "You have a healthy body weight good job.")
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            check_bmi(
              data: 'Re-Check BMI',
            )
          ],
        ),
      ),
    );
  }
}
