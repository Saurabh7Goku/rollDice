// import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      var diceRoll = randomizer.nextInt(6) + 1;
      activDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activDiceImage,
          width: 200,
        ),
        const SizedBox(height: 30), //else use padding in styleForm()
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.deepOrangeAccent,
              textStyle: const TextStyle(fontSize: 22)),
          child: const Text(
            'Roll Dice',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
