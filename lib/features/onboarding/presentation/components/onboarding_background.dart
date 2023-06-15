import 'package:flutter/material.dart';

class OnboardBackground extends StatelessWidget {
  const OnboardBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF8c2734),
            Color(0xFFab6d3b),
          ],
        ),
      ),
    );
  }
}
