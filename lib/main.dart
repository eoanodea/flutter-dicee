import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1, rightDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    helloWorld(name) {
      Random random = new Random();
      int randomNumber = (random.nextInt(6) + 1);

      if (name == 'left') {
        setState(() {
          leftDiceNum = randomNumber;
        });
      } else {
        setState(() {
          rightDiceNum = randomNumber;
        });
        print('right! $randomNumber');
      }
    }

    return Center(
      child: Column(
        children: [
          Text(
            'left: $leftDiceNum, right: $rightDiceNum',
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () => helloWorld('left'),
                  child: Image.asset('images/dice$leftDiceNum.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () => helloWorld('right'),
                  child: Image.asset('images/dice$rightDiceNum.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {}
