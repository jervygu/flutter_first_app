import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';


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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
