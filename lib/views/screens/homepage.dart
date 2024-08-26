import 'package:bmi_calculator_app/utils/custom_text.dart';
import 'package:bmi_calculator_app/utils/custome_colors.dart';
import 'package:bmi_calculator_app/views/screens/result.dart';
import 'package:bmi_calculator_app/widgets/check_bmi_button.dart';
import 'package:bmi_calculator_app/widgets/person_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? ismale;
  double heightCm = 50;
  int Sum = 0;
  int weight = 0;
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.PrimaryColor,
      appBar: AppBar(
        title: HeadingThree(data: "BMI CALCULATOR"),
        backgroundColor: AppColor.PrimaryColor,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  heightCm = 50;
                  weight = 0;
                  age = 0;
                  ismale = null;
                });
              },
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                personcard(
                  onTap: () {
                    setState(() {
                      ismale = true;
                    });
                  },
                  data: 'MALE',
                  icon: Icons.male,
                  iconColor: (ismale == true)
                      ? const Color(0xffFF0C63)
                      : const Color(0xffB2B9D5),
                ),
                const SizedBox(
                  width: 15,
                ),
                personcard(
                  onTap: () {
                    setState(() {
                      ismale = false;
                    });
                  },
                  data: "FEMALE",
                  icon: Icons.female,
                  iconColor: (ismale == false)
                      ? const Color(0xffFF0C63)
                      : const Color(0xffB2B9D5),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: AppColor.SeconderyColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeadingThree(data: "HEIGHT", textColor: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: heightCm.toInt().toString(),
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          TextSpan(
                            text: " cm",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Slider(
                    inactiveColor: const Color(0xffB2B9D5),
                    activeColor: const Color(0xffA7164A),
                    thumbColor: const Color(0xffFF0C63),
                    min: 50,
                    max: 250,
                    value: heightCm,
                    onChanged: (value) {
                      setState(() {
                        heightCm = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                        color: AppColor.SeconderyColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeadingThree(data: "WEIGHT", textColor: Colors.grey),
                        const SizedBox(
                          height: 10,
                        ),
                        HeadingTwo(data: weight.toString()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor: AppColor.PrimaryColor),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor: AppColor.PrimaryColor),
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  } else {
                                    SnackBar(
                                      content: Text("Wrong Argument"),
                                    );
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                        color: AppColor.SeconderyColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeadingThree(data: "AGE", textColor: Colors.grey),
                        const SizedBox(
                          height: 10,
                        ),
                        HeadingTwo(data: age.toString()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor: AppColor.PrimaryColor),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor: AppColor.PrimaryColor),
                              onPressed: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  } else {
                                    SnackBar(
                                      content: Text(
                                        "Wrong Argument",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    );
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            check_bmi(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowResult(),
                    ));
              },
              data: 'Check Your BMI',
            )
          ],
        ),
      ),
    );
  }
}
