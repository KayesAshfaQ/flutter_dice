import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade700,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.blueGrey.shade800,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
