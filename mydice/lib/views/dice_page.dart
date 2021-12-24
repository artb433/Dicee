import 'package:flutter/material.dart';
import 'dart:math';
import 'computer.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Art B Technologies'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (buildContext) => Computer()));
              },
              icon: const Icon(Icons.computer))
        ],
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Row(
          children: [
            Expanded(
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                      print('dicenmber = $leftDiceNumber');
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
            Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rightDiceNumber = Random().nextInt(6) + 1;
                        print('diceNumber = $rightDiceNumber.png');
                      });
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'))),
          ],
        ),
      ),
    );
  }
}
