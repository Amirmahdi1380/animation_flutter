import 'package:flutter/material.dart';

class PositionAnimated extends StatefulWidget {
  const PositionAnimated({Key? key}) : super(key: key);

  @override
  State<PositionAnimated> createState() => _PositionAnimatedState();
}

class _PositionAnimatedState extends State<PositionAnimated> {
  double top = 0;
  double left = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.bounceIn,
            top: top,
            left: left,
            duration: const Duration(milliseconds: 900),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  top += 50;
                  left += 30;
                });
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
