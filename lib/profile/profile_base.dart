import 'package:flutter/material.dart';

class ProfileBase extends StatelessWidget {
  const ProfileBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      circleWidget(context),
      squareWidget(context),
      squareWidget2(context)
    ]);
  }

  Widget circleWidget(BuildContext context) {
    return Container(
        width: 300.0,
        height: 300.0,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 168, 34, 74),
          shape: BoxShape.circle,
        ),
        child: const Align(
          alignment: Alignment.centerLeft,
          child: Text('Sample profiles message'),
        ));
  }

  Widget squareWidget(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 0),
        shape: BoxShape.rectangle,
      ),
    );
  }

  Widget squareWidget2(BuildContext context) {
    return Container(
      width: 200,
      height: 400,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 0),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
