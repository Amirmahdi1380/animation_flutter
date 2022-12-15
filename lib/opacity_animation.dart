import 'package:flutter/material.dart';

class OpacityAnimation extends StatefulWidget {
  const OpacityAnimation({Key? key}) : super(key: key);

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {
  double isChange = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              onEnd: () {
                print('onEnd');
              },
              duration: Duration(seconds: 1),
              opacity: isChange,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // print('object');
                setState(() {
                  if (isChange == 1) {
                    isChange = 0;
                  } else {
                    isChange = 1;
                  }
                });
              },
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
