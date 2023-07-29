import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            startColor,
            endColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
