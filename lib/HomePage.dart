import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/Alea_1.png");
  AssetImage two = AssetImage("images/Alea_2.png");
  AssetImage three = AssetImage("images/Alea_3.png");
  AssetImage four = AssetImage("images/Alea_4.png");
  AssetImage five = AssetImage("images/Alea_5.png");
  AssetImage six = AssetImage("images/Alea_6.png");

  AssetImage diceImage;

  //logic part for rolling dice
  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
    });
  }

  void rollDice() {
    int random = (Random().nextInt(6)) + 1;

    AssetImage newImage;
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
      default:
    }

    setState(() {
      diceImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: diceImage,
                width: 200.0,
                height: 200.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                    color: Colors.yellow,
                    padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                    child: Text(
                      "Roll the dice!",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    onPressed: rollDice,
                    splashColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
