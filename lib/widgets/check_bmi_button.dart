import 'package:bmi_calculator_app/utils/custom_text.dart';
import 'package:bmi_calculator_app/utils/custome_colors.dart';
import 'package:flutter/material.dart';

class check_bmi extends StatelessWidget {
  check_bmi({
    super.key,
    this.onTap,
    required this.data,
  });
  final void Function()? onTap;
  final String data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColor.ContentColor,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: HeadingThree(data: data, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
