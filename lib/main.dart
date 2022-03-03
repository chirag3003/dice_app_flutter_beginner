import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
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
  int leftDiceNumber = 1;
  var rightDiceNumber = 2;

  void changeDice(){
    setState(() {
      int rand1 = Random().nextInt(6);
      leftDiceNumber = rand1 + 1;
      int rand2 = Random().nextInt(6);
      rightDiceNumber = rand2 + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed:changeDice,

                padding: const EdgeInsets.all(0.0),
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed:changeDice,
                padding: const EdgeInsets.all(0.0),
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
