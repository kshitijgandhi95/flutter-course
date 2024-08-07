import 'package:first_app/style_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';


const IMAGE_PREFIX = "assets/images/dice-images/dice-";
const IMAGE_SUFFIX = ".png";
const IMAGE_COUNT = 6;
var current_image = '${IMAGE_PREFIX}6$IMAGE_SUFFIX';
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  String getImageName (int num) {
    return '$IMAGE_PREFIX$num$IMAGE_SUFFIX';
  }

  String getRandomDice () {
    return getImageName(Random().nextInt(IMAGE_COUNT)+1);
  }

  String getDefaultImage () {
    return '${IMAGE_PREFIX}6$IMAGE_SUFFIX';
  }

  void rollDice () {
    setState(() {
      current_image = getRandomDice();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(current_image
        , width: 200),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          onPressed: rollDice,
          child: const StyleText(),
        )
      ],
    );
  }
}
