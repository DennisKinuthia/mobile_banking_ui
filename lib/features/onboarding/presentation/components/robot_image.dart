import 'package:flutter/material.dart';

class RobotImage extends StatelessWidget {
  const RobotImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Transform(
        transform: Matrix4.identity()
          ..scale(1.475)
          ..translate(-125.0, -175.0, 0),
        child: const Image(image: AssetImage('assets/images/robot.png')),
      ),
    );
  }
}
