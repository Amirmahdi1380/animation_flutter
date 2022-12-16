import 'package:flutter/material.dart';

class SwitchContainer extends StatefulWidget {
  const SwitchContainer({Key? key}) : super(key: key);

  @override
  State<SwitchContainer> createState() => _SwitchContainerState();
}

class _SwitchContainerState extends State<SwitchContainer> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            isSwitch = !isSwitch;
          });
        },
        child: Center(
          child: AnimatedSwitcher(
            switchInCurve: Curves.decelerate,
            switchOutCurve: Curves.easeInOutQuart,
            duration: Duration(seconds: 1),
            child: (isSwitch == true)
                ? Container(
                    key: const Key('1'),
                    height: 220,
                    width: 100,
                    color: Colors.red,
                  )
                : Container(
                    key: const Key('2'),
                    height: 100,
                    width: 200,
                    color: Colors.blue,
                  ),
          ),
        ),
      ),
    );
  }
}
