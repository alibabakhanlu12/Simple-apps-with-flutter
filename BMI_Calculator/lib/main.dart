import 'package:flutter/material.dart';
import 'package:bmi_calculator/Screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
         scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),

      home: InputPage(),
    );
  }
}
