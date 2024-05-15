import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // initialization work
  const GradientContainer({super.key, required this.colors});

  // alternative constructor function sample
  // const GradientContainer.puple({super.key})
  //     : colors.first = Colors.deepPurple,
  //       colors.last = Colors.black;

  final List<Color> colors;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text('Roll dice'),
            // ),
            // OutlinedButton(
            //   onPressed: () {},
            //   child: const Text('Roll dice'),
            // )
            TextButton(
              onPressed: rollDice,
              child: const Text('Roll dice'),
            ),
          ],
        ),
      ),
    );
  }
}
