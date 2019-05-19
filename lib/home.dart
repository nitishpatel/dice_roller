import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AssetImage dice = AssetImage("images/dice.png");
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");
  AnimationController _controller;
  AssetImage diceImage;
  @override
  void initState() {
    super.initState();

    setState(() {
      diceImage = dice;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
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
    }
    setState(() {
      diceImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.5),
          // colorBlendMode: BlendMode.modulate,
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: diceImage,
              height: 200.0,
              width: 200.0,
            ),
            Container(
              width: 150.0,
              margin: EdgeInsets.only(top: 100.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150.0)),
                padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                color: Color(0xFFffb142),
                splashColor: Color(0xFF3c40c6),
                onPressed: rollDice,
                child: Text(
                  "Roll it!",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecondHome extends StatefulWidget {
  SecondHome({Key key}) : super(key: key);

  _SecondHomeState createState() => _SecondHomeState();
}

class _SecondHomeState extends State<SecondHome> {
  AssetImage dice = AssetImage("images/dice.png");
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImage;
  AssetImage diceImage1;
  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = dice;
      diceImage1 = dice;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int random1 = (1 + Random().nextInt(6));
    AssetImage newImage;
    AssetImage newImage1;

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
    }
    switch (random1) {
      case 1:
        newImage1 = one;
        break;
      case 2:
        newImage1 = two;
        break;
      case 3:
        newImage1 = three;
        break;
      case 4:
        newImage1 = four;
        break;
      case 5:
        newImage1 = five;
        break;
      case 6:
        newImage1 = six;
        break;
    }
    setState(() {
      diceImage = newImage;
      diceImage1 = newImage1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.5),
          // colorBlendMode: BlendMode.modulate,
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Image(
                image: diceImage,
                width: 150.0,
                height: 150.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Flexible(
              flex: 2,
              child: Image(
                image: diceImage1,
                width: 150.0,
                height: 150.0,
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: 150.0,
                // margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150.0)),
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  color: Color(0xFFffb142),
                  splashColor: Color(0xFF3c40c6),
                  onPressed: rollDice,
                  child: Text(
                    "Roll it!",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
