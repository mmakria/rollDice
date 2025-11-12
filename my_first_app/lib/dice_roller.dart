import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-${Random().nextInt(6) + 1}.png';
      print(activeDiceImage);
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 22,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(
              top: 8,
              bottom: 8,
              left: 24,
              right: 24,
            ),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            foregroundColor: const Color.fromARGB(221, 255, 255, 255),
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}
