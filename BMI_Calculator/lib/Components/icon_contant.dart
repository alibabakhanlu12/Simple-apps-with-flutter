import 'package:flutter/material.dart';

import 'package:bmi_calculator/contasts.dart';
class IconWidget extends StatelessWidget {

   IconData icon;
   String label;



  IconWidget({required this.icon, required this.label})  ;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:   <Widget>[
          Icon(
            icon,
            size: 80,
          ),
          const SizedBox(height: 15),
          Text(
            label,
            style: labelTextStyle,
          )
        ]);
  }
}