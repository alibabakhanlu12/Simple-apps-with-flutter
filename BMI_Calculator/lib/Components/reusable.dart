import 'package:flutter/material.dart';


class Reuse extends StatelessWidget {
  Reuse({required this.colour, required this.cartChild });

    Color colour;
    Widget cartChild;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: cartChild,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15),
      ),  );
  }
}
