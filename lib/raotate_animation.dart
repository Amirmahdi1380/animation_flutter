import 'package:flutter/material.dart';

class RotateAnimation extends StatefulWidget {
  const RotateAnimation({Key? key}) : super(key: key);

  @override
  State<RotateAnimation> createState() => _RotateAnimationState();
}

class _RotateAnimationState extends State<RotateAnimation> {
  double turn = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedRotation(
          turns: turn,
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 500),
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (turn == 0) {
                  turn = 1;
                } else {
                  turn = 0;
                }
              });
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
