// import 'package:first_app/styledText.dart';
import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.bottomLeft;
const endAlignement = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignement),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
