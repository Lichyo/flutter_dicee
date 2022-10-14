// ignore_for_file: deprecated_member_use
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    void diceNumberChange()
    {
      onPressed :()
      {
        setState(() {
          leftDiceNumber = Random().nextInt(6) + 1;
          rightDiceNumber = Random().nextInt(6) +1;
        });
      };
    }
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
              diceNumberChange(),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
