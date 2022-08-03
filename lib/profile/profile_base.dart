import 'package:flutter/material.dart';

class ProfileBase extends StatelessWidget {
  const ProfileBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Text('This will be the base sample profile - with nice things'),
      circleWidget(context)
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
}
