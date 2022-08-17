import 'package:flutter/material.dart';

class ProfileNumbersWidget extends StatelessWidget {
  const ProfileNumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        profileNumbersButton(context, "4.8", "Stars"),
        profileNumbersButton(context, "58", "Appointments"),
      ],
    );
  }

  Widget profileNumbersButton(BuildContext context, String value, String text) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            value,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(text, style: TextStyle(fontSize: 16))
        ],
      ),
    );
  }
}
