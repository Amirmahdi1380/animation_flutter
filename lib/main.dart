import 'package:animated/opacity_animation.dart';
import 'package:animated/position_animated.dart';
import 'package:animated/raotate_animation.dart';
import 'package:animated/scale_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaleAnimation(),
    );
  }
}
