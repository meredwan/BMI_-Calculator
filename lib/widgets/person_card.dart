import 'package:bmi_calculator_app/utils/custome_colors.dart';
import 'package:flutter/material.dart';

class personcard extends StatefulWidget {
  personcard({
    super.key,
    required this.data,
    required this.icon,
    this.onTap,
    this.textColor,
    this.iconColor,
  });
  final String data;
  final IconData icon;
  final Color? textColor;
  final Color? iconColor;
  final void Function()? onTap;

  @override
  State<personcard> createState() => _personcardState();
}

class _personcardState extends State<personcard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Expanded(
        flex: 1,
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
                widget.icon,
                color: widget.iconColor ?? Colors.grey,
                size: 80,
              ),
              Text(
                widget.data,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
