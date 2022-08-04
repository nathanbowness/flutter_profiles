import 'package:flutter/material.dart';

class ProfileBase extends StatelessWidget {
  const ProfileBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text('This will be the base sample profile - with nice things'),
      circleWidget(context),
      squareWidget(context)
    ]);
  }

  Widget circleWidget(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 106, 255, 0),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget squareWidget(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 183, 0, 255),
        shape: BoxShape.rectangle,
      ),
    );
  }
}