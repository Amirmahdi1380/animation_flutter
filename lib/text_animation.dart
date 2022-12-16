import 'package:flutter/material.dart';

class TextAnimation extends StatefulWidget {
  const TextAnimation({Key? key}) : super(key: key);

  @override
  State<TextAnimation> createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: Duration(seconds: 1),
          curve: Curves.decelerate,
          style: TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          child: Text('amirmahdi'),
        ),
      ),
    );
  }
}
