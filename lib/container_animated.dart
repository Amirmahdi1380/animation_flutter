import 'package:flutter/material.dart';

class AnimationList extends StatefulWidget {
  const AnimationList({Key? key}) : super(key: key);

  @override
  State<AnimationList> createState() => _AnimationListState();
}

class _AnimationListState extends State<AnimationList> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  height: 20,
                  width: (index == selectedIndex) ? 80 : 50,
                  color: (index == selectedIndex) ? Colors.amber : Colors.black,
                  margin: EdgeInsets.all(10),
                  curve: Curves.bounceOut,
                  duration: Duration(milliseconds: 500),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                );
              }),
        ),
      ),
    );
  }
}
