import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'lib/assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      activeDiceImage = 'lib/assets/images/dice-4.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 36,
        ),
        SizedBox(
          width: 120,
          height: 40,
          child: ElevatedButton(
            onPressed: rollDice,
            child: const Text('Roll Dice',
                style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ),
        ),
      ],
    );
  }
}
