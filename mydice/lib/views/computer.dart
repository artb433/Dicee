import 'package:flutter/material.dart';
import 'dart:math';

import 'dice_page.dart';

class Computer extends StatefulWidget {
  @override
  State<Computer> createState() => _ComputerState();
}

class _ComputerState extends State<Computer> {
  int leftDiceNumber = 1;

  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (buildContext) => DicePage()));
              },
              child: Icon(Icons.person))
        ],
        title: Text('Playing with TwoPlayer,Art.b'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              // ignore: deprecated_member_use
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 140, 40, 10),
                // ignore: deprecated_member_use
                child: FlatButton(
                    onPressed: () {
                      diceChange();
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png')),
              ),
            ),
            Expanded(
                // ignore: deprecated_member_use
                child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 90, 40, 60),
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () {
                    diceChange();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            )),
          ],
        ),
      ),
    );
  }

  void diceChange() {
    return setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      print('dicenmber = $leftDiceNumber');
      rightDiceNumber = Random().nextInt(6) + 1;
      print('diceNumber = $rightDiceNumber.png');
    });
  }
}
