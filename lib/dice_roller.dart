import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        // ElevatedButton(
        //   onPressed: rollDice,
        //   style: TextButton.styleFrom(
        //     padding: const EdgeInsets.only(top: 25),
        //     foregroundColor: const Color.fromARGB(255, 5, 26, 130),
        //     textStyle: const TextStyle(fontSize: 30),
        //   ),
        ElevatedButton(
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
