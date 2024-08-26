import 'package:bmi_calculator_app/utils/custome_colors.dart';
import 'package:flutter/material.dart';

class personcard extends StatelessWidget {
  const personcard({
    super.key,
    required this.data,
    required this.icon,
  });
  final String data;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
            color: AppColor.SeconderyColor,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.grey,
              size: 80,
            ),
            Text(
              data,
              style: TextStyle(color: Colors.grey, fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
