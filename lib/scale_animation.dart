import 'package:flutter/material.dart';

class ScaleAnimation extends StatefulWidget {
  const ScaleAnimation({Key? key}) : super(key: key);

  @override
  State<ScaleAnimation> createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation> {
  double scale = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedScale(
        scale: scale,
        duration: Duration(milliseconds: 400),
        child: InkWell(
          onTap: () {
            setState(() {
              if (scale < 5) {
                scale += 1;
              } else {
                scale = 1;
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
      )),
    );
  }
}
