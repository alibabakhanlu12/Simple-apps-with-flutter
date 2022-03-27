import 'Dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dice')),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceImg = 2;
  int rightDiceImg = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    change();
                    print('left button is $leftDiceImg');
                  });
                },
                child: Image.asset(('images/dice$leftDiceImg.png')),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: TextButton(
              onPressed: () {
                setState(() {
                  change();
                  print('right button is $rightDiceImg');
                });
              },
              child: Image.asset(('images/dice$rightDiceImg.png')),
            ))
          ],
        ),
      ),
    );
  }

  void change() {
    leftDiceImg = Random().nextInt(6) + 1;
    rightDiceImg = Random().nextInt(6) + 1;
  }
}
