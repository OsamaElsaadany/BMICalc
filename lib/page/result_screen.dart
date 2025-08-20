import 'package:bmi_calculator/core/colors.dart';
import 'package:bmi_calculator/page/bmi_screen.dart';
import 'package:bmi_calculator/widgets/main_button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});

  final double result;

  String getCategory() {
    if (result < 18.5) {
      return 'Underweight';
    } else if (result < 25) {
      return 'Normal';
    } else if (result < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }


  String cat() {
    if (getCategory() == 'Underweight') {
      return 'You should work hard 💪🏻';
    } else if (getCategory() == 'Normal') {
      return 'Good job ✔';
    } else if (getCategory() == 'Overweight') {
      return 'You should lose some weight';
    } else {
      return 'You need to take care of your health ⚠️';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        foregroundColor: AppColors.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          spacing: 10,

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your Result',
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 40),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: EdgeInsets.all(120),

              child: Column(
                spacing: 10,
                children: [
                  Text(
                    getCategory(),
                    style: TextStyle(
                      color: getCategory() == 'Normal'
                          ? Colors.green
                          : Colors.red,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    result.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'You are ${getCategory()} ${cat()}',
                    style: TextStyle(
                      fontSize: 15,
                      color: getCategory() == 'Normal'
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            MainButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BmiScreen()),
                );
              },
              title: 'Recalculate',
              height: 75,
            ),
          ],
        ),
      ),
    );
  }
}
